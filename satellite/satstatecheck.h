/*
 * satstatecheck.h
 *
 *  Created on: Jul 28, 2012
 *      Author: cmy
 */

#include "timer-handler.h"
#include "node.h"
#include "satnode.h"

#ifndef SATSTATECHECK_H_
#define SATSTATECHECK_H_

class SatStateCheckMgr;
class SatNode;

class SatStateCheckTimer : public TimerHandler {
public:
	SatStateCheckTimer(SatStateCheckMgr *a) : TimerHandler() {a_ = a; }
protected:
        void expire(Event *e);
        SatStateCheckMgr *a_;
};

class SatStateCheckMgr : public TclObject {
public:
	SatStateCheckMgr();
	void state_check();
	void start();
	SatNode *node() { return node_;}
    int command(int argc, const char*const* argv);
protected:
    SatStateCheckTimer timer_;
    SatNode *node_;
	static double sat_statecheck_int_;

};

#endif /* SATSTATECHECK_H_ */
