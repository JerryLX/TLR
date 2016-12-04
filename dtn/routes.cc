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

/** \file routes.cc  Routes. 
*/

#include <string.h>

#include "routes.h"
#include "debug.h"

#include "common/node.h"
#include "common/simulator.h"

/** Routes constructor.
 */
Routes :: Routes(ns_addr_t* here) : list_(NULL), region_(NULL), links_(NULL)
{
  here_=here;
}

/** Destroy the route list.
 */
Routes :: ~Routes()
{
  delete list_;
}

/** Finds next hop.
 *
 * \param region   The region for which to find the next hop.
 
 * \param prev     Last node the bundle visited.
 * \param recvtime The time this bundle was recieved from prev.
 * \param size     Size of bundle, used to calculate how long the link will be busy.
 * \param custody  Should nodes accepting custody be preferred.
 *
 * \returns LinkInfo for next hop.
 * \retval NULL if no hop could be found.
 */
LinkInfo* Routes :: getNextHop(const char* region, const char* admdest, nsaddr_t prev, double recvtime, int size, int custody)
{
  Simulator&  sim    = Simulator::instance();
  Tcl&        tcl    = Tcl::instance();
  const char* tclres = tcl.result();

  int tmetric=0x7FFFFFFF;
  int metric;
  double now = Scheduler::instance().clock();

  LinkInfo* link=NULL;
  
  if(!region || ! admdest){ DPRINT(DEB_WARN, "getNextHop called with region or admdest null."); return NULL; }
  
  if(strcmp(region_,region) == 0){
    DPRINT(DEB_DEBUG, "Routing within region %s.",region);
    char* end = strchr(admdest, ':');
    char* temp2 = new char[end-admdest+1];
    if(!temp2){DPRINT(DEB_ERR, "Could not allocate memory."); abort();}
    strncpy(temp2,admdest, end-admdest);
    temp2[end-admdest]='\0';
    Node* dnode = (Node*) TclObject::lookup(temp2);
    delete(temp2);
    if(! dnode){DPRINT(DEB_WARN,"Could not lookup node."); return NULL;}
    tcl.evalf("[ %s get-routelogic ] lookup %d %d ", sim.name(), here_->addr_, dnode->address());
    int address = atoi(tclres);
    link = links_;
    while(link && link->node_ != address) link=link->next_;
    if(! link) {
      DPRINT(DEB_INFO, "Could not find an existing link. Creating a new. (%d->%d via %d)",here_->addr_,dnode->address(),address);
      link=new LinkInfo();
      if(! link){ DPRINT(DEB_ERR, "Could not allocate memory for new LinkInfo"); abort();}
      Node* me = Node::get_node_by_address(here_->addr_);
      Node* peer = Node::get_node_by_address(address);
      tcl.evalf("%s link %s %s", sim.name(), me->name(), peer->name());
      DPRINT(DEB_DEBUG,"Link between %d(%s) and %d(%s) = '%s'.",here_->addr_, me->name(), address, peer->name(), tclres);
      if(! (link->linkObj_=new char[strlen(tclres)])){ DPRINT(DEB_ERR, "Could not allocate memory for linkObj."); abort(); }
      strcpy(link->linkObj_,tclres);
      link->node_=address;
      link->next_=NULL;
      if(! links_) links_ = link;
      else {
	LinkInfo* tlink = links_;
	while(tlink->next_) tlink=tlink->next_;
	tlink->next_=link;
      }
    }
    if(! isAvail(link)) return NULL;
  } else {
    DPRINT(DEB_DEBUG, "Routing to another region. (%s:%d)->(%s)",region_,here_->addr_,region);
    Route* temp   = list_;
    Route* match  = NULL;

    while(temp){
      metric = temp->metric_;
      if(custody && ! temp->custodian_)  metric += 10000;
      if(temp->linfo_->node_ == prev) metric += 100000;
      if((metric < tmetric) && 
	 ((! temp->route_) || (strncmp(temp->route_,region,strlen(temp->route_))==0)) &&
	 (now > recvtime+2.0 || temp->linfo_->node_ != prev) &&  
	 //     recvtime+2.0: 2.0 seconds are added to avoid returning the bundle immediately.
	 isAvail(temp->linfo_)) {
	match=temp;
	tmetric = metric;
      }    
      temp=temp->next_;
    }
    if(! match) return NULL;
    link=match->linfo_;
  }

  return link;
}

/** Adds a new route.
 *
 * \param node       Adress of the hop.
 * \param route      The region for which the node is a hop to. Use * to add a default route.
 * \param custodian  1 if the node supports custody, 0 if not.
 * \param metric     Metric(cost) of this route.
 * \param mtu        MTU of this route.
 * \param linkObj    Object name of the link serving this route.
 *
 * \returns Status code indicating whether the route was added or not.
 * \retval 0 on success.
 * \retval -1 on failure.
 */
int Routes :: add(nsaddr_t node, const char* route, int custodian, int metric, int mtu, const char* linkObj)
{
  if(!route || !linkObj){ DPRINT(DEB_WARN, "Argument route or linkObj is null."); return -1; }
  if(metric<0) metric = 0;
  if(strcmp(route,"*")==0){
    metric=1000;
    route=NULL;
  }
  Route* temp=new Route();
  if(! temp) {
    DPRINT(DEB_ERR, "Could not allocate memory for temp.");
    abort();
  }
  if(route) {
    char* troute = new char[strlen(route)];
    if(! troute) {
      DPRINT(DEB_ERR, "Could not allocate memory for troute.");
      abort();
    }
    strcpy(troute,route);
    temp->route_=troute;
  } else temp->route_=NULL;
  temp->custodian_=custodian;
  temp->metric_=metric;

  LinkInfo* cur = links_;
  while(cur && strcmp(linkObj,cur->linkObj_)) cur=cur->next_;
  if(! cur){
    cur=new LinkInfo();
    if(! cur){ DPRINT(DEB_ERR, "Could not allocate memory for new LinkInfo"); abort();}
    if(! (cur->linkObj_=new char[strlen(linkObj)])){ DPRINT(DEB_ERR, "Could not allocate memory for linkObj."); abort(); }
    strcpy(cur->linkObj_,linkObj);
    cur->node_ = node;
    cur->mtu_ = mtu;
    if(! links_) links_ = cur;
    else {
      LinkInfo* tlink = links_;
      while(tlink->next_) tlink=tlink->next_;
      tlink->next_=cur;
    }
  }
  temp->linfo_=cur;
  temp->next_=list_;
  list_=temp;

  if(temp->route_)  
    DPRINT(DEB_INFO,"%2d added route: '%s'\t%d\t%d\t%d\tlink %s",here_->addr_,temp->route_,temp->linfo_->node_,temp->custodian_,temp->metric_,temp->linfo_->linkObj_);
  else 
    DPRINT(DEB_INFO,"%2d added route: '*'\t%d\t%d\t%d\tlink %s",here_->addr_,temp->linfo_->node_,temp->custodian_,temp->metric_,temp->linfo_->linkObj_);
    
  return 0;
}

/** Sets local region.
 *
 * \param region  The region to be set as local.
 *
 * \note Allocates memory that is pointed to from region_, but frees it if called again.
 */
void Routes :: setLocal(const char* region)
{
  if(region_){ delete region_; region_ = NULL; }
  if(! region) return;

  if(! (region_ = new char[strlen(region+1)])){
    DPRINT(DEB_ERR, "Could not allocate memory for region_.");
    abort();
  }
  strcpy(region_,region);
}

/** Check if a link for a route is available. 
 * \param link The link to check for availability.
 * \retval 0 if not available.
 * \retval 1 if available.
 */
int Routes :: isAvail(LinkInfo* link)
{
  if(!link){DPRINT(DEB_WARN,"Argument link is null."); return 0;}
  Tcl&        tcl    = Tcl::instance();
  const char* tclres = tcl.result();
  if(link->busyTo_ >  Scheduler::instance().clock()) return 0;
  tcl.evalf("%s up?", link->linkObj_);
  if(strcmp(tclres,"up")) return 0;
  DPRINT(DEB_DEBUG,"Link %s available.",link->linkObj_);
  return 1;
}

/** Indicates that a link will be busy.
 *
 * \param size How many bytes that will be sent on the link. Is used to calculate time until the link will be available again.
 * 
*/
void LinkInfo :: setBusy(int size)
{
  Tcl&        tcl    = Tcl::instance();
  const char* tclres = tcl.result();
  tcl.evalf("%s bw", linkObj_);
  int bw = atoi(tclres);
  if(! bw) bw = 1;
  busyTo_ = Scheduler::instance().clock() + (double)(size*8)/(double)bw;
  DPRINT(DEB_DEBUG,"Link %s busy until %f", linkObj_, busyTo_);
}
