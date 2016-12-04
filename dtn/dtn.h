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

/** \file dtn.h  DTN Agent. 
*/

#ifndef ns_dtn_h
#define ns_dtn_h

#include "agent.h"
#include "packet.h"

#include "routes.h"
#include "bundlemanager.h"
#include "registration.h"

/** Bundle specification version. */
#define BDL_VERSION 0x03

/** Main class for DTN */
class DTNAgent : public Agent {
public:
  DTNAgent();

  virtual int command(int argc, const char*const* argv);
  virtual void recv(Packet*, Handler*);
  Packet* DTNAgent :: newpacket(int size);
  void sendPacket(Packet* pkt);
  virtual void sendmsg(int nbytes, const char* flags=NULL);
  int custodian(){return custodian_;}  /**< Accepting custody. */
  double retransmit(){return retransmit_;} /**< Retransmission interval. */

 private:
  Routes* routes_;      /**< The routes list.                              */
  BundleManager* bm_;   /**< The bundlemanager.                            */
  Registration* reg_;   /**< Registraton handler.                          */
  char* src_;           /**< Application bundle source endpoint id.        */
  char* dest_;          /**< Application bundle destination endpoint id.   */
  char* rpt_to_;        /**< Application bundle report to endpoint id.     */
  char* cos_;           /**< Application bundle priority.                  */
  char* options_;       /**< Application bundle options.                   */
  char* lifespan_;      /**< Application bundle lifespan.                  */
  int custodian_;       /**< Accepting custody.                            */
  double retransmit_;   /**< Retransmission interval.                      */
};

#endif // ns_dtn_h
