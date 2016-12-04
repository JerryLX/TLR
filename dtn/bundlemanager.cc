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

/** \file bundlemanager.cc  Bundle management. 
*/

#include "common/scheduler.h"
#include "common/node.h"

#include "bundlemanager.h"
#include "bmflags.h"
#include "dtn.h"
#include "headers.h"
#include "debug.h"
#include "timers.h"
#include "bundle.h"
#include "strrecords.h"

/** Time between send retries. */
#define SENDPOLLINTERVAL    0.001
#define RESENDPOLLINTERVAL  (da_->retransmit()/5.0)

/** Gets current time.
 *
 * \returns Current time in 64-bit fixed-point format.
*/
inline u_int64_t getTimestamp() 
{
  return (u_int64_t)((Scheduler::instance().clock())*0x100000000LL);
}

/** Allocates a free variablename.
 *
 * \param value The value to be set.
 * \param name  Name of the tcl object that is to get this variable.
 *
 * \returns The allocated variablename.
 *
 * \note The returned string must be deleted.
 * 
 */
char* allocRetVar(const char* value, const char* name)
{
  static unsigned int next=0;
  char* tempname=new char[11]; // RVxxxxxxxx
  if(!tempname){
    DPRINT(DEB_ERR, "Cannot allocate memory for tempname.");
    abort();
  }
  snprintf(tempname, 11, "RV%08x", next++);
  tempname[10]='\0';

  char* out = new char[strlen(name) + strlen(tempname) + strlen(value) + strlen("x set x \"x\"")];
  if(! out){
    DPRINT(DEB_ERR, "Cannot allocate memory for out.");
    abort();
  }
  sprintf(out, "%s set %s \"%s\"",name , tempname,value);
  Tcl& tcl = Tcl::instance();
  tcl.eval(out);
  return tempname;  
}


/** Bundle Manager.
 *
 * \param routes  Routing list for current node.
 * \param reg     Registration handler.
 * \param da      DTNAgent for current node. 
*/
BundleManager :: BundleManager(Routes* routes, Registration* reg, DTNAgent* da) : lastTimestamp_(0),
										  sent_(NULL),
										  local_(NULL),
										  frags_(NULL),
										  agentEndpoint_(NULL),
										  bids_(NULL)
{
  for(int i = 0; i< NUM_QUEUES;i++) queue_[i]=NULL;
  routes_ = routes;
  reg_ = reg;
  da_ = da;
  qt_ = new QueueTimer (this);
  rt_ = new ResendTimer(this);
  if(! da_ || ! qt_ || ! rt_){
    DPRINT(DEB_ERR,"No dtnagent(%08x) given or could not allocate qt(%08x) or rt(%08x).",da_,qt_,rt_);
    abort();
  }
}

/**  Send token indication callback format. */
#define SENDTOKEN_IND_FMT "%s indSendToken %s %d"

/** Log current queue sizes.
*/
void BundleManager :: qprint()
{
  int size = 0;
  int tsize = 0;
  if(queuelog){
    fprintf(queuelog, "%f %d",
	    Scheduler::instance().clock(),
	    da_->addr());
    for(int qnum=0; qnum < NUM_QUEUES+3; qnum++){
      if(qnum<NUM_QUEUES){
	size = getQueueSize(queue_[qnum]);
	tsize += size;
	fprintf(queuelog, " %d",
		size);
      }
      else if(qnum==NUM_QUEUES){
	fprintf(queuelog, " %d",
		tsize);
	fprintf(queuelog, " %d",
		getQueueSize(sent_));	
      }
      else if(qnum==NUM_QUEUES+1){
	fprintf(queuelog, " %d",
		getQueueSize(local_));
      }
      else if(qnum==NUM_QUEUES+2){
	fprintf(queuelog, " %d",
		getQueueSize(frags_));
      }
    }
    fprintf(queuelog, "\n");
  }
}

/** Log trace data for a bundle.
 *  A classless function for logging.
 *
 * \param bundle A bundle to retreive information from.
 * \param da The nodes DTNAgent.
 * \param event Which event occured.
 * \param fnode The node the bundle came from, if relevant.
 */
void tprint(Bundle* bundle, DTNAgent* da, char* event, int fnode=-1)
{
  char* src = bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->src);
  char* dest = bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->dest);
  char* rpt_to = bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->rpt_to);
  int len = 0;
  int offset = 0;
  int fraglen = 0;
  
  hdr_bdldict* cur = bundle->bdl_dict_;
  hdr_bdlfrag* frag = NULL;
  hdr_bdlpyld* pyld = NULL;

  while(cur){
    if     (cur->next_hdr == BDL_FRAG)  frag = (hdr_bdlfrag*)((hdr_bdldict*)cur)->next_hdr_p;
    else if(cur->next_hdr == BDL_PYLD){ pyld = (hdr_bdlpyld*)((hdr_bdldict*)cur)->next_hdr_p; break;}
    cur = ((hdr_bdldict*)cur->next_hdr_p);
  }
  if(pyld && frag){
    offset = frag->offset;
    fraglen = pyld->len;
    len = frag->tot_len;
  }else if(pyld) len = pyld->len;
  
  if(fnode == -1){
    if(tracefile) fprintf(tracefile, "%f %d %s %s %016llx %d %02x %s %s %d %d %d %d\n",
			  Scheduler::instance().clock(),
			  da->addr(),
			  event,
			  src,
			  bundle->bdl_prim_->timestamp,
			  ((bundle->bdl_prim_->cos)&BDL_COS_PRIMASK)/BDL_COS_PRISHIFT,
			  (bundle->bdl_prim_->cos)&~BDL_COS_PRIMASK,
			  dest,
			  rpt_to,
			  bundle->token_,
			  offset,
			  fraglen,
			  len);
  }else{
    if(tracefile) fprintf(tracefile, "%f %d %s %s %016llx %d %02x %s %s %d %d %d %d %d\n",
			  Scheduler::instance().clock(),
			  da->addr(),
			  event,
			  src,
			  bundle->bdl_prim_->timestamp,
			  ((bundle->bdl_prim_->cos)&BDL_COS_PRIMASK)/BDL_COS_PRISHIFT,
			  (bundle->bdl_prim_->cos)&~BDL_COS_PRIMASK,
			  dest,
			  rpt_to,
			  bundle->token_,
			  offset,
			  fraglen,
			  len,
			  fnode);
  }
  
  delete src;
  delete dest;
  delete rpt_to;
}

/** Creates a new Bundle.
 *
 * \param src       Source endpoint id.
 * \param dest      Destination endpoint id.
 * \param rpt_to    Report to endpoint id.
 * \param cos       Requested priority.
 * \param options   Delivery options.
 * \param lifespan  Lifespan of the bundle in seconds.
 * \param binding   Send token binding.
 * \param data      Payload.
 * \param datasize  Minimum payload size.
 *
 * \returns Status code indicating outcome.
 * \retval  0 on success.
 * \retval -1 on failure.
*/
int BundleManager :: newBundle(const char* src, 
			       const char* dest, 
			       const char* rpt_to, 
			       const char* cos, 
			       const char* options, 
			       const char* lifespan, 
			       const char* binding, 
			       const char* data, 
			       const char* datasize)
{
  Tcl& tcl = Tcl::instance();
  
  hdr_bdlprim* bdl_prim = new hdr_bdlprim;
  hdr_bdldict* bdl_dict = new hdr_bdldict;
  hdr_bdlpyld* bdl_pyld = new hdr_bdlpyld;

  DTNStrRecords* records = new DTNStrRecords();
  Bundle* temp = new Bundle();
  if(!bdl_prim || !bdl_dict || !bdl_pyld || !records || !temp){DPRINT(DEB_ERR, "Could not allocate memory."); abort();}
  
  temp->fid_ = BDL_FID_NORM;

  bdl_prim->version = BDL_VERSION;
  bdl_prim->next_hdr = BDL_DICT;
  bdl_prim->cos = BDL_COS_PRIMASK;
  bdl_prim->pld_sec = 0x00;
  parseOptions(cos,options,bdl_prim);

  int tmpval = 0;
  if((tmpval = records->addRecord(dest)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
  bdl_prim->dest = tmpval;
  if((tmpval = records->addRecord(src)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
  bdl_prim->src = tmpval;
  if((tmpval = records->addRecord(rpt_to)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
  bdl_prim->rpt_to = tmpval;
  if(bdl_prim->cos & BDL_COS_CUST){
    if((tmpval = records->addRecord(agentEndpoint())) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
    bdl_prim->cust = tmpval;
    temp->fid_ = BDL_FID_CUST;
  }
  else bdl_prim->cust = 0x00;
  bdl_prim->timestamp = getTimestamp();
  if(bdl_prim->timestamp <= lastTimestamp_){
    bdl_prim->timestamp = ++lastTimestamp_;
  } else {
    lastTimestamp_ = bdl_prim->timestamp;
  }

  bdl_prim->exp_time = atoi(lifespan);
  
  bdl_dict->next_hdr = BDL_PYLD;
  bdl_dict->next_hdr_p = bdl_pyld;
  bdl_dict->strcount = records->strcount();
  bdl_dict->record = records;

  bdl_pyld->pldclass = BDL_PCLASS_NORMAL;
  bdl_pyld->len = atoi(datasize);

  temp->prevhop_  = da_->addr();
  temp->recvtime_ = Scheduler::instance().clock();
  temp->bdl_prim_ = bdl_prim;
  temp->bdl_dict_ = bdl_dict;

  const char* rdata=NULL;
  if(data){
    rdata = tcl.var(data);
    if(! rdata) {
      DPRINT(DEB_WARN, "Could not read '%s' as a variable.",data);
      delete temp;
      return -1;
    }
  }
  
  if(data && bdl_pyld->len < strlen(rdata)) bdl_pyld->len=strlen(rdata);
  bdl_pyld->payload = new char[bdl_pyld->len];
  if(!bdl_pyld->payload){DPRINT(DEB_ERR, "Could not allocate memory for payload."); abort();}
  bzero(bdl_pyld->payload, bdl_pyld->len);
  if(data) memcpy(bdl_pyld->payload,rdata,strlen(rdata));
  
  int token = temp->token_;
  if(enqueue(temp)) return -1;
  
  DPRINT(DEB_NOTICE, "Packet sent at timestamp %016llx with binding %s bound to token %d.", bdl_prim->timestamp, binding?binding:"NULL", temp->token_);

  tprint(temp, da_, BDL_NEW);
  if(token != -1){
    if(binding){
      // Agent/DTNAgent instproc indSendToken {bindning sendtoken}
      int len = strlen(SENDTOKEN_IND_FMT) + strlen(da_->name()) + strlen(binding) + 11 + 1;
      char* out = new char[len];
      if(! out){DPRINT(DEB_ERR, "Could not allocate memory for out.");abort();}
      snprintf(out, len, SENDTOKEN_IND_FMT, da_->name(), binding, token);
      
      tcl.eval(out);
      delete out;
    }
    return 0;
  }
  return -1;
}

/** Creates a new Bundle from an incoming packet.
 * 
 * It retrieves the payload of the packet and places
 * it in a new bundle, which is either delivered locally
 * or reenqueued for later transmission. 
 *
 * \param pkt An incoming Packet.
 *
 * \retval 0 on success.
 * \retval -1 on failure. 
 *
 */
int BundleManager :: newBundle(Packet* pkt)
{
  if(!pkt){DPRINT(DEB_WARN, "Packet is null."); return -1;}
  PacketData* body = (PacketData*) pkt->userdata();

  hdr_bdlprim* bdl_prim = new hdr_bdlprim;
  hdr_bdldict* bdl_dict = new hdr_bdldict;
  if(!bdl_prim || !bdl_dict){DPRINT(DEB_ERR, "Could not create header bdl_prim (%08x) or bdl_dict (%08x).",bdl_prim,bdl_dict); abort();}

  hdr_ip* iph = HDR_IP(pkt);
  hdr_bdlprim* ph = hdr_bdlprim::access(pkt);
  if(!bdl_prim){DPRINT(DEB_WARN, "Could not access packet."); return -1;}

  bdl_prim->version = ph->version;
  bdl_prim->next_hdr = ph->next_hdr;
  bdl_prim->cos = ph->cos;
  bdl_prim->pld_sec = ph->pld_sec;
  bdl_prim->dest = ph->dest;
  bdl_prim->src = ph->src;
  bdl_prim->rpt_to = ph->rpt_to;
  bdl_prim->cust = ph->cust;
  bdl_prim->timestamp =  ph->timestamp;
  bdl_prim->exp_time = ph->exp_time;
  
  Bundle* temp = new Bundle();
  if(!temp){DPRINT(DEB_ERR, "Could not create new bundle."); abort();}
  temp->prevhop_  = iph->saddr();
  temp->recvtime_ = Scheduler::instance().clock();
  temp->fid_      = iph->fid_;
  temp->bdl_prim_ = bdl_prim;
  temp->bdl_dict_ = bdl_dict;
  int size = temp->retrieveData(body->data(),body->size());
  if(size == -1 || size != body->size()){DPRINT(DEB_WARN, "Could not get data from packet."); delete temp; return -1;}

  temp->generateReport(BDL_RPT_RECV|BDL_RPT_FRAG);

  tprint(temp, da_, BDL_RECV, temp->prevhop_);
  // Custody.
  if((bdl_prim->cos & BDL_COS_CUST) && da_->custodian()){
    nsaddr_t prevcust = -1;

    char* tcust = NULL;
    StrRec* crec = bdl_dict->record->getRecord(bdl_prim->cust&0x0f);
    if(crec) tcust = crec->text_;
    if(tcust){
      char* end = strchr(tcust, ':');
      char* temp2 = new char[end-tcust+1];
      if(!temp2){DPRINT(DEB_ERR, "Could not allocate memory."); abort();}
      strncpy(temp2,tcust, end-tcust);
      temp2[end-tcust]='\0';
      Node* cnode = (Node*) TclObject::lookup(temp2);
      delete temp2;
      if(!cnode){DPRINT(DEB_WARN,"Could not lookup node for previous custodian."); delete temp; return -1;}
      prevcust = cnode->address();
    }

    // Rewrite dict header...
    temp->generateReport(BDL_RPT_CUST,BDL_CUST_SUCC,BDL_CUST_ACCEPT);
    DTNStrRecords* records = new DTNStrRecords();
    if(!records){DPRINT(DEB_ERR, "Could not create string records."); abort();}

    int tmpval = 0;
    if((tmpval   = records->addRecord(bdl_dict->record->getRecords(bdl_prim->dest  ))) == -1)
      {DPRINT(DEB_ERR, "Could not add String Record."); abort();}
    bdl_prim->dest = tmpval;
    if((tmpval    = records->addRecord(bdl_dict->record->getRecords(bdl_prim->src   ))) == -1)
      {DPRINT(DEB_ERR, "Could not add String Record."); abort();}
    bdl_prim->src = tmpval;
    if((tmpval = records->addRecord(bdl_dict->record->getRecords(bdl_prim->rpt_to))) == -1)
      {DPRINT(DEB_ERR, "Could not add String Record."); abort();}
    bdl_prim->rpt_to = tmpval;
    if((tmpval   = records->addRecord(agentEndpoint())) == -1)
      {DPRINT(DEB_ERR, "Could not add String Record."); abort();}
    bdl_prim->cust = tmpval;
    
    delete(bdl_dict->record);
    bdl_dict->strcount = records->strcount();
    bdl_dict->record = records;

    tprint(temp, da_, BDL_CUST, prevcust);
    DPRINT(DEB_INFO, "Took custody of bundle.");
  }

  // Check whether we should reenqueue or deliver locally
  Node* local=Node::get_node_by_address(da_->addr());
  if(! local) {DPRINT(DEB_ERR, "No local node?!"); abort();}
  
  if(strcmp(routes_->region(), bdl_dict->record->getRecord(((bdl_prim->dest)&0xf0)/0x10)->text_)==0){
    char* destination = bdl_dict->record->getRecord((bdl_prim->dest)&0x0f)->text_;
    if(strncmp(destination,local->name(),strlen(local->name()))==0 && destination[strlen(local->name())] == ':'){
      if(bdl_prim->cos & BDL_COS_CUST){
	char* cur_cust = bdl_dict->record->getRecords(bdl_prim->cust);
	if(strcmp(cur_cust,agentEndpoint())) temp->generateReport(0,BDL_CUST_SUCC,BDL_CUST_DELIV);
	delete cur_cust;
	cur_cust=NULL;
      }
      return localDelivery(temp);
    }
  }
  return enqueue(temp);
}

/** Sends a bundle. It builds a packet from the information
 * stored in a bundle and calls the agent for transmission. 
 * 
 * \param bundle The bundle to send.
 *
 * \retval 0 on success. 
 * \retval -1 on failure. 
 * 
 */
int BundleManager :: sendBundle(Bundle* bundle){
  if(!bundle){DPRINT(DEB_WARN, "Bundle is null."); return -1;}

  size_t bundlesize = bundle->getDataSize();
  size_t pktsize    = sizeof(hdr_ip) + sizeof(hdr_bdlprim) + bundlesize;
  LinkInfo* nexthop = routes_->getNextHop(bundle->bdl_dict_->record->getRecord(((bundle->bdl_prim_->dest)&0xf0)/0x10)->text_, 
					  bundle->bdl_dict_->record->getRecord(((bundle->bdl_prim_->dest)&0x0f)/0x01)->text_, 
					  bundle->prevhop_, bundle->recvtime_,
					  pktsize,
					  bundle->bdl_prim_->cos & BDL_COS_CUST );
  if(!nexthop){DPRINT(DEB_DEBUG,"No next hop found."); return -1;}
  
  DPRINT(DEB_INFO, "Forwarding to: %d with mtu:%d.", nexthop->node_, nexthop->mtu_);
  
  if(pktsize > nexthop->mtu_){
    sendReport(bundle);
    bundle->fragment(nexthop->mtu_);
    bundlesize = bundle->getDataSize();
  }

  nexthop->setBusy(sizeof(hdr_ip) + sizeof(hdr_bdlprim) + bundlesize);

  size_t realsize=0;

  Packet* pkt = da_->newpacket(sizeof(hdr_bdlprim)+bundlesize);
  if(!pkt){DPRINT(DEB_WARN, "Could not create new packet."); return -1;}
  pkt->allocdata(bundlesize);
  PacketData* body = (PacketData*) pkt->userdata();

  if((realsize=bundle->extractData(body->data(),bundlesize)) != bundlesize){
    DPRINT(DEB_WARN, "extract yielded %d bytes, but %d was expected.", realsize, bundlesize);
    Packet::free(pkt);
    return -1;
  }
  hdr_cmn::access(pkt)->size() = sizeof(hdr_bdlprim)+bundlesize;
  
  hdr_ip* iph = HDR_IP(pkt);
  if(!iph){DPRINT(DEB_WARN, "Could not get IP header."); Packet::free(pkt); return -1;}
  hdr_bdlprim* ph = hdr_bdlprim::access(pkt);
  if(!ph){DPRINT(DEB_WARN, "Could not access primary header."); Packet::free(pkt); return -1;}

  ph->version   = bundle->bdl_prim_->version;
  ph->next_hdr  = bundle->bdl_prim_->next_hdr;
  ph->cos       = bundle->bdl_prim_->cos;
  ph->pld_sec   = bundle->bdl_prim_->pld_sec;
  ph->dest      = bundle->bdl_prim_->dest;
  ph->src       = bundle->bdl_prim_->src;
  ph->rpt_to    = bundle->bdl_prim_->rpt_to;
  ph->cust      = bundle->bdl_prim_->cust;
  ph->timestamp = bundle->bdl_prim_->timestamp;
  ph->exp_time  = bundle->bdl_prim_->exp_time;

  iph->daddr() = nexthop->node_;
  iph->dport() = iph->sport();

  iph->fid_ = bundle->fid_;

  if(iph->saddr() == iph->daddr()){
    DPRINT(DEB_WARN, "Won't send packets to myself. (Should never been queued.)");
    Packet::free(pkt);
    return -1;
  }

  DPRINT(DEB_INFO,"Sending bundle with token %d",bundle->token_);
  tprint(bundle, da_, BDL_FWD, nexthop->node_);
  da_->sendPacket(pkt);

  return 0;
}

/** Process send queue and send next bundle.
 */
void BundleManager :: processQueue(){
  DPRINT(DEB_DEBUG, "PROCSESSING QUEUE.");

  Bundle* tempbundle=NULL;
  Bundle* prev=NULL;

  for(int i=0;i<NUM_QUEUES;i++){
    tempbundle=queue_[i];
    prev=NULL;
    while(tempbundle){
      
      if(tempbundle->bdl_prim_->timestamp + tempbundle->bdl_prim_->exp_time * 0x100000000LL < getTimestamp()){
	DPRINT(DEB_INFO,"Bundle has expired, discarding.");
	tprint(tempbundle, da_, BDL_EXPIRE);
	tempbundle->generateReport(BDL_RPT_EXP);
	sendReport(tempbundle);
	Bundle* tobd = tempbundle;
	if(!prev) queue_[i] = tempbundle->next_;
	else    prev->next_ = tempbundle->next_;
	tempbundle=tempbundle->next_;
	tobd->next_ = NULL;
	delete tobd;
	continue;
      }
      
      if(! sendBundle(tempbundle)){
	if(tempbundle->next_frag_){
	  tempbundle->next_frag_->next_=tempbundle->next_;
	  if(!prev) queue_[i] = tempbundle->next_frag_;
	  else    prev->next_ = tempbundle->next_frag_;
	  tempbundle->next_frag_=NULL;
	} else {
	  if(!prev) queue_[i] = tempbundle->next_;
	  else    prev->next_ = tempbundle->next_;
	}
	tempbundle->next_ = NULL;
	
	tempbundle->generateReport(BDL_RPT_FWD);
	sendReport(tempbundle);
	
	if(tempbundle->bdl_prim_->cos & BDL_COS_CUST){
	  char* ccust = tempbundle->bdl_dict_->record->getRecords(tempbundle->bdl_prim_->cust);
	  if(ccust && strcmp(ccust,agentEndpoint())==0){
	    tempbundle->transtime_=Scheduler::instance().clock();
	    Bundle* cur= sent_;
	    if(cur){
	      while(cur->next_) cur = cur->next_;
	      cur->next_ = tempbundle;
	    } else sent_ = tempbundle;
	    qprint();
	    if(rt_->status() == TIMER_IDLE) rt_->resched(RESENDPOLLINTERVAL);
	  }
	  delete ccust;
	  ccust=NULL;
	} else delete tempbundle;
	
	if(!prev) tempbundle = queue_[i];
	else tempbundle = prev->next_;
	
      }else{
	sendReport(tempbundle);
	prev=tempbundle;
	tempbundle=tempbundle->next_;
      }
    } // WHILE
  } // FOR
  for(int i=0;i<NUM_QUEUES;i++) if(queue_[i]) qt_->resched(SENDPOLLINTERVAL);
}

/** Processes bundles in local delivery queue. 
 * \param dest Destination endpoint ID.
 * \param poll Whether to process one bundle (poll = 1) or all (poll = 0).
 */
void BundleManager :: processLocalQueue(const char* dest, int poll){
  Bundle* cur  = local_;
  Bundle* prev = NULL;
  Bundle* temp = NULL;

  if(! dest){
    DPRINT(DEB_WARN, "dest is null.");
    return;
  }

  DPRINT(DEB_INFO, "Redelivering '%s'.",dest);

  while(cur){
    DPRINT(DEB_DEBUG, "Cur %08x.", cur);
    if(cur->bdl_prim_->timestamp + cur->bdl_prim_->exp_time * 0x100000000LL < getTimestamp()){
      DPRINT(DEB_INFO,"Bundle has expired, discarding.");
      tprint(cur, da_, BDL_EXPIRE);
      if(prev) prev->next_ = cur->next_;
      else local_ = cur->next_;
      temp=cur;
      temp->generateReport(BDL_RPT_EXP);
      sendReport(temp);
      temp->next_ = NULL;
      delete temp;
      temp = NULL;
    }else{
      char* tdest = cur->bdl_dict_->record->getRecords(cur->bdl_prim_->dest);
      if(! tdest) { DPRINT(DEB_ERR, "Could not get record. Invalid bundle!"); abort(); }
      if(strcmp(dest,tdest)==0){
	delete tdest;
	tdest=NULL;
	temp=cur;
	if(prev) prev->next_=cur->next_;
	else local_ = cur->next_;
	cur=cur->next_;	
	temp->next_ = NULL;
	localDelivery(temp,poll,1);
	temp=NULL;
	if(poll) break;
      } else {
	delete tdest;
	tdest=NULL;
	prev = cur;
	cur = cur->next_;
      }
    }
  }
}

/** Retransmits bundles that have waited too long without acknowledgement.
*/
void BundleManager :: retransmit(){
  
  Bundle* cur = NULL;
  Bundle* prev= NULL;
  
  double now = Scheduler::instance().clock();
  DPRINT(DEB_DEBUG, "Checking for retransmission.");
  int queuelen = 0;
  for(int i=0;i<NUM_QUEUES;i++){
    cur=queue_[i];
    while(cur){
      queuelen++;
      cur=cur->next_;
    }
  }
  DPRINT(DEB_INFO, "Queuelen = %d.",queuelen);
  cur=sent_;

  while(cur){
    // *(1+queuelen/5) Can be used to increase retransmission timer when queues get larger.
    if(now > cur->transtime_+da_->retransmit()/* *(1+queuelen/5) */){
      DPRINT(DEB_INFO, "Retransmission of bundle(token %d) triggered (%f > %f : %f).",cur->token_,now,cur->transtime_+da_->retransmit(), cur->transtime_+da_->retransmit()/* *(1+queuelen/5) */);
      if(! prev) sent_=cur->next_;
      else prev->next_=cur->next_;
      qprint();
      Bundle* temp = cur;
      cur=cur->next_;
      temp->next_=NULL;
      enqueue(temp);
    } else {
      
      prev=cur;
      cur=cur->next_;
    }
  }
  
  if(sent_) rt_->resched(RESENDPOLLINTERVAL);
}

/** Removes a bundle that matches a given token.
 *
 * \param ctoken A token as sent back to client.
 * 
 * \returns Status code indicating outcome.
 * \retval 0 on success.
 * \retval -1 on failure. 
 */
int BundleManager :: deleteBundle(const char* ctoken){
  int qnum=0;
  Bundle* curqueue = NULL;
  Bundle* prev = NULL;
  Bundle* cur  = NULL;

  if(! ctoken){ DPRINT(DEB_WARN, "ctoken is NULL."); return -1;}
  int token = atoi(ctoken);
  if(! token){ DPRINT(DEB_NOTICE, "Invalid Token."); return -1;}
  
  DPRINT(DEB_INFO, "%2d Trying to remove bundle with token '%s'=%d.", da_->addr(), ctoken, token);

  for(qnum=0; qnum < NUM_QUEUES+2; qnum++){
    if(qnum<NUM_QUEUES) curqueue=queue_[qnum];
    else if(qnum==NUM_QUEUES)   curqueue=sent_;
    else if(qnum==NUM_QUEUES+1) curqueue=local_;
    else curqueue=NULL;
    prev=NULL;
    cur=curqueue;
    DPRINT(DEB_DEBUG, "CQ %08x.", curqueue);
    while(cur){
      DPRINT(DEB_DEBUG, "CUR %08x.", cur);
      if(cur->token_ == token) break;
      prev=cur;
      cur=cur->next_;
    }
    if(cur) break;
  }
  DPRINT(DEB_DEBUG, "CUR %08x.", cur);
  if(cur){
    if(prev) prev->next_=cur->next_;
    else {
      if(qnum<NUM_QUEUES)         queue_[qnum] = NULL;
      else if(qnum==NUM_QUEUES)   sent_        = NULL;
      else if(qnum==NUM_QUEUES+1) local_       = NULL;
    }
    cur->next_ = NULL;
    delete cur;
    DPRINT(DEB_INFO, "Succesfully removed bundle.");
    return 0;
  }
  DPRINT(DEB_INFO, "Failed to remove bundle.");
  return 0;
}

/** Appends a bundle to the correct queue.
 * 
 * Sends packets immediately if ready to send.
 *
 * \param bundle  The Bundle that should be enqueued.
 *
 * \returns Status code indicating outcome.
 * \retval  0 on success.
 * \retval -1 on failure.
*/
int BundleManager :: enqueue(Bundle* bundle)
{
  if(!bundle || !bundle->bdl_prim_)
    {DPRINT(DEB_WARN,"Bundle (%08x) or primary header (%08x) is null.",bundle,bundle->bdl_prim_); return -1;}

  char* temp = NULL;
  StrRec* crec = bundle->bdl_dict_->record->getRecord(bundle->bdl_prim_->dest&0x0f);
  if(! crec) {DPRINT(DEB_ERR, "Could not find dest record."); abort(); }
  if(crec) temp = crec->text_;
  if(temp){
    char* end = strchr(temp, ':');
    if(! end) {DPRINT(DEB_ERR, "Not a valid record."); abort(); }
    char* temp2 = new char[end-temp+1];
    if(!temp2){DPRINT(DEB_ERR, "Could not allocate memory."); abort();}
    strncpy(temp2,temp, end-temp);
    temp2[end-temp]='\0';
    Node* cnode = (Node*) TclObject::lookup(temp2);
    if(! cnode) {DPRINT(DEB_ERR, "Not a valid node."); abort(); }
    delete temp2;
    if(cnode->address() == da_->addr()) return localDelivery(bundle);
  }

  int qnum=(bundle->bdl_prim_->cos & BDL_COS_PRIMASK)/BDL_COS_PRISHIFT;
  if(qnum>=NUM_QUEUES || qnum<0) qnum=NUM_QUEUES-1;

  Bundle* cur = queue_[qnum];
  bundle->next_=NULL;
  if(cur){
    while(cur->next_) cur = cur->next_;
    cur->next_ = bundle;
  } else queue_[qnum] = bundle;
  qprint();

  qt_ -> resched(0); // Force call of processQueue();
  return 0;
}

/** Removes a bundle that matches a given timestamp and source. 
 *
 * \param timestamp Timestamp of bundle in the same format as returned by getTimestamp().
 * \param sid A source ID formatted as a routing part and administrative part separated by a comma (,).
 * 
 * \returns Status code indicating outcome.
 * \retval 0 on success.
 * \retval -1 on failure. 
 */
int BundleManager :: deleteBundle(u_int64_t timestamp, const char* sid, int offset, int fraglen)
{
  Bundle* cur  = sent_;
  Bundle* prev = NULL;
  char* source = NULL;
  hdr_bdlfrag* curr_fh=NULL;
  hdr_bdlpyld* curr_ph=NULL;

  if(! sid){
    DPRINT(DEB_WARN, "sid is null.");
    return -1;
  }

  DPRINT(DEB_INFO, "%2d Trying to remove bundle sent at %016llx to '%s' %d:%d.",da_->addr(),timestamp,sid,offset,fraglen);
  
  while(cur){
    source = cur->bdl_dict_->record->getRecords(cur->bdl_prim_->src);
    if(cur->bdl_prim_->timestamp == timestamp && strcmp(source,sid) == 0) {
      delete source;
      source=NULL;
      if(! fraglen) break;
      void* curh=NULL;
      curr_fh=NULL;
      curr_ph=NULL;
      curh=cur->bdl_dict_;
      while(curh){
	if(((hdr_bdldict*)curh)->next_hdr == BDL_FRAG)   curr_fh=(hdr_bdlfrag*)((hdr_bdldict*)curh)->next_hdr_p;
	if(((hdr_bdldict*)curh)->next_hdr == BDL_PYLD) { curr_ph=(hdr_bdlpyld*)((hdr_bdldict*)curh)->next_hdr_p; break;}
	else curh = ((hdr_bdldict*)curh)->next_hdr_p;
      }
      if(curr_fh){
	if(curr_fh->offset<=offset &&
	   offset < curr_fh->offset+curr_ph->len &&
	   offset+fraglen <= curr_fh->offset+curr_ph->len) break;
      }else break;
    }
    delete source;
    source=NULL;
    prev=cur;
    cur=cur->next_;
  }
  delete source;

  int curr_off=0;
  int curr_len=0;

  if(cur){
    if(curr_fh && ( curr_fh->offset != offset || curr_ph->len != fraglen)){
      curr_off=curr_fh->offset;
      curr_len=curr_ph->len;
    } else if(!curr_fh && fraglen){
      curr_off=0;
      curr_len=curr_ph->len;
    }
    
    if(curr_off || curr_len){

      if(curr_off == offset){ // Deleting first part.
	cur->fragment(fraglen,1);
	if(prev) prev->next_=cur->next_frag_;
	else sent_=cur->next_frag_;
	cur->next_frag_->next_=cur->next_;
	cur->next_frag_=NULL;
	cur->next_=NULL;
	delete cur;
	cur=NULL;
      } else { // Deleting middle or last part.
	cur->fragment(offset-curr_off,1); // Split of part to save.
	cur->next_frag_->next_=cur->next_;
	cur->next_=cur->next_frag_;
	cur->next_frag_=NULL;
	prev=cur;
	cur=cur->next_;
	if(offset-curr_off+fraglen == curr_len){ // Deleting last part.
	  prev->next_=cur->next_;
	  cur->next_=NULL;
	  delete cur;
	  cur=NULL;
	} else { // Deleting in the middle.
	  cur->fragment(offset-curr_off+fraglen,1);
	  prev->next_=cur->next_frag_;
	  cur->next_frag_->next_=cur->next_;
	  cur->next_frag_=NULL;
	  cur->next_=NULL;
	  delete cur;
	  cur=NULL;
	}
      }      
      DPRINT(DEB_INFO, "Successfully removed bundle part.");
      return 0;
    } else {   
      if(prev) prev->next_=cur->next_;
      else sent_=cur->next_;
      cur->next_ = NULL;
      delete cur;
      DPRINT(DEB_INFO, "Successfully removed bundle.");
      return 0;
    }
  }
  DPRINT(DEB_INFO, "Failed to remove bundle.");
  return -1;
}

/** Parses options (in string format) and updates the primary header.
 *
 * \param cos       Class of Service.\ The desired priority of the bundle.
 * \param options   Delivery options.
 * \param bdl_prim  The primary header.
 */
void BundleManager :: parseOptions(const char* cos, const char* options, hdr_bdlprim* bdl_prim)
{
  if(!cos || !options || !bdl_prim){DPRINT(DEB_WARN,"Cos, options or bdl_prim is null."); return;}
  int optlen=strlen(options);
  int i=0;
  u_int8_t ret1 = 0;
  u_int8_t ret2 = 0;

  while(i < optlen){
    int start = i;
    while(options[i] && options[i] != ',') i++;
    if(!strncmp(&options[start],BDL_OPT_NONE,i-start)){
      ret1 = 0;
      break;
    }
    else if(!strncmp(&options[start],BDL_OPT_CUST,i-start)) ret1 |= BDL_COS_CUST;
    else if(!strncmp(&options[start],BDL_OPT_EERCPT,i-start)) ret1 |= BDL_COS_RET;
    else if(!strncmp(&options[start],BDL_OPT_RCPT,i-start)) ret1 |= BDL_COS_BREC;
    else if(!strncmp(&options[start],BDL_OPT_FWD,i-start)) ret1 |= BDL_COS_BFWD;
    else if(!strncmp(&options[start],BDL_OPT_CTREP,i-start)) ret1 |= BDL_COS_CTREP;
    else if(!strncmp(&options[start],BDL_OPT_PSAUTH,i-start)) DPRINT(DEB_NOTICE, "No support for %s.",BDL_OPT_PSAUTH);
    else if(!strncmp(&options[start],BDL_OPT_PSINT,i-start)) DPRINT(DEB_NOTICE, "No support for %s.",BDL_OPT_PSINT);
    else if(!strncmp(&options[start],BDL_OPT_PSENC,i-start)) DPRINT(DEB_NOTICE, "No support for %s.",BDL_OPT_PSENC);
    else DPRINT(DEB_NOTICE, "Unknown option near %s",  &options[start]);
    i++;
  }

  int tcos = atoi(cos);
  if(tcos>0 && tcos<16) ret1 |= (tcos*BDL_COS_PRISHIFT) & BDL_COS_PRIMASK;
  else if(!strncmp(cos,"NORMAL",7)) ret1 |= BDL_PRIO_NORM;
  else if(!strncmp(cos,"BULK",5)) ret1 |= BDL_PRIO_BULK;
  else if(!strncmp(cos,"EXPEDITED",10)) ret1 |= BDL_PRIO_EXP;
  else ret1 |= BDL_COS_PRIMASK;

  bdl_prim->cos = ret1;
  bdl_prim->pld_sec = ret2;
  DPRINT(DEB_DEBUG, "Parsed '%s;%s' to %02x,%02x.",cos,options,bdl_prim->cos,bdl_prim->pld_sec);
}

/** Return cos and psec fields to delivery options.
 *
 * \param cos   Class of Service field.
 * \param psec  Payload security field.
 *
 * \returns String containing the options.
 *
 * \note The returned string must be deleted.
*/
char* BundleManager :: parseOptions(u_int8_t cos, u_int8_t psec)
{
  int len = 0;
  char* str;
  if(!(cos & ~BDL_COS_PRIMASK)){
    len = strlen(BDL_OPT_NONE);
    str = new char[len+1];
    if(!str){DPRINT(DEB_ERR,"Could not allocate memory for options string."); abort();}
    strncpy(str,BDL_OPT_NONE,len);
    str[len] = '\0';
    return str;
  }
  if(cos & BDL_COS_CUST) len += strlen(BDL_OPT_CUST)+1;
  if(cos & BDL_COS_CTREP) len += strlen(BDL_OPT_CTREP)+1;
  if(cos & BDL_COS_BREC) len += strlen(BDL_OPT_RCPT)+1;
  if(cos & BDL_COS_BFWD) len += strlen(BDL_OPT_FWD)+1;
  if(cos & BDL_COS_RET) len += strlen(BDL_OPT_EERCPT)+1;
  if(psec & BDL_PSEC_ENC) len += strlen(BDL_OPT_PSENC)+1;
  if(psec & BDL_PSEC_AUTH) len += strlen(BDL_OPT_PSAUTH)+1;
  if(psec & BDL_PSEC_INT) len += strlen(BDL_OPT_PSINT)+1;

  str = new char[len];
  if(!str){DPRINT(DEB_ERR,"Could not allocate memory for options string."); abort();}
  int i = 0;
  
  if(cos & BDL_COS_CUST){
    strncpy(&str[i],BDL_OPT_CUST,strlen(BDL_OPT_CUST));
    i+=strlen(BDL_OPT_CUST);
    str[i++] = ',';
  }
  if(cos & BDL_COS_CTREP){
    strncpy(&str[i],BDL_OPT_CTREP,strlen(BDL_OPT_CTREP));
    i+=strlen(BDL_OPT_CTREP);
    str[i++] = ',';
  }
  if(cos & BDL_COS_BREC){
    strncpy(&str[i],BDL_OPT_RCPT,strlen(BDL_OPT_RCPT));
    i+=strlen(BDL_OPT_RCPT);
    str[i++] = ',';
  }
  if(cos & BDL_COS_BFWD){
    strncpy(&str[i],BDL_OPT_FWD,strlen(BDL_OPT_FWD));
    i+=strlen(BDL_OPT_FWD);
    str[i++] = ',';
  }
  if(cos & BDL_COS_RET){
    strncpy(&str[i],BDL_OPT_EERCPT,strlen(BDL_OPT_EERCPT));
    i+=strlen(BDL_OPT_EERCPT);
    str[i++] = ',';
  }
  if(psec & BDL_PSEC_ENC){
    strncpy(&str[i],BDL_OPT_PSENC,strlen(BDL_OPT_PSENC));
    i+=strlen(BDL_OPT_PSENC);
    str[i++] = ',';
  }
  if(psec & BDL_PSEC_AUTH){
    strncpy(&str[i],BDL_OPT_PSAUTH,strlen(BDL_OPT_PSAUTH));
    i+=strlen(BDL_OPT_PSAUTH);
    str[i++] = ',';
  }
  if(psec & BDL_PSEC_INT){
    strncpy(&str[i],BDL_OPT_PSINT,strlen(BDL_OPT_PSINT));
    i+=strlen(BDL_OPT_PSINT);
    str[i++] = ',';
  }
  str[i-1] = '\0';
  DPRINT(DEB_DEBUG,"Parsed %02x %02x into '%s'",cos&~BDL_COS_PRIMASK,psec,str);
  return str;
}

/**  Payload indication callback format. */
#define  DATA_IND_FMT "%s indData %s %s %s %d %s %d %s"

/** Tries to deliver a bundle locally. 
 *
 * If the bundle is bound for the local agent \link agentDelivery(Bundle*) agentDelivery \endlink is called instead.
 * 
 * \param bundle The Bundle to be locally delivered. It will be deleted when this function returns if all went well.
 * \param force  Set to 1 to force delivery to a node with passive bundle reception disabled. 
 *
 * \returns Statuscode indicating outcome of delivery.
 * \retval  0 on success.
 * \retval -1 on failure.
 */
int BundleManager :: localDelivery(Bundle* bundle, int force, int local)
{
  if(! bundle) {
    DPRINT(DEB_WARN, "Bundle is null.");
    return -1;
  }

  // Locate fragmentation header.
  hdr_bdlfrag* frag = (hdr_bdlfrag*) bundle->bdl_dict_;
  while(frag && frag->next_hdr != BDL_FRAG && frag->next_hdr != BDL_PYLD) frag = (hdr_bdlfrag*) frag->next_hdr_p;
  
  if(frag && frag->next_hdr == BDL_FRAG){
    sendReport(bundle);
    bundle = bundle->defragment(&frags_);
    qprint();
    if(!bundle) return 0;
  }

  // Expire waiting fragments.
  u_int64_t now = getTimestamp();
  Bundle* cur=frags_;
  Bundle* prev=NULL;
  Bundle* curfrag=NULL;
  Bundle* tobd=NULL;
  while(cur){
    if(cur->bdl_prim_->timestamp+cur->bdl_prim_->exp_time*0x100000000LL < now){
      DPRINT(DEB_INFO, "Expiring waiting fragments.");
      curfrag=cur;
      if(prev) prev->next_=cur->next_;
      else frags_=cur->next_;
      cur=cur->next_;
      while(curfrag){
	tobd=curfrag;
	curfrag=curfrag->next_frag_;
	tobd->generateReport(BDL_RPT_EXP);
	sendReport(tobd);
	tprint(tobd, da_, BDL_EXPIRE);
	delete tobd;
	tobd=NULL;
      }
    }else cur=cur->next_;
  }
  
  
  char* d=bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->dest  );
  char* s=bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->src   );
  char* r=bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->rpt_to);
  char* opts=parseOptions(bundle->bdl_prim_->cos,bundle->bdl_prim_->pld_sec);

  if(! (d && s && r && opts)){
    DPRINT(DEB_ERR, "Could not allocate memory for or lookup d(%08x), s(%08x), r(%08x) or opts(%08x).",d,s,r,opts);
    abort();
  }
  
  char* sep  = strchr(d,':');
  if(strcmp(sep,":0") == 0){
    delete d;
    delete s;
    delete r;
    delete opts;
    return agentDelivery(bundle);
  }  

  RegEntry* regentry = reg_->lookup(d);
  if(! regentry){
    DPRINT(DEB_INFO, "Stray bundle recieved, dropping.");
    sendReport(bundle);
    delete bundle;
    delete d;
    delete s;
    delete r;
    delete opts;
    return 0;
  } 
  
  BundleId* bid = bids_;
  BundleId* prevbid = NULL;
  while(bid){
    u_int64_t now = getTimestamp();
    if(now > (bid->timestamp_ + bid->exptime_*0x100000000LL)){
      if(prevbid) prevbid->next_ = bid->next_;
      else bids_=bid->next_;
      DPRINT(DEB_INFO, "BundleID('%s' %016llx) expired. (%016llx > %016llx + %08x *0x100000000",
	     bid->source_,
	     bid->timestamp_,
	     now, 
	     bid->timestamp_,
	     bid->exptime_);
      BundleId* delbid = bid;
      bid=bid->next_;
      delbid->next_ = NULL;
      delete delbid;
      delbid=NULL;
    } else {
      if((bundle->bdl_prim_->timestamp == bid->timestamp_) && (strcmp(s,bid->source_)==0)) break;
      prevbid=bid;
      bid=bid->next_;
    }
  }

  if(! local){
    if(bid){
      DPRINT(DEB_INFO, "Bundle('%s' %016llx) recieved again, dropping.",bid->source_,bid->timestamp_);
      sendReport(bundle);
      delete bundle;
      delete d;
      delete s;
      delete r;
      delete opts;
      return 0;
    } else {
      bid=new BundleId();
      if(!bid) {DPRINT(DEB_ERR, "Could not allocate memory."); abort(); }
      bid->source_ = bundle->bdl_dict_->record->getRecords(bundle->bdl_prim_->src);
      bid->timestamp_ = bundle->bdl_prim_->timestamp;
      bid->exptime_ = bundle->bdl_prim_->exp_time;
      bid->next_=NULL;
      if(prevbid) prevbid->next_=bid;
      else bids_=bid;
      DPRINT(DEB_INFO, "New bundle('%s' %016llx) recieved.",bid->source_,bid->timestamp_);
    }
  }
  
  if(! regentry->passive_ && !force){
    if(regentry->failAct_ == FAIL_DEFER){
      DPRINT(DEB_INFO, "Bundle queued for later local delivery.");
      tprint(bundle, da_, BDL_LPEND);
      // add_to_delivery_queue;
      if(bundle->next_){DPRINT(DEB_WARN,"Bundle is not unlinked."); return -1;}
      Bundle* cur = local_;
      while(cur && cur->next_) cur = cur->next_;
      if(! cur) local_=bundle;
      else cur->next_=bundle;
      qprint();
    } else if(regentry->failAct_ == FAIL_SINK){
      DPRINT(DEB_INFO, "Bundle forwarded to sink.");
      tprint(bundle, da_, BDL_LDONE);
      sendReport(bundle);
      delete bundle;
      bundle=NULL;
    } else {
      DPRINT(DEB_INFO, "Bundle dropped due to selected failure action.");
      tprint(bundle, da_, BDL_LDROP);
      sendReport(bundle);
      delete bundle;
      bundle=NULL;
    }
    delete d;
    delete s;
    delete r;
    delete opts;
    return 0;
  } else if(regentry->passive_ && force){
    DPRINT(DEB_NOTICE,"Poll request while in passive reception mode.");
  }
  
  void* nextp=bundle->bdl_dict_;
  int next=BDL_DICT;

  while(nextp && next != BDL_PYLD){
    next =((hdr_bdldict*)nextp)->next_hdr;
    nextp=((hdr_bdldict*)nextp)->next_hdr_p;
  }
  if(! nextp){
    DPRINT(DEB_WARN,"nextp is NULL."); 
    delete d;
    delete s;
    delete r;
    delete opts;
    return  -1;
  }
  char* temp = new char[((hdr_bdlpyld*)nextp)->len+1];
  if(! temp){DPRINT(DEB_ERR, "Could not allocate memory for temp.");abort();}
  memcpy(temp, ((hdr_bdlpyld*)nextp)->payload, ((hdr_bdlpyld*)nextp)->len);
  temp[((hdr_bdlpyld*)nextp)->len]='\0';
  char* tempvar = allocRetVar(temp,da_->name());
  delete(temp);

  int len =
    strlen(DATA_IND_FMT) + 
    strlen(da_->name()) + 
    strlen(s) +
    strlen(d) +
    strlen(r) +
    strlen(opts) +
    strlen(tempvar) +
    2*10 +
    1
    ;
  
  char* out = new char[len];
  if(! out){DPRINT(DEB_ERR, "Could not allocate memory for out.");abort();}
  snprintf(out, len, DATA_IND_FMT, da_->name(), s,d,r, ((bundle->bdl_prim_->cos)&BDL_COS_PRIMASK)/BDL_COS_PRISHIFT, opts, 127, tempvar);

  Tcl& tcl = Tcl::instance();
  tcl.eval(out);
  tprint(bundle, da_, BDL_LDONE);

  bundle->generateReport(BDL_RPT_DELIV);
  sendReport(bundle);
  delete d;
  delete s;
  delete r;
  delete opts;
  delete tempvar;
  delete out;

  delete bundle;
  return 0;
}

/** Tries to deliver a bundle to the local agent.
 *
 * \param bundle The received Bundle.
 *
 * \returns Status code indicating outcome.
 * \retval  0 on success.
 * \retval -1 on failure.
 */
int BundleManager :: agentDelivery(Bundle* bundle)
{
  if(!bundle){DPRINT(DEB_WARN, "Bundle is null."); return -1;}
  DPRINT(DEB_INFO, "Agent Delivery. %08x",bundle);
  int status = -1;
  // Rebuild report.
  hdr_bdlpyld* pyld = (hdr_bdlpyld*)bundle->bdl_dict_;
  
  int next=BDL_DICT;
  while(pyld && next != BDL_PYLD){
    next = ((hdr_bdldict*)pyld)->next_hdr;
    pyld = (hdr_bdlpyld*)((hdr_bdldict*)pyld)->next_hdr_p;
  }
  if(!pyld){DPRINT(DEB_WARN, "No payload header."); return -1;}
  bdl_report* rep = NULL;
  if(pyld->pldclass == BDL_PCLASS_CUST)
    rep = parseReport(pyld);
  
  if(rep && rep->flags & BDL_CUST_SUCC && rep->reason == BDL_CUST_ACCEPT){
    char* source = new char[rep->reg_len+1+rep->adm_len+1];
    if(!source) {DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }

    memcpy(source,rep->reg_id,rep->reg_len);
    source[rep->reg_len]=',';
    memcpy(&source[rep->reg_len+1],rep->adm_id,rep->adm_len);
    source[rep->reg_len+1+rep->adm_len]='\0';
    
    int offset  = 0;
    int fraglen = 0;
    DPRINT(DEB_DEBUG, "Repflags %02x.",rep->flags);
    if(rep->flags & BDL_RPT_FRAG) {
      offset = rep->frag_off;
      fraglen= rep->frag_len;
    }
    tprint(bundle, da_, BDL_AGENT);
    status = deleteBundle(rep->timestamp, source, offset, fraglen);
    delete rep;
    rep = NULL;
    delete source;
    source=NULL;
  }
  DPRINT(DEB_INFO, "agentDelivery no work done.");
  sendReport(bundle);
  delete bundle;
  return status;
}

/** Rebuilds a status report from payload.
 *
 * \returns A new bdl_report.
 * \retval  NULL on failure.
 *
 * \note The returned report must be deleted.
*/
bdl_report* BundleManager :: parseReport(hdr_bdlpyld* pyldhdr){
  if(!(pyldhdr && (pyldhdr->pldclass == BDL_PCLASS_REPORT || pyldhdr->pldclass == BDL_PCLASS_CUST))){
    DPRINT(DEB_INFO, "No Status Report found in payload.");
    return NULL;
  }
  int plen = pyldhdr->len;
  char* pyld = pyldhdr->payload;
  bdl_report* report = new bdl_report;
  if(!report){DPRINT(DEB_ERR,"Could not allocate memory for report."); abort();}
  report->type = pyldhdr->pldclass;
  int pos = 0;
  if(pos+1 > plen){
    DPRINT(DEB_WARN, "Report incomplete.");
    return NULL;
  }
  report->flags = pyld[pos++];
  DPRINT(DEB_INFO,"Starting to rebuild report type %d with flags %02x.", report->type, report->flags);
  if(report->type == BDL_PCLASS_CUST)
    report->reason = pyld[pos++];
  if(report->flags & BDL_RPT_FRAG){
    if(pos+sizeof(u_int32_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
    memcpy(&report->frag_off,&pyld[pos],sizeof(u_int32_t));
    pos+=sizeof(u_int32_t);
    if(pos+sizeof(u_int32_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
    memcpy(&report->frag_len,&pyld[pos],sizeof(u_int32_t));
    pos+=sizeof(u_int32_t);
    DPRINT(DEB_INFO,"Fragmentation found. %d:%d",report->frag_off,report->frag_len);
  }
  if(pos+sizeof(u_int64_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
  memcpy(&report->timestamp,&pyld[pos],sizeof(u_int64_t));
  pos+=sizeof(u_int64_t);
  DPRINT(DEB_INFO,"TIMESTAMP %016llx.",report->timestamp);
  if(report->type == BDL_PCLASS_REPORT){
    if(report->flags & BDL_RPT_RECV){
      if(pos+sizeof(u_int64_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
      memcpy(&report->tor,&pyld[pos],sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
      DPRINT(DEB_INFO,"TOR %016llx.",report->tor);
    }
    if(report->flags & BDL_RPT_FWD){
      if(pos+sizeof(u_int64_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
      memcpy(&report->tof,&pyld[pos],sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
      DPRINT(DEB_INFO,"TOF %016llx.",report->tof);
    }
    if(report->flags & BDL_RPT_DELIV){
      if(pos+sizeof(u_int64_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
      memcpy(&report->todeliv,&pyld[pos],sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
      DPRINT(DEB_INFO,"TODELIV %016llx.",report->todeliv);
    }
    if(report->flags & BDL_RPT_EXP){
      if(pos+sizeof(u_int64_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
      memcpy(&report->todelet,&pyld[pos],sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
      DPRINT(DEB_INFO,"TODELET %016llx.",report->todelet);
    }
  }else if(report->type == BDL_PCLASS_CUST){
    if(pos+sizeof(u_int64_t) > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
    memcpy(&report->tos,&pyld[pos],sizeof(u_int64_t));
    pos+=sizeof(u_int64_t);
    DPRINT(DEB_INFO,"TOS %016llx.",report->tos);
  }
  
  if(pos+1 > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
  report->reg_len = pyld[pos++];
  if(pos+report->reg_len > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
  report->reg_id=new u_int8_t[report->reg_len];
  if(!report->reg_id) {DPRINT(DEB_ERR,"Could not allocate memory."); abort(); }
  memcpy(report->reg_id,&pyld[pos],report->reg_len);
  pos+=report->reg_len;
  if(pos+1 > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
  report->adm_len = pyld[pos++];
  if(pos+report->adm_len > plen){DPRINT(DEB_WARN, "Report incomplete."); return NULL;}
  report->adm_id=new u_int8_t[report->adm_len];
  if(!report->adm_id) {DPRINT(DEB_ERR,"Could not allocate memory."); abort(); } 
  memcpy(report->adm_id,&pyld[pos],report->adm_len);
  pos+=report->adm_len;
  return report;
}

/** Builds a status report based on requested report type
 *  and which flags that previously has been set.
 * 
 * \param bundle A Bundle for which to send status reports.
 * \param type Which type of status report to send. (BDL_REPT_NORM or BDL_REPT_CUST)
 *
 * \returns A bundle containing requested status report. 
 */
Bundle* BundleManager :: buildReport(Bundle* bundle, int type=BDL_PCLASS_REPORT)
{
  if(!bundle){DPRINT(DEB_WARN,"Bundle is null."); return NULL;}
  bdl_report* report = NULL;
  
  if(type == BDL_PCLASS_REPORT && bundle->report_) report = bundle->report_;
  else if(type == BDL_PCLASS_CUST && bundle->custreport_) report = bundle->custreport_;
  else{DPRINT(DEB_WARN, "No defined report_ (%08x), custreport_ (%08x), or wrong report type (%d).",bundle->report_,bundle->custreport_,type); return NULL;}

  char* drec = report->dest;
  char* srec = agentEndpoint();
  char* rrec = srec;
  char* cust = NULL;
  u_int8_t cos = 0x00;
  int fid = BDL_FID_REPT;
  int pclass = BDL_PCLASS_REPORT;

  if(!strcmp(srec,drec)){DPRINT(DEB_DEBUG, "Source and destination are the same, not sending report."); return NULL;}

  if(report->type == BDL_PCLASS_CUST && report->flags & BDL_CUST_SUCC){
    pclass = BDL_PCLASS_CUST;
    int next=BDL_DICT;
    void* nextp = bundle->bdl_dict_;
    report->reason = BDL_CUST_ACCEPT;
    /*Find payload header*/
    while(nextp && next != BDL_PYLD){
      next = ((hdr_bdldict*)nextp)->next_hdr;
      nextp = ((hdr_bdldict*)nextp)->next_hdr_p;
    }
    if(!nextp){DPRINT(DEB_WARN, "No payload header."); return NULL;}
    // send ack to current custodian, add cos_cust to cos
    if(((hdr_bdlpyld*)nextp)->pldclass == BDL_PCLASS_NORMAL){
      DPRINT(DEB_DEBUG, "Preparing to send Custodial Acknowledgement.");
      cust = srec;
      cos = BDL_COS_CUST;
      fid = BDL_FID_CACK;
    }
    // if payload is custodial ack
    else if(((hdr_bdlpyld*)nextp)->pldclass == BDL_PCLASS_CUST){
      DPRINT(DEB_DEBUG, "Preparing to send Reply on Custodial Ack.");
      fid = BDL_FID_ACKR;
    }else{
      DPRINT(DEB_ERR, "Unknown Payload Class %02x",((hdr_bdlpyld*)nextp)->pldclass);
      abort();
    }
  }

  /*Length of payload*/
  int len = 0;
  /*Basic report length*/
  len += 3*sizeof(u_int8_t)+sizeof(u_int64_t)+ report->reg_len + report->adm_len;
  /*Fragmentation*/
  if(report->flags & BDL_RPT_FRAG) len+=2*sizeof(u_int32_t);
  if(report->type == BDL_PCLASS_REPORT){
    /*Bundle reception*/
    if(report->flags & BDL_RPT_RECV) len+=sizeof(u_int64_t);
    /*Bundle forwarding*/
    if(report->flags & BDL_RPT_FWD) len+=sizeof(u_int64_t);
    /*Bundle delivery*/
    if(report->flags & BDL_RPT_DELIV) len+=sizeof(u_int64_t);
    /*Bundle deletion*/
    if(report->flags & BDL_RPT_EXP) len+=sizeof(u_int64_t);
  }else if(report->type == BDL_PCLASS_CUST){
    /*Time of signal + reason*/
    len+=sizeof(u_int64_t)+sizeof(u_int8_t);
  }
  DPRINT(DEB_DEBUG, "Report length: %d",len);

  /*Create payload*/
  char* payload = new char[len];
  if(!payload){DPRINT(DEB_ERR,"Could not allocate memory for payload."); abort();}
  int pos=0;
  /*Add flags*/
  DPRINT(DEB_DEBUG, "Report flags: %02x",report->flags);
  payload[pos++] = report->flags;
  if(report->type == BDL_PCLASS_CUST) payload[pos++] = report->reason;
  /*Add fragmentation info*/
  if(report->flags & BDL_RPT_FRAG){
    DPRINT(DEB_DEBUG, "Adding Fragmentation info");
    memcpy(&payload[pos],&(report->frag_off),sizeof(u_int32_t));
    pos+=sizeof(u_int32_t);
    memcpy(&payload[pos],&(report->frag_len),sizeof(u_int32_t));
    pos+=sizeof(u_int32_t);
  }
  
  /*Add orig timestamp*/
  DPRINT(DEB_DEBUG, "Orig timestamp: %016llx",report->timestamp);
  memcpy(&payload[pos],&(report->timestamp),sizeof(u_int64_t));
  pos+=sizeof(u_int64_t);

  if(report->type == BDL_PCLASS_REPORT){
    if(report->flags & BDL_RPT_RECV){
      DPRINT(DEB_DEBUG, "Adding Time of Receipt");
      memcpy(&payload[pos],&(report->tor),sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
    }
    if(report->flags & BDL_RPT_FWD){
      DPRINT(DEB_DEBUG, "Adding Time of Forwarding");
      memcpy(&payload[pos],&(report->tof),sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
    }
    if(report->flags & BDL_RPT_DELIV){
      DPRINT(DEB_DEBUG, "Adding Time of Delivery");
      memcpy(&payload[pos],&(report->todeliv),sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
    }
    if(report->flags & BDL_RPT_EXP){
      DPRINT(DEB_DEBUG, "Adding Time of Deletion");
      memcpy(&payload[pos],&(report->todelet),sizeof(u_int64_t));
      pos+=sizeof(u_int64_t);
    }
  }else if(report->type == BDL_PCLASS_CUST){
    /*Add Time of signal*/
    memcpy(&payload[pos],&(report->tos),sizeof(u_int64_t));
    pos+=sizeof(u_int64_t);
  }
  
  /*Add originating bundle source*/
  payload[pos++] = report->reg_len;
  memcpy(&payload[pos],report->reg_id,report->reg_len);
  pos+=report->reg_len;
  payload[pos++] = report->adm_len;
  memcpy(&payload[pos],report->adm_id,report->adm_len);
  pos+=report->adm_len;

  /*Create new headers*/
  hdr_bdlprim* bdl_prim = new hdr_bdlprim;
  hdr_bdldict* bdl_dict = new hdr_bdldict;
  hdr_bdlpyld* bdl_pyld = new hdr_bdlpyld;
  if(!bdl_prim || !bdl_dict || !bdl_pyld){DPRINT(DEB_ERR,"Could not allocate memory for header."); abort();}
 
  DTNStrRecords* records = new DTNStrRecords();
  if(!records){DPRINT(DEB_ERR,"Could not allocate memory for string record."); abort();}
  
  bdl_prim->version = BDL_VERSION;
  bdl_prim->next_hdr = BDL_DICT;
  bdl_prim->cos = cos | ((bundle->bdl_prim_->cos) & BDL_COS_PRIMASK);
  bdl_prim->pld_sec = 0x00;
  int tmpval = 0;
  if((tmpval = records->addRecord(drec)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
  bdl_prim->dest = tmpval;
  if((tmpval = records->addRecord(srec)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
  bdl_prim->src = tmpval;
  if((tmpval = records->addRecord(rrec)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
  bdl_prim->rpt_to = tmpval;
  if(cust){
    if((tmpval = records->addRecord(cust)) == -1){DPRINT(DEB_ERR, "Could not add String Record."); abort();}
    bdl_prim->cust = tmpval;
  }else     bdl_prim->cust = 0x00;
  bdl_prim->timestamp = getTimestamp();
  if(bdl_prim->timestamp <= lastTimestamp_){
    bdl_prim->timestamp = ++lastTimestamp_;
  } else {
    lastTimestamp_ = bdl_prim->timestamp;
  }
  DPRINT(DEB_NOTICE, "Report sent at timestamp %016llx with cos %02x" , bdl_prim->timestamp  , bdl_prim->cos);
  
  bdl_prim->exp_time = bundle->bdl_prim_->exp_time;
  
  bdl_dict->next_hdr = BDL_PYLD;
  bdl_dict->next_hdr_p = bdl_pyld;
  bdl_dict->strcount = records->strcount();
  bdl_dict->record = records;
  
  bdl_pyld->pldclass = pclass;
  bdl_pyld->len = len;
  bdl_pyld->payload = payload;
  
  Bundle* temp = new Bundle();
  if(!temp){DPRINT(DEB_ERR,"Could not allocate memory for bundle."); abort();}
  temp->fid_      = fid;
  temp->bdl_prim_ = bdl_prim;
  temp->bdl_dict_ = bdl_dict;
  
  return temp;
}

/** Builds either a normal status report or a custody acknowledgement. 
 *  The report is then enqueued. 
 * 
 * \param bundle A Bundle for which to send status reports.
 *
 * \retval 0 on success.
 * \retval -1 on failure. 
 */
int BundleManager :: sendReport(Bundle* bundle)
{
  DPRINT(DEB_DEBUG, "Start in sendReport");
  if(!bundle){DPRINT(DEB_WARN,"Bundle is null."); return -1;}
  int retval = 0;
  if(bundle->custreport_ && bundle->custreport_->flags){
    DPRINT(DEB_DEBUG, "Building Custody Acknowledgement.");
    Bundle* tmp = buildReport(bundle,BDL_PCLASS_CUST);
    if(!tmp){DPRINT(DEB_INFO,"No custody ack built."); retval = -1;}
    else{
      DPRINT(DEB_INFO, "Custreport for %d, flags %02x, token %d.", bundle->token_,bundle->custreport_->flags,tmp->token_);
      if(enqueue(tmp) == 0) bundle->custreport_->flags = 0;
      else{DPRINT(DEB_WARN,"Could not enqueue."); delete tmp; retval = -1;}
    }
  }

  if(bundle->report_ && bundle->report_->flags){
    DPRINT(DEB_DEBUG, "Building Status Report.");
    Bundle* tmp = buildReport(bundle,BDL_PCLASS_REPORT);
    if(!tmp){DPRINT(DEB_INFO,"No report built."); retval = -1;}
    else{
      if(enqueue(tmp) == 0) bundle->report_->flags = 0;
      else{DPRINT(DEB_WARN,"Could not enqueue."); delete tmp; retval = -1;}
    }
  }
  return retval;
}

/** Get local agent address.
 *
 * Allocates a new string if no previous string exists.
 *
 * \returns Local agent address.
 */
char* BundleManager :: agentEndpoint()
{
  if(agentEndpoint_) return agentEndpoint_;

  Node* local=Node::get_node_by_address(da_->addr());
  if(! local) {DPRINT(DEB_ERR, "No local node?!"); abort();}
  char* reg = routes_->region();
  if(! reg) {DPRINT(DEB_ERR, "No Region?!"); abort();}
  const char* adm = local->name();
  int reglen = strlen(reg);
  int admlen = strlen(adm);
  int len = reglen + admlen + 4;

  char* str = new char[len];
  if(! str) {DPRINT(DEB_ERR,"Could not allocate memory for str."); abort();}
  strncpy(str,reg,reglen);
  str[reglen] = ',';
  strncpy(&str[reglen+1],adm,admlen);
  strncpy(&str[reglen+1+admlen],":0\0",3);
  agentEndpoint_ = str;
  DPRINT(DEB_DEBUG, "Agent endpoint: '%s'", agentEndpoint_);
  return agentEndpoint_;
}

/** Calculates current queue size for the specified queue.
 *
 * \param queue Queue to get size of.
 *
 * \returns Queue size.
 */
int BundleManager :: getQueueSize(Bundle* queue)
{
  int size = 0;
  Bundle* cur = queue;
  Bundle* curfrag = NULL;
  while(cur){
    size+=sizeof(hdr_bdlprim) + cur->getDataSize();
    curfrag = cur->next_frag_;
    while(curfrag){
      size+=sizeof(hdr_bdlprim) + curfrag->getDataSize();
      curfrag = curfrag->next_frag_;
    }
    cur = cur->next_;
  }
  return size;
}
