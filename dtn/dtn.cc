/*
Copyright (c) 2005 Henrik Eriksson and Patrik Jönsson.
All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 SUCH DAMAGE.

*/

/** \file dtn.cc  DTN Agent. 
*/

#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include <string.h>
#include <sys/types.h>
#include <time.h>
#include <errno.h>

#include "tcl.h"
#include "tclcl.h"
#include "ip.h"
#include "common/node.h"
#include "common/simulator.h"

#include "dtn.h"
#include "headers.h"
#include "debug.h"

int hdr_bdlprim::offset_;

/** Debug logfile. */
FILE* logfile = NULL;
/** Bundle trace file. */
FILE* tracefile = NULL;
/** Queue size file. */
FILE* queuelog = NULL;
/** Logdir.\ This is where packetdumps are stored. */
char* logdir  = NULL;

/** TCL Linkage class. */
static class DTNBundleHeaderClass : public PacketHeaderClass {
public:
  DTNBundleHeaderClass() : PacketHeaderClass("PacketHeader/DTNBundle", 
					     sizeof(hdr_bdlprim)) {
    bind_offset(&hdr_bdlprim::offset_);
  }
} class_bundlehdr;


/** Another TCL Linkage class. */
static class DTNAgentClass : public TclClass {
public:
  DTNAgentClass() : TclClass("Agent/DTNAgent") {}
  TclObject* create(int, const char*const*) {
    return (new DTNAgent());
  }
} class_dtnagent;

/** Checks that the specified directory path exists and creates directories if needed.
 *
 * \param dir  Directory path to be checked.
 *
 * \returns Status code indicating outcome.
 * \retval 0 on success.
 * \retval -1 on  error.
 */
int checkDir(const char* dir)
{  
  struct stat sbuf;
  char* next=NULL;
  const char* last=dir;
  char cur[strlen(dir)+1];
  int len=0;


  if(! dir){
    printf("FAILURE! checkDir called with NULL\n");
    return -1;
  }

  while(len<strlen(dir)){
    next = strchr(last, '/');
    if(!next) len=strlen(dir);
    else      len=next-dir;
    last=next+1;
    strncpy(cur,dir,len);
    cur[len]='\0';
    if(stat(cur,&sbuf)){
      if(errno == ENOENT){
	if(mkdir(cur,0755)){
	  printf("FAILURE! Unable to create directory '%s'.\n",cur);
	  perror("ERR:");
	  return -1;
	} 
      }else{
	printf("FAILURE! Error occured when stat:ing '%s'.\n",cur);
	perror("ERR:");
	return -1;
      }
    }else if(!S_ISDIR(sbuf.st_mode)){
      printf("FAILURE! '%s' exists but is not a directory.\n",cur);
      return -1;
    }
  }

  return 0;
}

/** DTN Agent constructor.
 */
DTNAgent :: DTNAgent() : Agent(PT_DTNBUNDLE), src_(NULL),  dest_(NULL), rpt_to_(NULL), cos_(NULL), options_(NULL), lifespan_(NULL)
{
  bind("custodian_", &custodian_);
  bind("retransmit_",&retransmit_);

#ifdef CREATE_LOGDIR
  if(!logdir){
    time_t now;
    struct tm* now_tm;
    time(&now);
    now_tm=localtime(&now);
    char* logdir_d = new char[1024];
    logdir = new char[1024];
    if(! logdir || ! logdir_d){
      DPRINT(DEB_ERR, "Could not allocate memory for logdir(%08x) or logdir_d(%08x)",logdir,logdir_d);
      abort();
    }

    snprintf(logdir_d,1023,"%04d%02d%02d-%02d%02d%02d",now_tm->tm_year+1900,now_tm->tm_mon+1,now_tm->tm_mday,now_tm->tm_hour,now_tm->tm_min,now_tm->tm_sec);
    snprintf(logdir,1023,"%s/%s",LOGBASEDIR,logdir_d);
    checkDir(logdir);
    unlink(LOGBASEDIR "/current");
    symlink(logdir_d, LOGBASEDIR "/current");
    delete logdir_d;
  }
#ifdef DEBUGLOG
  if(!logfile){
    char* file = new char[1024];
    if(! file) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
    snprintf(file,1023,"%s/%s",logdir,LOGFILE);
    
    logfile=fopen(file,"w");
    DPRINT(0,"Logfile '%s' opened.",file);
    delete file;
  }
#endif //DEBUGLOG
#ifdef BDLTRACE
  if(!tracefile){
    char* tfile = new char[1024];
    if(! tfile) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
    snprintf(tfile,1023,"%s/%s",logdir,TRACEFILE);
    
    tracefile=fopen(tfile,"w");
    fprintf(tracefile, "TIME NODE EVENT SRC TIMESTAMP PRIO CFLAGS DEST RPT_TO TOKEN OFFSET FRAGLEN TOTLEN FNODE\n");
    delete tfile;
  }
#endif //BDLTRACE
#ifdef QUEUELOG
  if(!queuelog){
    char* qfile = new char[1024];
    if(! qfile) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
    snprintf(qfile,1023,"%s/%s",logdir,QUEUELOGFILE);
    
    queuelog=fopen(qfile,"w");
    fprintf(queuelog, "TIME NODE");
    for(int qnum=0; qnum < NUM_QUEUES; qnum++){
	fprintf(queuelog, " QUEUE[%d]", qnum);
    }
    fprintf(queuelog, " QUEUE[ALL] SENT LOCAL FRAGS\n");
    delete qfile;
  }
#endif //QUEUELOG
#endif //CREATE_LOGDIR

  DPRINT(DEB_INFO,"Agent CREATED.");
  
  if(! (routes_ = new Routes(&here_))){
    DPRINT(DEB_ERR, "Could not allocate memory for routes.");
    abort();
  }
  if(! (reg_    = new Registration())){
    DPRINT(DEB_ERR, "Could not allocate memory for registration handler.");
    abort();
  }
  if(! (bm_     = new BundleManager(routes_,reg_,this))){
    DPRINT(DEB_ERR, "Could not allocate memory for bundlemanager.");
    abort();
  }  
}

/** Helper function to allocate packets from BundleManager.
 *
 * \param  size Size of packet to be allocated.
 *
 * \returns Allocated packet.
 */
Packet* DTNAgent :: newpacket(int size)
{
  return allocpkt(size);
}

/**  Helper function to send packets from BundleManager.
 *
 * \param pkt The packet to be sent.
 */
void DTNAgent :: sendPacket(Packet* pkt)
{
  send(pkt, (Handler*) 0);
}

/** Application linkage. Sends a chunk of data.
 *
 * \param nbytes How many bytes to send.
 * \param flags  Options for the transmission.
*/
void DTNAgent :: sendmsg(int nbytes, const char* flags)
{
  char datasize[32];
  sprintf(datasize,"%d",nbytes);
  
  DPRINT(DEB_DEBUG, "Sending %d bytes with flags '%s'.",nbytes,flags?flags:"no flags");

  if(nbytes<1){
    DPRINT(DEB_INFO,"Number of bytes to send is less than 1 (%d).",nbytes);
    return;
  }
  
  if(!src_ || !dest_ || !rpt_to_ || !cos_ || !options_ || !lifespan_){
    DPRINT(DEB_WARN, "sendmsg called when not correctly setup. Ignoring.");
    return;
  }
  bm_->newBundle(src_,dest_,rpt_to_,cos_,options_,lifespan_,NULL,NULL,datasize);
}


/** Regtoken format. */
#define REGTOKEN_IND_FMT "%s indRegToken %s %d"

/** TCL Linkage function to execute commands.
 * Called when $agent ...  is used.
 *
 * \param argc  Argument count.
 * \param argv  The list of arguments.
 * 
 * \returns Statuscode indicating to TCL layer whether the command was successfully executed.
 * \retval  TCL_OK on success.
 *
 */
int DTNAgent :: command(int argc, const char*const* argv)
{
  Tcl&        tcl    = Tcl::instance();
  Simulator&  sim    = Simulator::instance();
  const char* tclres = tcl.result();

  if(argc>1){
    /* Setup calls. */

    // 1   2     3       4              5
    // add route nexthop custodian(0/1) metric mtu
    if(strncmp(argv[1],"add", 4)==0 && argc==7){ 
      Node* ta = (Node*) TclObject::lookup(argv[3]);
      Node* me = Node::get_node_by_address(addr());
      
      tcl.evalf("%s link %s %s", sim.name(), me->name(), ta->name());
      if(ta && strlen(tclres)>0) {
	if(! routes_->add(ta->address(),argv[2],atoi(argv[4]),atoi(argv[5]),atoi(argv[6]),tclres)) return(TCL_OK);
      }
      DPRINT(DEB_ERR, "RES:'%s' '%s link %s %s' %s",tclres, sim.name(), me->name(), ta->name(),argv[3]);
    }
    // region <region>
    if(strncmp(argv[1],"region",7)==0 && argc==3){
      routes_->setLocal(argv[2]);
      return(TCL_OK);
    }
    
    /* Calls defined in the drafts. */

    // send <src id> <dest id> <reply id> <COS> <OPTIONS> <life span> <sendtoken binding> <DATA> <DATASIZE>
    if(strncmp(argv[1],"send",5)==0 && argc==11){ 
      if(! bm_->newBundle(argv[2],argv[3],argv[4],argv[5],argv[6],argv[7],argv[8],argv[9],argv[10])) return(TCL_OK);
    }
    
    // cancel <send token>
    if(strncmp(argv[1],"cancel",7)==0 && argc==3){
      if(! bm_->deleteBundle(argv[2])) return(TCL_OK);
    }
    
    // register <delivery failure action> <registration token binding> <dest id>
    if(strncmp(argv[1],"register",9)==0 && argc==5){
      int regtoken = reg_->addReg(argv[2], argv[4]);
      if(regtoken != -1){
	int len = strlen(REGTOKEN_IND_FMT) + strlen(name()) + strlen(argv[3]) + 11 + 1;
	char* out = new char[len];
	if(! out){DPRINT(DEB_ERR, "Could not allocate memory for out.");abort();}
	snprintf(out, len, REGTOKEN_IND_FMT, name(), argv[3], regtoken);
	tcl.eval(out);

	return(TCL_OK);
      }
    }
    
    // start_delivery <reg token>
    if(strcmp(argv[1],"start_delivery")==0 && argc==3){
      if(! reg_->start(argv[2])){
	bm_->processLocalQueue(reg_->lookup_id(argv[2]));
	return TCL_OK;
      }
    }
    
    // stop_delivery <reg token>
    if(strcmp(argv[1],"stop_delivery")==0 && argc==3){
      if(! reg_->stop(argv[2])) return TCL_OK;
    }    

    // change_registration <reg token> <delivery failure action>
    if(strcmp(argv[1],"change_registration")==0 && argc==4){
      if(! reg_->change(argv[2],argv[3])) return TCL_OK;
    }    

    // deregister <reg token>
    if(strncmp(argv[1],"deregister",11)==0 && argc==3){
      if(! reg_->deReg(argv[2])) return(TCL_OK);
    }
    
    // poll <dest id>
    if(strncmp(argv[1],"poll",5)==0 && argc==3){
      bm_->processLocalQueue(argv[2],1);
      return(TCL_OK);
    }

    // app <var> <value>
    RegEntry* treg=NULL;
    if(strcmp(argv[1],"app")==0 && argc==4){
      if(strcmp(argv[2],"src")==0){
	if(src_){
	  treg=reg_->lookup(src_);
	  if(treg) treg->failAct_=FAIL_ABORT;
	  treg=NULL;
	  delete src_;
	  src_=NULL;
	}
	src_=new char[strlen(argv[3])+1];
	if(! src_) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
	strcpy(src_,argv[3]);
	reg_->addReg("DEFER", argv[3]);
      } else  if(strcmp(argv[2],"dest")==0){
	dest_=new char[strlen(argv[3])+1];
	if(! dest_) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
	strcpy(dest_,argv[3]);
      } else  if(strcmp(argv[2],"rpt_to")==0){
	if(rpt_to_){
	  treg=reg_->lookup(rpt_to_);
	  if(treg) treg->failAct_=FAIL_ABORT;
	  treg=NULL;
	  delete rpt_to_;
	  rpt_to_=NULL;
	}
	rpt_to_=new char[strlen(argv[3])+1];
	if(! rpt_to_) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
	strcpy(rpt_to_,argv[3]);
	reg_->addReg("SINK", argv[3]);
      } else  if(strcmp(argv[2],"cos")==0){
	cos_=new char[strlen(argv[3])+1];
	if(! cos_) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
	strcpy(cos_,argv[3]);
      } else  if(strcmp(argv[2],"options")==0){
	options_=new char[strlen(argv[3])+1];
	if(! options_) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
	strcpy(options_,argv[3]);
      } else  if(strcmp(argv[2],"lifespan")==0){
	lifespan_=new char[strlen(argv[3])+1];
	if(! lifespan_) { DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
	strcpy(lifespan_,argv[3]);
      } else {
	DPRINT(DEB_INFO, "Setting of variable '%s' failed.",argv[2]);
      }

      return(TCL_OK);      
    }
  }
  
  return (Agent::command(argc, argv));
}


/** Dumps packets to file for debugging.
 *
 * \param iph    IP header.
 * \param isize  Size of IP header.
 * \param head   Packet header.
 * \param hsize  Size of Packet header.
 * \param data   Packet data.
 * \param dsize  Size of Packet data.
 */
void dumppacket(const char* iph, int isize, const char* head, int hsize, const char* data, int dsize){
#ifdef PKTLOG
  static int pkgno=0;
  char* filename = new char[1024];
  if(! filename){
    DPRINT(DEB_ERR,"Could not allocate memory for filename.");
    abort();
  }
  
  if(! sprintf(filename,"%s/pkt.%08d",logdir, pkgno++)){
    DPRINT(DEB_WARN, "Could not create filename.");
    delete filename;
    return;
  }
  int file=open(filename,O_WRONLY|O_CREAT|O_TRUNC,0644);
  if(file == -1){
    DPRINT(DEB_WARN, "Could not open '%s' for writing.",filename);
    delete filename;
    return;
  }
  if(!(write(file, iph,  isize)==isize &&
       write(file, head, hsize)==hsize &&
       write(file, data, dsize)==dsize)) {
    DPRINT(DEB_WARN, "Error writing to file");
  }
  close(file);
  delete filename;
#endif
}

/** TCL linkage function to receive packets.
 *
 * \param pkt The received Packet.
 */
void DTNAgent :: recv(Packet* pkt, Handler*)
{
  hdr_ip* hdrip = hdr_ip::access(pkt);
  hdr_bdlprim* hdr = hdr_bdlprim::access(pkt);

  DPRINT(DEB_INFO, "Received packet from node %d to node %d", hdrip->saddr(), here_.addr_);
 
  PacketData* data = (PacketData*) pkt->userdata();
  if(! data){
    DPRINT(DEB_ERR, "No userdata in packet.");
    abort();
  }
  dumppacket((char*) hdrip, sizeof(hdr_ip), (char*) hdr, sizeof(hdr_bdlprim), (char*) data->data(), data->size());
  
  if(! bm_->newBundle(pkt)){
    DPRINT(DEB_WARN, "Bad packet received. Ignored by BundleManager.");
  }
  Packet::free(pkt);
}
