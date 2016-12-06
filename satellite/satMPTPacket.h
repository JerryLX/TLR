#ifndef __sat_MPT_Packet_h__
#define __sat_MPT_Packet_h__

#define MAXHOPS 64
#define HDR_SATMPT(p) ((struct hdr_satMPT*) hdr_satMPT::access(p))

struct hdr_satMPT {
	//u_int8_t split_num ;
	u_int8_t important;
	u_int16_t route[MAXHOPS];
	u_int16_t routeLen;

	//header access method
	static int offset_;		//required by PacketHeaderManager
	inline static int& offset() {return offset_;}
	inline static hdr_satMPT* access(const Packet* p){
		return (hdr_satMPT*) p->access(offset_);
	}

	int emergeInRoute(int addr)
	{
		for (int i =0;i<routeLen;i++) {
			if (route[i] == addr)
				return i;
		}
		return -1;
	}

	int insertIntoRoute(int addr)
	{
		if (routeLen == MAXHOPS)
			return -1;
		else {
			route[routeLen] = addr;
			routeLen++;
			return routeLen-1;
		}
	}

	void resetRoute()
	{
		for (int i =0;i<routeLen;i++)
		{
			route[i] = 0;
		}
		routeLen = 0;
	}
};
#endif /*__sat_MPT_Packet_h__*/
