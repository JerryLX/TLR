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
 * @(#) $Header: /cvsroot/nsnam/ns-2/satellite/satnode.h,v 1.5 2001/11/06 06:21:47 tomh Exp $
 *
 * Contributed by Tom Henderson, UCB Daedalus Research Group, June 1999
 */

#ifndef __satnode_h__
#define __satnode_h__

#include <map> // add by CMY
#include <trace.h>
#include <node.h>
#include <stdlib.h>
#include "object.h"
#include "assert.h"


#define GREEN		1
#define YELLOW		2
#define RED		3
#define NEIGHBORS	4

#define MTTW		3 // maximum time to wait for pkt in the waitingQueue
#define RATIO		5 // ratio between waitingQueue checking period and satqueuestate checking period
#define WLMAXLENGTH	100

class LinkHandoffMgr;
class SatChannel;
class SatPosition;
class SatRouteAgent;
class SatTrace;
class SatStateCheckMgr;	// CMY,2012.7.30
class WaitList;

struct comp {
	typedef std::pair<int, int> value_type;
	bool operator ()(const value_type & ls, const value_type & rs) {
		return ls.first < rs.first
				|| (ls.first == rs.first && ls.second < ls.second);
	}
};

struct NeighborState {
	int nexthop;
	int state;
};
struct WQPacket {
	int nexthop;
	int TTW;
	Packet* pkt;
	WQPacket* prev;
	WQPacket* next;
};

class SatNode : public Node {
 public:
	SatNode();
	// Each SatNode has a ragent_ (may be NULL), position_, a 
	// trace_ (may be NULL), and a hm_ (may be NULL)  
	SatRouteAgent* ragent() { return ragent_; }
	SatPosition* position() { return pos_; }
	SatTrace* trace() { return trace_; }
	// The uplink_ and downlink_ variables allow us to avoid searching
	// through the list of links for these commonly accessed channels
	Channel* uplink() { return ((Channel*) uplink_);} 
	Channel* downlink() { return ((Channel*) downlink_);} 
	//int isDesSatNode(int);
	
	int satqueuestate_;				// show state of satellite,CMY,2012.8.24
	NeighborState neistate[NEIGHBORS];		// show state of neighbor satellites,CMY,2012.8.24
	NeighborState linkAndNxtHop[NEIGHBORS]; 	// show the integrated state of link and next hop,CMY,2012.11.05
	WaitList* waitingQueue;				// CMY,2012.10.7
	std::map<std::pair<int,int>, int, comp> record;	// CMY,2012.10.8,to record which route was chosen last time
	int ratioCount_;				// CMY,2012.10.9

	// configuration parameters
	static int dist_routing_;
	static int addNode(int);
	static int IsASatNode(int);
 protected:
        int command(int argc, const char*const* argv);
	SatRouteAgent*		ragent_;
	SatChannel* 		uplink_;
	SatChannel*		downlink_;
	SatPosition*		pos_;
	SatTrace*		trace_; // a drop trace for packets that can't be routed
	LinkHandoffMgr*		hm_; 
	SatStateCheckMgr*	sscm_; // CMY,2012.7.30
	void dumpSats();
	static int*		satnodelist_;
	static int		maxsatnodelist_;

	// MODIFIED(wzf)
public:
	// 得到节点的类型
	//	1 卫星节点
	//	0 地面节点
	int	get_node_type() { return node_type_; }
private:
	int	node_type_; // 1 卫星节点，0 地面节点 
	// MODIFIED END
};

class WaitList {
 public:
	WaitList() : head_(0), tail_(0), len_(0),inNum_(0),outNum_(0),dropNum_(0){}
	int length() const { return (len_); }
	WQPacket* insert(WQPacket* p);
	void remove(WQPacket* p);

	void resetIterator() {
		iter = head_;
	}
	
	WQPacket* getNext() {
		if (!iter)
			return 0;
		WQPacket *tmp = iter;
		iter = iter->next;
		return tmp;
	}
	
	//For statistics
	void inNumAdd() {inNum_++;}
	void outNumAdd() {outNum_++;}
	void dropNumAdd() {dropNum_++;}
	int inNum() const { return (inNum_); }
	int outNum() const { return (outNum_); }
	int dropNum() const { return (dropNum_); }

protected:
	WQPacket* head_;
	WQPacket* tail_;
	int len_;		// packet count,remain count
	int inNum_;		// packet in count
	int outNum_;		// packet out count
	int dropNum_;		// packet drop count
private:
	WQPacket *iter;
};

#endif // __satnode_h__
