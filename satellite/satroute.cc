/* -*-  Mode:C++; c-basic-offset:8; tab-width:8; indent-tabs-mode:t -*- */
/*
 * Copyright (c) 1999 Regents of the University of California.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *      This product includes software developed by the MASH Research
 *      Group at the University of California Berkeley.
 * 4. Neither the name of the University nor of the Research Group may be
 *    used to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * Contributed by Tom Henderson, UCB Daedalus Research Group, June 1999
 */

#ifndef lint
static const char rcsid[] =
    "@(#) $Header: /cvsroot/nsnam/ns-2/satellite/satroute.cc,v 1.13 2005/05/19 03:19:02 tomh Exp $";
#endif

#include "satroute.h"
#include "sattrace.h"
#include "satnode.h"
#include "satlink.h"
#include "route.h"
#include "satMPTPacket.h"
//#include "satQSNPacket.h"
#include <address.h>

int hdr_satMPT::offset_;
static class SatMPTHeaderClass:public PacketHeaderClass{
public:
	SatMPTHeaderClass():PacketHeaderClass("PacketHeader/SatMPT",sizeof(hdr_satMPT)){
		bind_offset(&hdr_satMPT::offset_);
	}
} class_satMPThdr;

//int hdr_satQSN::offset_;
//static class SatQSNHeaderClass:public PacketHeaderClass{
//public:
//	SatQSNHeaderClass():PacketHeaderClass("PacketHeader/SatQSN",sizeof(hdr_satQSN)){
//		bind_offset(&hdr_satQSN::offset_);
//	}
//} class_satQSNhdr;

static class SatRouteClass:public TclClass
{
  public:
	SatRouteClass ():TclClass ("Agent/SatRoute") { }
	TclObject *create (int, const char *const *) {
    		return (new SatRouteAgent ());
	}
} class_satroute;

SatRouteAgent::SatRouteAgent (): Agent (PT_SATMPT), maxslot_(0), nslot_(0), slot_(0),nexthop_record(0),record_table_size(0)
{
	bind ("myaddr_", &myaddr_);
}

SatRouteAgent::~SatRouteAgent()
{
	if (slot_)
	    delete [] slot_;
//	if (nexthop_record)
//		delete [] nexthop_record;
}

void SatRouteAgent::alloc(int slot)
{
	slot_entry *old = slot_;
	int n = nslot_;
	if (old == 0)
		nslot_ = 32;
	while (nslot_ <= slot)
		nslot_ <<= 1;
	slot_ = new slot_entry[nslot_];
	memset(slot_, 0, nslot_ * sizeof(slot_entry));
	for (int i = 0; i < nslot_; i++) {
		for (int j = 0; j < MUlTIPATH_NUM; ++j)
			slot_[i].next_hop[j] = -1;
	}
	for (int i = 0; i < n; ++i) {
		for (int j = 0;j < MUlTIPATH_NUM;++j)
		{	slot_[i].next_hop[j] = old[i].next_hop[j];
			slot_[i].entry[j] = old[i].entry[j];
		}
	}
	delete [] old;
}

void SatRouteAgent::install(int slot, int nh, NsObject* p)
{
	int path_num = 0;
	if (slot >= nslot_)
		alloc(slot);
	while(slot_[slot].next_hop[path_num] != -1) //next_hop is set as 0 at initialization
	{
		path_num++;
	}
	slot_[slot].next_hop[path_num] = nh;
	slot_[slot].entry[path_num] = p;
	if (slot >= maxslot_)
		maxslot_ = slot;
}

void SatRouteAgent::clear_slots()
{
	if (slot_)
		delete [] slot_;
//	printf("%d\n",1);
	slot_ = 0;
	nslot_ = 0;
	maxslot_ = -1;
}

int SatRouteAgent::command (int argc, const char *const *argv)
{
        Tcl& tcl = Tcl::instance();
        if (argc == 2) {
        }
        if (argc == 3) {
               if (strcmp(argv[1], "set_node") == 0) {
                        node_ = (SatNode *) TclObject::lookup(argv[2]);
                        if (node_ == 0) {
                                tcl.resultf("no such object %s", argv[2]);
                                return (TCL_ERROR);
                        }
//                        printf("add:%d\n",node_->address());
//                        printf("node:%ld\n",(long)node_);
//                        printf("ragent:%ld\n",(long)node_->ragent());
                        return (TCL_OK);
		}
	}
	return (Agent::command (argc, argv));
}

/*
 *  Find a target for the received packet
 */
void SatRouteAgent::forwardPacket(Packet * p) {
	hdr_ip *iph = hdr_ip::access(p);
	hdr_cmn *hdrc = HDR_CMN (p);
	hdr_satMPT *satMPTh = HDR_SATMPT(p);
	int lasthop;
	int src = Address::instance().get_nodeaddr(iph->saddr());
	int dst = Address::instance().get_nodeaddr(iph->daddr());
	// Here we need to have an accurate encoding of the next hop routing information
	if (myaddr_ == dst) {
		// MODIFIED(wzf)
		printf("Error:  trying to forward a packet destined to self: %d\n",
				myaddr_);
		if (node_->trace()) {
			// 记录丢弃的数据包
			node_->trace()->traceonly(p);
		}
		// MODIFIED END
		Packet::free(p);
	}
	//add curNode.ID into route
	u_int16_t curNodeID = (u_int16_t) node_->address();
	satMPTh->insertIntoRoute(curNodeID);

	hdrc->direction() = hdr_cmn::DOWN; // send it down the stack
	hdrc->addr_type_ = NS_AF_INET;
	if (hdrc->last_hop_ == myaddr_)
		lasthop = satMPTh->route[satMPTh->routeLen - 3]; // special for the situation when ISL to the next hop breaks down
	else
		lasthop = hdrc->last_hop_;
	hdrc->last_hop_ = myaddr_; // for tracing purposes 

	//compute the BestRoute and the SubBestRoute for the pkt
	//if (SatRouteObject::instance().data_driven_computation())
	//	SatRouteObject::instance().recompute_node(myaddr_);
	
	if (SatNode::dist_routing_ == 0) {
		if (slot_ == 0) {
			// No routes to anywhere
			if (node_->trace())
				node_->trace()->traceonly(p);
			Packet::free(p);
			return;
		}
		
		if (myaddr_ == src || slot_[dst].next_hop[0] == dst) {
			// COMMENTS(wzf)
			// 注意判断语句中“或”，表示地面节点发送数据包，或者数据包到达接收端所连接的卫星节点
			// COMMENTS END
			// srcTer or Sat next to desTer,there is only one GSL
			hdrc->next_hop_ = slot_[dst].next_hop[0];
			slot_[dst].entry[0]->recv(p, (Handler*) 0);
		}
		else {
			//intermediate Sat node
			int brn, sbrn;
			brn = sbrn = -1;
			//find the nextHop of BRN and SBRN
			for (int i = 0; i < MUlTIPATH_NUM; i++) {
				if (slot_[dst].next_hop[i] != lasthop && brn == -1)
					brn = i;
				if (slot_[dst].next_hop[i] != lasthop && brn != i) {
					sbrn = i;
					break;
				}
			}
			
			if (sbrn != -1) {
				// has 2+ nextHops
				// COMMENTS(wzf)
				// 有多于两条路径：最优和次最优
				// COMMENTS END
				int BRN = slot_[dst].next_hop[brn];
				int SBRN = slot_[dst].next_hop[sbrn];
				if ((satMPTh->emergeInRoute(BRN) < 0) && (satMPTh->emergeInRoute(SBRN) < 0)) {
					// COMMENTS(wzf)
					// 两条路径的下一跳都未见过
					// COMMENTS END
					if (checkState(BRN) == GREEN) {
						// COMMENTS(wzf)
						// 最优路径为空闲状态，从最优走
						// COMMENTS END
						hdrc->next_hop_ = BRN;
						slot_[dst].entry[brn]->recv(p, (Handler*) 0);
					} else if (checkState(BRN) == YELLOW) {
						// COMMENTS(wzf)
						// 最优下一跳为黄灯，根据次优路径状态选择下一跳
						// COMMENTS END
						if (checkState(SBRN) == GREEN
								|| checkState(SBRN) == YELLOW) { //take turns to transmit the pkt
							std::map<std::pair<int, int>, int, comp>::iterator it =
									node_->record.find(
											std::make_pair(src, dst));
							if (it == node_->record.end()) {
								node_->record.insert(
										std::make_pair(std::make_pair(src, dst),
												BRN));
								hdrc->next_hop_ = BRN;
								slot_[dst].entry[brn]->recv(p, (Handler*) 0);
							} else if (it->second == BRN) {
								it->second = SBRN;
								hdrc->next_hop_ = SBRN;
								slot_[dst].entry[sbrn]->recv(p, (Handler*) 0);
							} else {
								it->second = BRN;
								hdrc->next_hop_ = BRN;
								slot_[dst].entry[brn]->recv(p, (Handler*) 0);
							}
						} else { //SBRN.state = RED or SBR doesn't exist
							hdrc->next_hop_ = BRN;
							slot_[dst].entry[brn]->recv(p, (Handler*) 0);
						}
					} else { //BRN.state = RED
						if (checkState(SBRN) == GREEN
								|| checkState(SBRN) == YELLOW) {
							hdrc->next_hop_ = SBRN;
							slot_[dst].entry[sbrn]->recv(p, (Handler*) 0);
						} else { //SBRN.state = RED or SBR doesn't exist
							if (node_->waitingQueue->length() < WLMAXLENGTH) {
								WQPacket* newWQpkt = (WQPacket*) malloc(
										sizeof(struct WQPacket));
								newWQpkt->nexthop = BRN;
								// COMMENTS(wzf)
								// 这次参数保证了数据包最多可以在PWQ中存在90ms
								// COMMENTS END
								newWQpkt->TTW = MTTW;
								newWQpkt->pkt = p;
								node_->waitingQueue->insert(newWQpkt);
								node_->waitingQueue->inNumAdd();
							} else {
								//Packet::free(p);	// taking a chance is better than dropping it now
								hdrc->next_hop_ = BRN;
								slot_[dst].entry[brn]->recv(p, (Handler*) 0);
							}
						}
					}
				}
				
				if ((satMPTh->emergeInRoute(BRN) < 0)
						&& (satMPTh->emergeInRoute(SBRN) >= 0)) {
					// COMMENTS(wzf)
					// 最优路径未见过，次优路径见过
					// COMMENTS END
					if (checkState(BRN) == GREEN
							|| checkState(BRN) == YELLOW) {
						hdrc->next_hop_ = BRN;
						slot_[dst].entry[brn]->recv(p, (Handler*) 0);
					} else { // BRN.state = RED
						if (node_->waitingQueue->length() < WLMAXLENGTH) {
							WQPacket* newWQpkt = (WQPacket*) malloc(
									sizeof(struct WQPacket));
							newWQpkt->nexthop = BRN;
							newWQpkt->TTW = MTTW;
							newWQpkt->pkt = p;
							node_->waitingQueue->insert(newWQpkt);
							node_->waitingQueue->inNumAdd();
						} else {
							//Packet::free(p);	// taking a chance is better than dropping it now
							hdrc->next_hop_ = BRN;
							slot_[dst].entry[brn]->recv(p, (Handler*) 0);
						}
					}
				}
				
				if ((satMPTh->emergeInRoute(BRN) >= 0)
						&& (satMPTh->emergeInRoute(SBRN) < 0)) {
					// COMMENTS(wzf)
					// 最优路径见过，次优路径未见过
					// COMMENTS END
					if (checkState(SBRN) == GREEN
							|| checkState(SBRN) == YELLOW) {
						hdrc->next_hop_ = SBRN;
						slot_[dst].entry[sbrn]->recv(p, (Handler*) 0);
					} else if (checkState(SBRN) == RED) {
						if (node_->waitingQueue->length() < WLMAXLENGTH) {
							WQPacket* newWQpkt = (WQPacket*) malloc(
									sizeof(struct WQPacket));
							newWQpkt->nexthop = SBRN;
							newWQpkt->TTW = MTTW;
							newWQpkt->pkt = p;
							node_->waitingQueue->insert(newWQpkt);
							node_->waitingQueue->inNumAdd();
						} else {
							//Packet::free(p);	// taking a chance is better than dropping it now
							hdrc->next_hop_ = BRN;
							slot_[dst].entry[brn]->recv(p, (Handler*) 0);
						}
					} else { //SBR doesn't exist,and ISL to previous node must be IntraISL and is thus always on
						int firstPos = satMPTh->emergeInRoute(myaddr_);
						int preNodeAddr = satMPTh->route[firstPos - 1];
						SatLinkHead* toPreNode =
								(SatLinkHead*) SatRouteObject::instance().lookup_adj_entry(
										myaddr_, preNodeAddr);
						hdrc->next_hop_ = preNodeAddr;
						toPreNode->recv(p, (Handler*) 0);
					}
				}
				
				if ((satMPTh->emergeInRoute(BRN) >= 0)
						&& (satMPTh->emergeInRoute(SBRN) >= 0)) {
					// COMMETNS(wzf)
					// 最优和次优路径都见过
					// COMMENTS END
					int firstPos = satMPTh->emergeInRoute(myaddr_);
					int preNodeAddr = satMPTh->route[firstPos - 1];
					if (checkState(preNodeAddr) > 0) { // ISL to the previous node is still on
						SatLinkHead* toPreNode =
								(SatLinkHead*) SatRouteObject::instance().lookup_adj_entry(
										myaddr_, preNodeAddr);
						hdrc->next_hop_ = preNodeAddr;
						toPreNode->recv(p, (Handler*) 0);
					} else { // ISL to the previous node is off
						printf("SatRouteAgent: at node %d, ISL to the previous node is off\n", myaddr_);
						if (node_->trace())
							node_->trace()->traceonly(p);
						Packet::free(p);
					}
				}
			}
			else // has 1 nextHops
			{
				// COMMENTS(wzf)
				// 只有一条路径
				// COMMENTS END
				int BRN = slot_[dst].next_hop[brn];
				if (checkState(BRN) == GREEN
						|| checkState(BRN) == YELLOW) {
					hdrc->next_hop_ = BRN;
					slot_[dst].entry[brn]->recv(p, (Handler*) 0);
				} else { // BRN.state = RED
					if (node_->waitingQueue->length() < WLMAXLENGTH) {
						WQPacket* newWQpkt = (WQPacket*) malloc(
								sizeof(struct WQPacket));
						newWQpkt->nexthop = BRN;
						newWQpkt->TTW = MTTW;
						newWQpkt->pkt = p;
						node_->waitingQueue->insert(newWQpkt);
						node_->waitingQueue->inNumAdd();
					} else {
						//Packet::free(p);	// taking a chance is better than dropping it now
						hdrc->next_hop_ = BRN;
						slot_[dst].entry[brn]->recv(p, (Handler*) 0);
					}
				}
			}
		}
	} else {
		// DISTRIBUTED ROUTING LOOKUP COULD GO HERE
		printf("Error:  distributed routing not available\n");
		exit(1);
	}
}

void SatRouteAgent::recv (Packet * p, Handler *)
{
	hdr_ip *iph = hdr_ip::access(p);
	hdr_cmn *cmh = hdr_cmn::access(p);

	if (iph->saddr() == myaddr_ && cmh->num_forwards() == 0) {
	 	// Must be a packet I'm originating... add the IP header
		iph->ttl_ = IP_DEF_TTL;
	} else if (iph->saddr() == myaddr_) {
		// I received a packet that I sent.  Probably a routing loop.
		Packet::free(p);
		return;
	} else {
		// Packet I'm forwarding...
		// Check the TTL.  If it is zero, then discard.
		if(--iph->ttl_ == 0) {
			Packet::free(p);
			return;
		}
	}
	if ((iph->saddr() != myaddr_) && (iph->dport() == ROUTER_PORT)) {
		// DISTRIBUTED ROUTING PROTOCOL COULD GO HERE
		printf("Error:  distributed routing not available\n");
		exit(1);
	} else {
		//forwardPacket(p);
		// MODIFIED(wzf)
		forwardPacket2(p);
		// MODIFIED END
	}

}

// COMMENTS(wzf)
// 检查当前节点到邻居节点的状态
// COMMENTS END
int SatRouteAgent::checkState(int addr)
{
	for(int i = 0; i < NEIGHBORS; i++){
		if(node_->linkAndNxtHop[i].nexthop == addr) {
			return node_->linkAndNxtHop[i].state;
		}
	}
	return 0;
}

// MODIFIED(wzf)
// 转发数据包
void SatRouteAgent::forwardPacket2(Packet* p) {
	hdr_ip *iph = hdr_ip::access(p);
	hdr_cmn *hdrc = HDR_CMN (p);
	hdr_satMPT *satMPTh = HDR_SATMPT(p);
	int lasthop;
	int src = Address::instance().get_nodeaddr(iph->saddr());
	int dst = Address::instance().get_nodeaddr(iph->daddr());
	// Here we need to have an accurate encoding of the next hop routing information
	if (myaddr_ == dst) {
		printf("SatRouteAgent: Error trying to forward a packet destined to self: %d\n", myaddr_);
		if (node_->trace()) {
			node_->trace()->traceonly(p);
		}
		Packet::free(p);
	}
	//printf("SatRouteAgent: node %d received a packet from src(%d) to dst(%d)\n", myaddr_, src, dst);
	//add curNode.ID into route
	u_int16_t curNodeID = (u_int16_t) node_->address();
	satMPTh->insertIntoRoute(curNodeID);

	hdrc->direction() = hdr_cmn::DOWN; // send it down the stack
	hdrc->addr_type_ = NS_AF_INET;
	if (hdrc->last_hop_ == myaddr_)
		lasthop = satMPTh->route[satMPTh->routeLen - 3]; // special for the situation when ISL to the next hop breaks down
	else
		lasthop = hdrc->last_hop_;
	hdrc->last_hop_ = myaddr_; // for tracing purposes 
	
	// 数据包的接收端所连接的卫星节点
	int dst_sat = SatRouteObject::instance().get_dst_sat(p);
	if (dst_sat == -2) {
		// 接收端没有连接到卫星节点，丢弃该数据包
		if (node_->trace())
			node_->trace()->traceonly(p);
		Packet::free(p);
		return;
	}
	//printf("The packet's last hop and dst sat are %d and %d respectively.\n", hdrc->last_hop_, dst_sat);
	
	//compute the BestRoute and the SubBestRoute for the pkt
	//if (SatRouteObject::instance().data_driven_computation())
	//	SatRouteObject::instance().recompute_node(myaddr_);
	
	// 没有路由表
	if (node_->get_node_type() && slot_ == 0) {
		// No routes to anywhere
		if (node_->trace())
			node_->trace()->traceonly(p);
		Packet::free(p);
		return;
	}
	
	// 数据包的下一跳是卫星节点
	if (node_->get_node_type() && dst_sat != myaddr_) {
		//printf("The packet(%d -> %d) is on the satellite(%d) with chosen dst sat %d\n", src, dst, myaddr_, dst_sat);
		dst = dst_sat;
	//if (myaddr_ == src || slot_[dst].next_hop[0] == dst) {
		// COMMENTS(wzf)
		// 这个是地面节点调用或者数据包达到接收端连接的卫星节点
		// COMMENTS END
		// srcTer or Sat next to desTer,there is only one GSL
	//	hdrc->next_hop_ = slot_[dst].next_hop[0];
	//	slot_[dst].entry[0]->recv(p, (Handler*) 0);
	//}
	//else {
		//intermediate Sat node
		int brn, sbrn;
		brn = sbrn = -1;
		//find the nextHop of BRN and SBRN
		for (int i = 0; i < MUlTIPATH_NUM; i++) {
			if (slot_[dst].next_hop[i] != lasthop && brn == -1)
				brn = i;
			if (slot_[dst].next_hop[i] != lasthop && brn != i) {
				sbrn = i;
				break;
			}
		}
		
		if (sbrn != -1) {
			// has 2+ nextHops
			// COMMENTS(wzf)
			// 有多于两条路径：最优和次最优
			// COMMENTS END
			int BRN = slot_[dst].next_hop[brn];
			int SBRN = slot_[dst].next_hop[sbrn];
			if ((satMPTh->emergeInRoute(BRN) < 0) && (satMPTh->emergeInRoute(SBRN) < 0)) {
				// COMMENTS(wzf)
				// 两条路径的下一跳都未见过
				// COMMENTS END
				if (checkState(BRN) == GREEN) {
					// COMMENTS(wzf)
					// 最优路径为空闲状态，从最优走
					// COMMENTS END
					hdrc->next_hop_ = BRN;
					slot_[dst].entry[brn]->recv(p, (Handler*) 0);
				} else if (checkState(BRN) == YELLOW) {
					// COMMENTS(wzf)
					// 最优下一跳为黄灯，根据次优路径状态选择下一跳
					// COMMENTS END
					if (checkState(SBRN) == GREEN
							|| checkState(SBRN) == YELLOW) { //take turns to transmit the pkt
						std::map<std::pair<int, int>, int, comp>::iterator it =
								node_->record.find(
										std::make_pair(src, dst));
						if (it == node_->record.end()) {
							node_->record.insert(
									std::make_pair(std::make_pair(src, dst),
											BRN));
							hdrc->next_hop_ = BRN;
							slot_[dst].entry[brn]->recv(p, (Handler*) 0);
						} else if (it->second == BRN) {
							it->second = SBRN;
							hdrc->next_hop_ = SBRN;
							slot_[dst].entry[sbrn]->recv(p, (Handler*) 0);
						} else {
							it->second = BRN;
							hdrc->next_hop_ = BRN;
							slot_[dst].entry[brn]->recv(p, (Handler*) 0);
						}
					} else { //SBRN.state = RED or SBR doesn't exist
						hdrc->next_hop_ = BRN;
						slot_[dst].entry[brn]->recv(p, (Handler*) 0);
					}
				} else { //BRN.state = RED
					if (checkState(SBRN) == GREEN
							|| checkState(SBRN) == YELLOW) {
						hdrc->next_hop_ = SBRN;
						slot_[dst].entry[sbrn]->recv(p, (Handler*) 0);
					} else { //SBRN.state = RED or SBR doesn't exist
						if (node_->waitingQueue->length() < WLMAXLENGTH) {
							WQPacket* newWQpkt = (WQPacket*) malloc(
									sizeof(struct WQPacket));
							newWQpkt->nexthop = BRN;
							// COMMENTS(wzf)
							// 这次参数保证了数据包最多可以在PWQ中存在90ms
							// COMMENTS END
							newWQpkt->TTW = MTTW;
							newWQpkt->pkt = p;
							node_->waitingQueue->insert(newWQpkt);
							node_->waitingQueue->inNumAdd();
						} else {
							//Packet::free(p);	// taking a chance is better than dropping it now
							hdrc->next_hop_ = BRN;
							slot_[dst].entry[brn]->recv(p, (Handler*) 0);
						}
					}
				}
			}
			
			if ((satMPTh->emergeInRoute(BRN) < 0)
					&& (satMPTh->emergeInRoute(SBRN) >= 0)) {
				// COMMENTS(wzf)
				// 最优路径未见过，次优路径见过
				// COMMENTS END
				if (checkState(BRN) == GREEN
						|| checkState(BRN) == YELLOW) {
					hdrc->next_hop_ = BRN;
					slot_[dst].entry[brn]->recv(p, (Handler*) 0);
				} else { // BRN.state = RED
					if (node_->waitingQueue->length() < WLMAXLENGTH) {
						WQPacket* newWQpkt = (WQPacket*) malloc(
								sizeof(struct WQPacket));
						newWQpkt->nexthop = BRN;
						newWQpkt->TTW = MTTW;
						newWQpkt->pkt = p;
						node_->waitingQueue->insert(newWQpkt);
						node_->waitingQueue->inNumAdd();
					} else {
						//Packet::free(p);	// taking a chance is better than dropping it now
						hdrc->next_hop_ = BRN;
						slot_[dst].entry[brn]->recv(p, (Handler*) 0);
					}
				}
			}
			
			if ((satMPTh->emergeInRoute(BRN) >= 0)
					&& (satMPTh->emergeInRoute(SBRN) < 0)) {
				// COMMENTS(wzf)
				// 最优路径见过，次优路径未见过
				// COMMENTS END
				if (checkState(SBRN) == GREEN
						|| checkState(SBRN) == YELLOW) {
					hdrc->next_hop_ = SBRN;
					slot_[dst].entry[sbrn]->recv(p, (Handler*) 0);
				} else if (checkState(SBRN) == RED) {
					if (node_->waitingQueue->length() < WLMAXLENGTH) {
						WQPacket* newWQpkt = (WQPacket*) malloc(
								sizeof(struct WQPacket));
						newWQpkt->nexthop = SBRN;
						newWQpkt->TTW = MTTW;
						newWQpkt->pkt = p;
						node_->waitingQueue->insert(newWQpkt);
						node_->waitingQueue->inNumAdd();
					} else {
						//Packet::free(p);	// taking a chance is better than dropping it now
						hdrc->next_hop_ = BRN;
						slot_[dst].entry[brn]->recv(p, (Handler*) 0);
					}
				} else { //SBR doesn't exist,and ISL to previous node must be IntraISL and is thus always on
					int firstPos = satMPTh->emergeInRoute(myaddr_);
					int preNodeAddr = satMPTh->route[firstPos - 1];
						SatLinkHead* toPreNode =
							(SatLinkHead*) SatRouteObject::instance().lookup_adj_entry(
									myaddr_, preNodeAddr);
					hdrc->next_hop_ = preNodeAddr;
					toPreNode->recv(p, (Handler*) 0);
				}
			}
			
			if ((satMPTh->emergeInRoute(BRN) >= 0)
					&& (satMPTh->emergeInRoute(SBRN) >= 0)) {
				// COMMETNS(wzf)
				// 最优和次优路径都见过
				// COMMENTS END
				int firstPos = satMPTh->emergeInRoute(myaddr_);
				int preNodeAddr = satMPTh->route[firstPos - 1];
				if (checkState(preNodeAddr) > 0) { // ISL to the previous node is still on
					SatLinkHead* toPreNode =
							(SatLinkHead*) SatRouteObject::instance().lookup_adj_entry(
									myaddr_, preNodeAddr);
					hdrc->next_hop_ = preNodeAddr;
					toPreNode->recv(p, (Handler*) 0);
				} else { // ISL to the previous node is off
					// MODIFIED(wzf)
					//printf("ISL to the previous node is off");
					//Packet::free(p);
					printf("SatRouteAgent: at node %d, ISL to the previous node is off\n", myaddr_);
					if (node_->trace())
						node_->trace()->traceonly(p);
					Packet::free(p);
					// MODIFIED END
				}
			}
		}
		else // has 1 nextHops
		{
			// COMMENTS(wzf)
			// 只有一条路径
			// COMMENTS END
			int BRN = slot_[dst].next_hop[brn];
			if (checkState(BRN) == GREEN
					|| checkState(BRN) == YELLOW) {
				hdrc->next_hop_ = BRN;
				slot_[dst].entry[brn]->recv(p, (Handler*) 0);
			} else { // BRN.state = RED
				if (node_->waitingQueue->length() < WLMAXLENGTH) {
					WQPacket* newWQpkt = (WQPacket*) malloc(
							sizeof(struct WQPacket));
					newWQpkt->nexthop = BRN;
					newWQpkt->TTW = MTTW;
					newWQpkt->pkt = p;
					node_->waitingQueue->insert(newWQpkt);
					node_->waitingQueue->inNumAdd();
				} else {
					//Packet::free(p);	// taking a chance is better than dropping it now
					hdrc->next_hop_ = BRN;
					slot_[dst].entry[brn]->recv(p, (Handler*) 0);
				}
			}
		}
	//}
		return;
	}
	
	SatLinkHead* slhp = NULL;
	SatNode* satnodep = NULL;
	NsObject* link_entry = NULL;
	
	// 数据包的接收端连接到本卫星节点
	if (node_->get_node_type() && dst_sat == myaddr_) {
		//printf("The packet(%d -> %d) is on the satellite(%d) with chosen dst sat %d\n", src, dst, myaddr_, dst_sat);
		int done = 0;
		for (slhp = (SatLinkHead*) node_->linklisthead().lh_first; slhp; slhp = (SatLinkHead*)slhp->nextlinkhead()) {
			if (!slhp->get_link_type() && slhp->linkup_) {
				link_entry = slhp;
				hdrc->next_hop_ = dst;
				link_entry->recv(p, (Handler*)0);
				done = 1;
				break;
			}
		}
		
		if (!done) {
			printf("SatRouteAgent: There something wrong with node %d in its downlink.\n", myaddr_);
			if (node_->trace())
				node_->trace()->traceonly(p);
			Packet::free(p);
		}
		return;
	}
	
	// 地面节点发送数据包
	if (!node_->get_node_type()) {
		//printf("The packet(%d -> %d) is on the terminal(%d) with chosen dst sat %d\n", src, dst, myaddr_, dst_sat);
		slhp = (SatLinkHead*) node_->linklisthead().lh_first;
		if (slhp->nextlinkhead() != NULL) {
			printf("SatRouteAgent: node %d has more than one up link.\n", myaddr_);
			exit(-1);
		}
		
		link_entry = slhp;
		
		satnodep = SatRouteObject::instance().get_peer(slhp);
		if (satnodep != NULL) {
			hdrc->next_hop_ = satnodep->address();
			link_entry->recv(p, (Handler*)0);
		} else {
			printf("SatRouteAgent: the peer of node %d is null.\n", myaddr_);
			if (node_->trace())
				node_->trace()->traceonly(p);
			Packet::free(p);
		}
		return;
	}
	
	printf("SatRouteAgent: You should never see this!\n");
	exit(-1);
}
// MODIFIED END

//###########################################################################

#define ADJ(i, j) adj_[INDEX(i, j, size_)].cost
#define ADJ_ENTRY(i, j) adj_[INDEX(i, j, size_)].entry
#define ROUTE(i, j) route_[INDEX(i, j, size_)].next_hop
#define ROUTE_ENTRY(i, j) route_[INDEX(i, j, size_)].entry

static class SatRouteObjectClass:public TclClass
{
  public:
        SatRouteObjectClass ():TclClass ("SatRouteObject") { }
        TclObject *create (int, const char *const *) {
                return (new SatRouteObject ());
        }
} class_satrouteobject;

SatRouteObject* SatRouteObject::instance_;

SatRouteObject::SatRouteObject() : suppress_initial_computation_(0), period(ROUTEREFRESHPERIOD)
{
	bind_bool("wiredRouting_", &wiredRouting_);
	bind_bool("metric_delay_", &metric_delay_);
	bind_bool("data_driven_computation_", &data_driven_computation_);
}

int SatRouteObject::command (int argc, const char *const *argv)
{
        if (instance_ == 0)
                instance_ = this;
	if (argc == 2) {
		// While suppress_initial_computation_ may seem more 
		// appropriate as a bound variable, it is useful to 
		// implement the setting of this variable this way so that 
		// the ``instance_ = this'' assignment is made at the
		// start of simulation.
		if (strcmp(argv[1], "suppress_initial_computation") == 0) {
			suppress_initial_computation_ = 1;
			return (TCL_OK);
		}
		if (strcmp(argv[1], "compute_routes") == 0) {
			printf("SatRouteObject doing command recompute global routes...\n");
			// MODIFIED(wzf)
			// 只计算卫星节点
			recompute_sat_Global();
			//recompute_Global();
			// MODIFIED END
			printf("SatRouteObject doing command recompute global routes finish...\n");
			return (TCL_OK);
		}
		if (strcmp(argv[1], "dump") == 0) {
			printf("Dumping\n");
			dump();
			return (TCL_OK);
		}
	}
	return (RouteLogic::command(argc, argv));
}                       

// Wrapper to catch whether OTcl-based (wired-satellite) routing is enabled
void SatRouteObject::insert_link(int src, int dst, double cost)
{
	if (wiredRouting_) {
		Tcl::instance().evalf("[Simulator instance] sat_link_up %d %d %f", (src - 1), (dst - 1), cost);
	} else
		insert(src, dst, cost);
}

// Wrapper to catch whether OTcl-based (wired) routing is enabled
void SatRouteObject::insert_link(int src, int dst, double cost, void* entry)
{
	SatLinkHead* slhp = (SatLinkHead*) entry;
	if (wiredRouting_) {
		// Here we do an upcall to an instproc in ns-sat.tcl
		// that populates the link_(:) array
		Tcl::instance().evalf("[Simulator instance] sat_link_up %d %d %f %s %s", (src - 1), (dst - 1), cost, slhp->name(), slhp->queue()->name());
	} else
		insert(src, dst, cost, entry); // base class insert()
}

void* SatRouteObject::lookup_adj_entry(int s, int d)
{
	int src = s + 1;
	int dst = d + 1;
	if (src >= size_ || dst >= size_) {
		return (0); // Null pointer
	}
	return (adj_[INDEX(src, dst, size_)].entry);
}

void SatRouteObject::recompute_node(int node) {
	double temp_store_adj[MUlTIPATH_NUM];

	//compute the best route for each destination
	SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
	while (snodep->address() != node)
		snodep = (SatNode*) snodep->nextnode();
	// MODIFIED
	// 否则的话会出错
	snodep->ragent()->clear_slots();
	// MODIFIED END
	node_compute_routes(node);
	populate_routing_tables(node);
	
	if (node > 65)
		return;
	
	// COMMENTS(wzf)
	// 构建其他路径
	// COMMENTS END
	// compute the other routes for each destination
	int desNums = snodep->ragent()->get_maxslot() + 1;
	for (int j = 0; j < desNums; j++) {
		for (int i = 1; i < MUlTIPATH_NUM; i++) {
			int nexthop;
			// set the distance to the former nextHops to infinity
			for (int k = 0; (nexthop = snodep->ragent()->getSlot()[j].next_hop[k]) != -1; k++) {
				// MODIFIED
				//printf("k %d: node %d to node %d nexthop %d\n", k, node, j, nexthop);
				// MODIFIED END
				temp_store_adj[k] = ADJ((node + 1), (nexthop + 1));
				ADJ((node + 1), (nexthop + 1)) = SAT_ROUTE_INFINITY;
			}
			//compute and add another route
			node_compute_routes(node);
			populate_rtable_for_node(node, j);
			// set back the former distance
			for (int s = 0; (temp_store_adj[s] > 0.00000001) && ((nexthop =
					snodep->ragent()->getSlot()[j].next_hop[s]) != -1); s++) {
				ADJ((node+1),(nexthop+1)) = temp_store_adj[s];
				temp_store_adj[s] = 0.0;
			}
		}
	}
}

void SatRouteObject::recompute()
{
	// For very large topologies (e.g., Teledesic), we don't want to
	// waste a lot of time computing routes at the beginning of the
	// simulation.  This first if() clause suppresses route computations.
	if (data_driven_computation_ ||
	    (NOW < 0.001 && suppress_initial_computation_) ) 
		return;
	else {
		compute_topology();
		if (wiredRouting_) {
			Tcl::instance().evalf("[Simulator instance] compute-flat-routes");
		} else {
			compute_routes(); // base class function
		}
		populate_routing_tables();
	}
}

void SatRouteObject::recompute_Global()
{
	if (NOW < 0.001)
		return;
	printf("SatRouteObject: In recompute_Global now at time %.6f\n", NOW);
	compute_topology();
	SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
	
	while (snodep != 0) {
		// First, clear slots of the current routing table
		if (snodep->ragent())
			snodep->ragent()->clear_slots();
		int curNode = snodep->address();
		//printf("computing routes for node %d\n", curNode);
		recompute_node(curNode);
		snodep = (SatNode*) snodep->nextnode();
	}
	printf("SatRouteObject: recompute_Global finish at time %.6f\n", NOW);
}

// MODIFIED(wzf)
// 重新计算卫星节点的路由
void SatRouteObject::recompute_sat_node(SatNode* satnodep) {
	// 判断是否是卫星节点
	if (satnodep == 0 || !satnodep->get_node_type()) {
		printf("SatRouteObject: Invalid SatNode object.\n");
		exit(-1);
	}
	
	double temp_store_adj[MUlTIPATH_NUM];
	
	// 否则的话会出错
	//satnodep->ragent()->clear_slots();
	
	int sataddr = satnodep->address();
	node_compute_routes(sataddr);
	populate_sat_routing_tables(sataddr);
	
	// 构建其他路径
	// compute the other routes for each destination
	for (int j = 0; j < 66; j++) {
		// 不用计算到自身的路由
		if (j == sataddr)
			continue;
		// 分三步：
		//	1 首先将到目的卫星j的所有路径断开
		//	2 计算该拓扑下的路由
		//	3 恢复之前的路由
		for (int i = 1; i < MUlTIPATH_NUM; i++) {
			int nexthop;
			// set the distance to the former nextHops to infinity
			for (int k = 0; (nexthop = satnodep->ragent()->getSlot()[j].next_hop[k]) != -1; k++) {
				//printf("k %d: node %d to node %d nexthop %d\n", k, node, j, nexthop);
				temp_store_adj[k] = ADJ((sataddr + 1), (nexthop + 1));
				ADJ((sataddr + 1), (nexthop + 1)) = SAT_ROUTE_INFINITY;
			}
			//compute and add another route
			node_compute_routes(sataddr);
			populate_rtable_for_node(sataddr, j);
			// set back the former distance
			for (int s = 0; (temp_store_adj[s] > 0.00000001) && ((nexthop =
					satnodep->ragent()->getSlot()[j].next_hop[s]) != -1); s++) {
				ADJ((sataddr + 1), (nexthop + 1)) = temp_store_adj[s];
				temp_store_adj[s] = 0.0;
			}
		}
	}
}

// 计算卫星网络拓扑中的路由
void SatRouteObject::recompute_sat_Global()
{
	if (NOW < 0.001)
		return;
	
	printf("SatRouteObject: In recompute_sat_Global now at time %f\n", NOW);
	compute_sat_topology();
	SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
	
	for (; snodep; snodep = (SatNode*)snodep->nextnode()) {
		// 判断节点的类型
		if (!snodep->get_node_type()) {
			// 地面节点，跳过
			continue;	
		}
		// First, clear slots of the current routing table
		if (snodep->ragent())
			snodep->ragent()->clear_slots();
		recompute_sat_node(snodep);
	}
	printf("SatRouteObject: recompute_sat_Global finish at time %f\n", NOW);
}

// 计算所有卫星节点构成的拓扑
void SatRouteObject::compute_sat_topology()
{
	printf("SatRouteObject: In compute_sat_topology\n");
	
	Node *nodep;
	Phy *phytxp, *phyrxp;
	SatLinkHead *slhp;
	Channel *channelp;
	int src, dst; 
	double delay;
	double queuedelay;

	reset_all();
	// Compute adjacencies.  Traverse linked list of nodes 
        for (nodep=Node::nodehead_.lh_first; nodep; nodep = nodep->nextnode()) {
		// 判断节点的类型
		SatNode* satnodep = (SatNode*)nodep;
		if (!satnodep->get_node_type())
	        	continue;
	
		for (slhp = (SatLinkHead*) nodep->linklisthead().lh_first; slhp; slhp = (SatLinkHead*) slhp->nextlinkhead()) {
			if (!slhp->get_link_type() || !slhp->linkup_)
				continue;
		
			phytxp = (Phy *) slhp->phy_tx();
			assert(phytxp);
			channelp = phytxp->channel();
			if (!channelp) 
	 	    		continue; // Not currently connected to channel
			// Next, look for receive interfaces on this channel
			phyrxp = channelp->ifhead_.lh_first;
			if (phyrxp->nextchnl()) {
				printf("SatRouteObject: this ISL has more than one target.\n");
				exit(-1);
			}
			
		        src = phytxp->node()->address() + 1;
		        dst = phyrxp->node()->address() + 1;
			if (metric_delay_) {
				// 传播时延 + 排队时延
				delay = ((SatChannel*)channelp)->get_pdelay(phytxp->node(), phyrxp->node());
				queuedelay = (slhp->queue()->length()) * 8.0 * 1000 / (slhp->mac()->bandwidth()); // avgpkt size = 1000Byte
			} else
		  		delay = 1;
			
			insert_link(src, dst, delay + queuedelay, (void*)slhp);
		}
	}
}

// 将路由表安装到卫星节点
void SatRouteObject::populate_sat_routing_tables(int node)
{
	SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
	SatNode *snodep2;
	int next_hop, src, dst;
	NsObject *target;

        for (; snodep; snodep = (SatNode*) snodep->nextnode()) {
		if (!snodep->get_node_type())
			continue;
		src = snodep->address();
		if (node != -1 && node != src)
			continue;
		
		snodep2 = (SatNode*) Node::nodehead_.lh_first;
		for (; snodep2; snodep2 = (SatNode*) snodep2->nextnode()) {
                        if (!snodep2->get_node_type())
                                continue;
			
			dst = snodep2->address();
			next_hop = lookup(src, dst);
			if (next_hop != -1 && src != dst) {
				// Here need to insert target into slot table
				target = (NsObject*) lookup_entry(src, dst);
				if (target == 0) {
					printf("SatRouteObject: Error, src(%d) -> dst(%d) has a null target at time %.6f\n", src, dst, NOW);
					exit(1);
				}
				snodep->ragent()->install(dst, next_hop, target); 
			}
		}
	}
}

// 得到数据包的目的端所连接的卫星编号
int SatRouteObject::get_dst_sat(Packet* p)
{
	SatChannel* schan;
	Phy* remote_phy;
	
	hdr_ip* iph = hdr_ip::access(p);
	int term_dst = Address::instance().get_nodeaddr(iph->daddr());

	SatNode* dstnode = (SatNode*) Node::get_node_by_address(term_dst);
	SatLinkHead* slhp = (SatLinkHead*) dstnode->linklisthead().lh_first;
	if (slhp->nextlinkhead()) {
		printf("SatRouteAgent: Terminal %d has more than gsl link.\n", dstnode->address());
		exit(-1);
	}

	schan = (SatChannel*) slhp->phy_tx()->channel();
	if (schan == 0) {
		printf("SatRouteAgent: Terminal %d has not joined the satellite network.\n", dstnode->address());
		return -2;
	}

	remote_phy = schan->ifhead_.lh_first;
	if (remote_phy == 0) {
		printf("SatRouteAgent: The remote satellite to terminal %d is down.\n", dstnode->address());
		exit(-1);
	}

	if (remote_phy->nextchnl()) {
		printf("SatRouteAgent: The gsl of terminal %d has more than one target.\n", dstnode->address());
		exit(-1);
	} else {
		int sataddr = remote_phy->head()->node()->address();
		return sataddr;
	}
	return -1;
}

// 得到链路对端连接到的卫星
SatNode* SatRouteObject::get_peer(SatLinkHead* slhp)
{
	if (slhp == NULL) {
		printf("SatRouteObject: This input SatLinkHead argument is null.\n");
		return NULL;
	}
	
	SatChannel* schan = NULL;
	Phy* remote_phy = NULL;
	
	schan = (SatChannel*) slhp->phy_tx()->channel();
	if (schan == NULL) {
		printf("SatRouteObject: the initial end has not joined the satellite network.\n");
		return NULL;
	}
	
	remote_phy = schan->ifhead_.lh_first;
	if (remote_phy == NULL)
		return NULL;

	if (remote_phy->nextchnl()) {
		printf("SatRouteObject: this ISL has more than target.\n");
		return NULL;
	}
	
	return (SatNode*) remote_phy->head()->node();
}
// MODIFIED END

// Derives link adjacency information from the nodes and gives the current
// topology information to the RouteLogic.
void SatRouteObject::compute_topology()
{
	printf("In compute_topology now...\n");
	Node *nodep;
	Phy *phytxp, *phyrxp, *phytxp2, *phyrxp2;
	SatLinkHead *slhp;
	Channel *channelp, *channelp2;
	int src, dst; 
	double delay;
	double queuedelay;

	// wired-satellite integration
	if (wiredRouting_) {
		// There are two route objects being used
		// a SatRouteObject and a RouteLogic (for wired)
		// We need to also reset the RouteLogic one
		Tcl::instance().evalf("[[Simulator instance] get-routelogic] reset");
	}
	reset_all();
	// Compute adjacencies.  Traverse linked list of nodes 
        for (nodep=Node::nodehead_.lh_first; nodep; nodep = nodep->nextnode()) {
	    // Cycle through the linked list of linkheads
	    if (!SatNode::IsASatNode(nodep->address()))
	        continue;
	    for (slhp = (SatLinkHead*) nodep->linklisthead().lh_first; slhp; 
	      slhp = (SatLinkHead*) slhp->nextlinkhead()) {
		if (slhp->type() == LINK_GSL_REPEATER)
		    continue;
		if (!slhp->linkup_)
		    continue;
		phytxp = (Phy *) slhp->phy_tx();
		assert(phytxp);
		channelp = phytxp->channel();
		if (!channelp) 
	 	    continue; // Not currently connected to channel
		// Next, look for receive interfaces on this channel
		phyrxp = channelp->ifhead_.lh_first;
		for (; phyrxp; phyrxp = phyrxp->nextchnl()) {
		    if (phyrxp == phytxp) {
			printf("Configuration error:  a transmit interface \
			  is a channel target\n");
			exit(1);
		    } 
		    if (phyrxp->head()->type() == LINK_GSL_REPEATER) {
			double delay_firsthop = ((SatChannel*)
				    channelp)->get_pdelay(phytxp->node(), 
				    phyrxp->node());
			if (!((SatLinkHead*)phyrxp->head())->linkup_)
		    	    continue;
			phytxp2 = ((SatLinkHead*)phyrxp->head())->phy_tx();
			channelp2 = phytxp2->channel();
			if (!channelp2) 
	 	    	    continue; // Not currently connected to channel
			phyrxp2 = channelp2->ifhead_.lh_first;
			for (; phyrxp2; phyrxp2 = phyrxp2->nextchnl()) {
		    	    if (phyrxp2 == phytxp2) {
			        printf("Config error: a transmit interface \
			          is a channel target\n");
			        exit(1);
			    }
		            // Found an adjacency relationship.
		            // Add this link to the RouteLogic
		            src = phytxp->node()->address() + 1;
		            dst = phyrxp2->node()->address() + 1;
			    if (src == dst)
				continue;
			    if (metric_delay_)
		                delay = ((SatChannel*) 
			          channelp2)->get_pdelay(phytxp2->node(), 
			          phyrxp2->node());
			    else {
				delay = 1;
				delay_firsthop = 0;
			    }
			    insert_link(src, dst, delay+delay_firsthop, (void*)slhp);
			}
		    } else {
		        // Found an adjacency relationship.
		        // Add this link to the RouteLogic
		        src = phytxp->node()->address() + 1;
		        dst = phyrxp->node()->address() + 1;
			if (metric_delay_)
			{
				// COMMENTS(wzf)
				// 传播时延 + 排队时延
				// COMMENTS END
				delay = ((SatChannel*)channelp)->get_pdelay(phytxp->node(), phyrxp->node());
				queuedelay = (slhp->queue()->length()) * 8.0 * 1000 / (slhp->mac()->bandwidth()); // avgpkt size = 1000Byte
			}
			else
			    delay = 1;
			
			insert_link(src, dst, delay + queuedelay, (void*)slhp);
		    }
		}
	    }
	}
	printf("compute_topology finish...\n");
	//dump();
}

void SatRouteObject::populate_routing_tables(int node)
{
	SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
	SatNode *snodep2;
	int next_hop, src, dst;
	NsObject *target;

	if (wiredRouting_) {
		Tcl::instance().evalf("[Simulator instance] populate-flat-classifiers [Node set nn_]");
		return;
	}
        for (; snodep; snodep = (SatNode*) snodep->nextnode()) {
		if (!SatNode::IsASatNode(snodep->address()))
			continue;   
		src = snodep->address();
		if (node != -1 && node != src)
			continue;
		snodep2 = (SatNode*) Node::nodehead_.lh_first;
		for (; snodep2; snodep2 = (SatNode*) snodep2->nextnode()) {
                        if (!SatNode::IsASatNode(snodep2->address()))
                                continue;
			dst = snodep2->address();
			next_hop = lookup(src, dst);
			// COMMENTS(wzf)
			// 这里应该不会受代码改动的太大影响
			// COMMENTS END
			if (next_hop != -1 && src != dst) {
				// Here need to insert target into slot table
				target = (NsObject*) lookup_entry(src, dst);
				if (target == 0) {
					printf("Error, routelogic target ");
					printf("not populated %f\n", NOW); 
					exit(1);
				}
				((SatNode*)snodep)->ragent()->install(dst, 
				    next_hop, target); 
			}
		}
	}
		
}

int SatRouteObject::lookup(int s, int d)
{                                       
	int src = s + 1;        
	int dst = d + 1;
	if (src >= size_ || dst >= size_) {
		return (-1); // Next hop = -1
	}
	return (route_[INDEX(src, dst, size_)].next_hop - 1);
}

void* SatRouteObject::lookup_entry(int s, int d)
{                       
	int src = s + 1;
	int dst = d + 1;
	if (src >= size_ || dst >= size_) {
		return (0); // Null pointer
	}
	return (route_[INDEX(src, dst, size_)].entry);
}

// This method is used for debugging only
void SatRouteObject::dump()
{
	int i, src, dst;
	for (i = 0; i < (size_ * size_); i++) {
		if (adj_[i].cost != SAT_ROUTE_INFINITY) {
			src = i / size_ - 1;
			dst = i % size_ - 1;
			printf("Found a link from %d to %d with cost %f\n", src, dst, adj_[i].cost);
		}
        }
}

void SatRouteObject::node_compute_routes(int node)
{
        int n = size_;
        int *parent = new int[n];
        double *hopcnt = new double[n];
        //double temp_to_lasthop = ADJ((node+1),(lasthop+1));
        //double temp_from_lasthop = ADJ((lasthop+1),(node+1));
        //ADJ((node+1),(lasthop+1))= SAT_ROUTE_INFINITY;
        //ADJ((lasthop+1),(node+1))= SAT_ROUTE_INFINITY;
        
	// MODIFIED(wzf)
	// delete route_;
	// 以防万一
	if (route_)
		delete[] route_;
	// MODIFIED END
        route_ = new route_entry[n * n];
        memset((char *)route_, 0, n * n * sizeof(route_[0]));
        /* compute routes only for node "node" */
        int k = node + 1; // must add one to get the right offset in tables  
        int v;
        for (v = 0; v < n; v++) 
                parent[v] = v;

        /* set the route for all neighbours first */
        for (v = 1; v < n; ++v) {
                if (parent[v] != k) {
                        hopcnt[v] = ADJ(k, v);
                        if (hopcnt[v] != SAT_ROUTE_INFINITY) {
                                ROUTE(k, v) = v;
                                ROUTE_ENTRY(k, v) = ADJ_ENTRY(k, v);
                        }
                }
        }
        for (v = 1; v < n; ++v) {
                /*
                 * w is the node that is the nearest to the subtree
                 * that has been routed
                 */
                int o = 0;
                /* XXX */
                hopcnt[0] = SAT_ROUTE_INFINITY;
                int w;
                for (w = 1; w < n; w++)
                        if (parent[w] != k && hopcnt[w] < hopcnt[o])
                                o = w;
                parent[o] = k;
                /*
                 * update distance counts for the nodes that are
                 * adjacent to o
                 */
                if (o == 0)
                        continue;
                for (w = 1; w < n; w++) {
                        if (parent[w] != k &&
                            hopcnt[o] + ADJ(o, w) < hopcnt[w]) {
                                ROUTE(k, w) = ROUTE(k, o);
                                ROUTE_ENTRY(k, w) =
                                    ROUTE_ENTRY(k, o);
                                hopcnt[w] = hopcnt[o] + ADJ(o, w);
                        }
                }
        }
        /*
         * The route to yourself is yourself.
         */
        ROUTE(k, k) = k;
        ROUTE_ENTRY(k, k) = 0; // This should not matter

        delete[] hopcnt;
        delete[] parent;

        //ADJ((node+1),(lasthop+1))= temp_to_lasthop;
        //ADJ((lasthop+1),(node+1))= temp_from_lasthop;
}


void SatRouteObject::populate_rtable_for_node(int node, int dst)
{
	int next_hop;
	NsObject *target;
	SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
	
	while(snodep->address()!= node)
		snodep = (SatNode*) snodep->nextnode();
	
	next_hop = lookup(node, dst);
	if (next_hop != -1 && node != dst) {
		// Here need to insert target into slot table
		target = (NsObject*) lookup_entry(node, dst);
		if (target == 0) {
			printf("Error, routelogic target");
			printf("not populated %f\n", NOW);
			exit(1);
		}
		((SatNode*)snodep)->ragent()->install(dst,
		next_hop, target);
	}
}
