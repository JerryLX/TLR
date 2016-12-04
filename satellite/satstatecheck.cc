/*
 * satstatecheck.cc
 *
 *  Created on: Jul 28, 2012
 *      Author: cmy
 */

#include "satstatecheck.h"
#include "satMPTPacket.h"
#include "packet.h"
#include "satroute.h"
#include "satlink.h"

// MODIFIED(wzf)
#include "sattrace.h"
// MODIFIED END

static class SatStateCheckMgrClass : public TclClass {
public:
		SatStateCheckMgrClass() : TclClass("StateCheckManager") {}
        TclObject* create(int, const char*const*) {
                return (new SatStateCheckMgr());
        }
} class_state_check_manager;

void SatStateCheckTimer::expire(Event*)
{
        a_->state_check();
}

double SatStateCheckMgr::sat_statecheck_int_ = 0.005;

SatStateCheckMgr::SatStateCheckMgr():timer_(this)
{
	bind("sat_statecheck_int_", &sat_statecheck_int_);
}

int SatStateCheckMgr::command(int argc, const char*const* argv)
{
	if (argc == 2) {
	} else if (argc == 3) {
		if(strcmp(argv[1], "setnode") == 0) {
				node_ = (SatNode*) TclObject::lookup(argv[2]);
			if (node_ == 0)
				return TCL_ERROR;
			return TCL_OK;
		}
	}
	return (TclObject::command(argc, argv));
}

void SatStateCheckMgr::state_check()
{
	double ratio;//,bw;
	int totalqueuelen=0,totalqueuelim=0;//,queuelim = 0;
	SatLinkHead* slhp;
	Phy *phytxp,*phyrxp;
	Channel *channelp;
	double localThreshold1,localThreshold2;
	double threshold1,threshold2;

	int statechange = 0;
	SatNode* recvnode;
	int desAddr;
	int nxtHopAddr;

	localThreshold1 = 0.6875;
	localThreshold2 = 0.9375;

	// compute queue occupancy rate: Lc/Lq
	// COMMENTS(wzf)
	// 考虑本地的链路状态及链路的下一颗卫星的状态
	// COMMENTS END
	for (slhp = (SatLinkHead*) node_->linklisthead().lh_first; slhp;
		    slhp = (SatLinkHead*) slhp->nextlinkhead() )
	{
		// COMMENTS(wzf)
		// 这里也只考虑了卫星节点之间的队列，而没有考虑卫星到地面用户的队列
		// COMMENTS END
		if (slhp->type() == LINK_ISL_INTERPLANE
				|| slhp->type() == LINK_ISL_INTRAPLANE) {
			phytxp = (Phy *) slhp->phy_tx();
			assert(phytxp);
			channelp = phytxp->channel();
			phyrxp = channelp->ifhead_.lh_first;
			recvnode = (SatNode*) phyrxp->node();
			nxtHopAddr = recvnode->address();
			for (int i = 0; i < NEIGHBORS; i++) {
				if (node_->linkAndNxtHop[i].nexthop == nxtHopAddr) {
					double localQueueRatio = slhp->queue()->length() * 1.0
							/ slhp->queue()->limit();
					if (localQueueRatio > localThreshold2) {
						node_->linkAndNxtHop[i].state = RED;
					} else if (localQueueRatio >= localThreshold1) {
						if (node_->neistate[i].state == RED) {
							node_->linkAndNxtHop[i].state = RED;
						} else {
							node_->linkAndNxtHop[i].state = YELLOW;
						}
					} else {
						if (node_->neistate[i].state == RED) {
							node_->linkAndNxtHop[i].state = RED;
						} else if (node_->neistate[i].state == YELLOW) {
							node_->linkAndNxtHop[i].state = YELLOW;
						} else {
							node_->linkAndNxtHop[i].state = GREEN;
						}
					}
				}
			}
			totalqueuelim += slhp->queue()->limit();
			totalqueuelen += slhp->queue()->length();
		}
	}
	ratio = ((double)totalqueuelen)/totalqueuelim;

	threshold1 = 0.3333;
	threshold2 = 0.6666;
	
	// compare average queue occupancy with two thresholds here
	// COMMENTS(wzf)
	// 纯粹考虑本地整体链路利用率继而设置本卫星节点的状态
	// COMMENTS END
	if (node_->satqueuestate_ == GREEN) {
		if ((ratio >= threshold1) && (ratio < threshold2)) {
			statechange = 1;
			node_->satqueuestate_ = YELLOW;
		} else if (ratio >= threshold2) {
			statechange = 1;
			node_->satqueuestate_ = RED;
		}
	}
	else if (node_->satqueuestate_ == YELLOW) {
		if (ratio >= threshold2) {
			statechange = 1;
			node_->satqueuestate_ = RED;
		} else if (ratio < threshold1) {
			statechange = 1;
			node_->satqueuestate_ = GREEN;
		}
	}
	else {
		if (ratio < threshold1) {
			statechange = 1;
			node_->satqueuestate_ = GREEN;
		} else if ((ratio >= threshold1) && (ratio < threshold2)) {
			statechange = 1;
			node_->satqueuestate_ = YELLOW;
		}
	}

	//notify the neighbors
	if (statechange) {
		printf("state changed here:%d,now:%d\n", node_->address(),node_->satqueuestate_); // for test,2012.10.09
		for (slhp = (SatLinkHead*) node_->linklisthead().lh_first; slhp; slhp =
				(SatLinkHead*) slhp->nextlinkhead()) {
			int type = slhp->type();
			if (type == LINK_ISL_INTRAPLANE || type == LINK_ISL_INTERPLANE) {
				phytxp = (Phy *) slhp->phy_tx();
				assert(phytxp);
				channelp = phytxp->channel();
				phyrxp = channelp->ifhead_.lh_first;
				recvnode = (SatNode*) phyrxp->node();
				// MODIFIED(wzf)
				//printf("%d\n", recvnode->address()); //for test,20121009
				// MODIFIED END
				// COMMENTS(wzf)
				// 注意下面的phytxp->node()，其实就是node_
				// COMMENTS END
				desAddr = ((SatNode*) phytxp->node())->address();
				for (int i = 0; i < NEIGHBORS; i++) {
					if (recvnode->neistate[i].nexthop == desAddr) {
						recvnode->neistate[i].state = node_->satqueuestate_;
					}
				}
			}
		}
	}
	// check the waitingQueue
	// COMMENTS(wzf)
	// 这里检查Waiting Queue，通过ratioCount参数使得检查间隔同文章中的30ms一致
	// COMMENTS END
	node_->ratioCount_++;
	if (node_->ratioCount_ == RATIO) {
		WQPacket* WQpkt;
		node_->waitingQueue->resetIterator();
		// COMMENTS(wzf)
		// 检查每一个数据包
		// COMMENTS END
		while ((WQpkt = node_->waitingQueue->getNext()) != 0) {
			hdr_cmn *hdrc = HDR_CMN (WQpkt->pkt);
			hdr_satMPT *satMPTh = HDR_SATMPT(WQpkt->pkt);
			bool linkup = false;
			int i;
			for (i = 0; i < NEIGHBORS; i++) {
				if (WQpkt->nexthop == node_->neistate[i].nexthop) {
					linkup = true;
					break;
				}
			}
			if (linkup == true) { //previous ISL to the next hop is still on
				if (node_->neistate[i].state == GREEN
						|| node_->neistate[i].state == YELLOW) {
					SatLinkHead* toNxtNode =
							(SatLinkHead*) SatRouteObject::instance().lookup_adj_entry(
									node_->address(),
									node_->neistate[i].nexthop);
					hdrc->next_hop_ = node_->neistate[i].nexthop;
					toNxtNode->recv(WQpkt->pkt, (Handler*) 0);
					node_->waitingQueue->remove(WQpkt);
					node_->waitingQueue->outNumAdd();
				} else {
					--WQpkt->TTW;
					if ((WQpkt->TTW) <= 0) {
						int firstPos = satMPTh->emergeInRoute(node_->address());
						int preNodeAddr = satMPTh->route[firstPos - 1];
						if (node_->ragent()->checkState(preNodeAddr)
								> 0) { //ISL to the previous node is still on
							SatLinkHead* toPreNode =
									(SatLinkHead*) SatRouteObject::instance().lookup_adj_entry(
											node_->address(), preNodeAddr);
							hdrc->next_hop_ = preNodeAddr;
							toPreNode->recv(WQpkt->pkt, (Handler*) 0);
							node_->waitingQueue->remove(WQpkt);
							node_->waitingQueue->outNumAdd();
						} else { // ISL to the previous node is off,refind the route
							printf("previous ISL to the previous hop is off");
							// MODIFIED
							// 将丢弃的数据包记录下来
							SatNode* satnodep = (SatNode*)node_;
							if (satnodep->trace())
								satnodep->trace()->traceonly(WQpkt->pkt);
							// MODIFIED END
							Packet::free(WQpkt->pkt);
							node_->waitingQueue->remove(WQpkt);
							node_->waitingQueue->dropNumAdd();
						}
					}
				}
			} else { //previous ISL to the next hop is off,find new route
				int firstPos = satMPTh->emergeInRoute(node_->address());
				int preNodeAddr = satMPTh->route[firstPos - 1];
				satMPTh->resetRoute();
				hdrc->last_hop_ = preNodeAddr;
				node_->ragent()->recv(WQpkt->pkt, (Handler*) 0);
				node_->waitingQueue->remove(WQpkt);
				node_->waitingQueue->outNumAdd();
			}
		}
		node_->ratioCount_ = 0;
	}
	
	// Refresh the global route
	// COMMENTS(wzf)
	// 
	// COMMENTS END
	if (SatRouteObject::instance().addPeriod() >= ROUTEREFRESHPERIOD) {
		printf("Refresh the global route at time %f...\n", NOW);
		// MODIFIED(wzf)
		//SatRouteObject::instance().recompute_Global();
		// 只计算卫星网络的拓扑
		SatRouteObject::instance().recompute_sat_Global();
		// MODIFIED END
		SatRouteObject::instance().resetPeriod();
		
		int in,out,drop,remain;
		in = out = drop = remain = 0;
		SatNode *snodep = (SatNode*) Node::nodehead_.lh_first;
		while (snodep != 0) {
			int curNode = snodep->address();
			if (curNode <= 65) // satellite node
			{
				in	+= snodep->waitingQueue->inNum();
				out	+= snodep->waitingQueue->outNum();
				drop	+= snodep->waitingQueue->dropNum();
				remain	+= snodep->waitingQueue->length();
			}
			snodep = (SatNode*) snodep->nextnode();
		}
		printf("IN:%d,OUT:%d,DROP:%d,REMAIN:%d\n",in,out,drop,remain);
	}
	
	timer_.resched(sat_statecheck_int_);
}

void SatStateCheckMgr::start()
{
	this->state_check();
}

