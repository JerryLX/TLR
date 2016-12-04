/*
Copyright (c) 2005 Henrik Eriksson and Patrik J�nsson.
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

/** \file timers.h  Different timers needed.
*/

#ifndef DTN_TIMERS_H
#define DTN_TIMERS_H

#include "common/timer-handler.h"
#include "bundlemanager.h"

/** A bundle retransmission timer.
 */
class ResendTimer : public TimerHandler {
 public:
  ResendTimer(BundleManager* bm);
  virtual void expire(Event* e);
  BundleManager* bm_; /**< BundleManager. */
};

/** A queue timer.
 */
class QueueTimer : public TimerHandler {
public:
  QueueTimer(BundleManager* bm);
  virtual void expire(Event* e);
  BundleManager* bm_; /**< BundleManager. */
};

#endif // DTN_TIMERS_H
