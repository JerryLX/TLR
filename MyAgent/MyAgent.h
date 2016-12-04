#ifndef ns_MyAgent_h
#define ns_MyAgent_h
#include "agent.h"

class MyAgent : public Agent{
public:
	MyAgent();
protected:
	int command(int argc,const char*const* argv);
private:
	int my_var1;
	double my_var2;
	void myPriFunc(void);
};
#endif //ns_MyAgent_h

