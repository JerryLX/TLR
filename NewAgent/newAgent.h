#ifndef ns_newAgent_h 
#define ns_newAgent_h 

#include "agent.h" 
#include "tclcl.h" 
#include "packet.h" 
#include "address.h" 
#include "ip.h" 
#include "node.h"
#include "stdlib.h"
#include "string.h"

struct hdr_newAgent {
	char ret;        
	int seq;
    //char* path[20];//the path through which the packet should go through
	char path[20][10];
	int length;
	int pNode;//The present node in the path
	int nNode;//The next node in the path
	// Header access methods
	static int offset_; // required by PacketHeaderManager
	inline static int& offset() { return offset_; }
	inline static hdr_newAgent* access(const Packet* p) {
	return (hdr_newAgent*) p->access(offset_);
	}
};

class NewAgent : public Agent {
public:
	NewAgent();
	int seq;   
	//char* path[20];
	virtual int command(int argc, const char*const* argv);
	virtual void recv(Packet*, Handler*);
	//void addPath();
	int length;
	char path[20][10];
};

#endif //ns_newAgent_h