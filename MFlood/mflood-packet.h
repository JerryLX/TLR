#ifndef __mflood_pakcet_h__
#define __mflood_packet_h__

/*MFlood protocol header macros*/
#define HDR_MFLOOD(p) ((struct hdr_mflood*) hdr_mflood::access(p))

struct hdr_mflood {
	u_int32_t seq_;			//sequence number
	
	//header access method
	static int offset_;		//required by PacketHeadManager
	inline static int& offset(){return offset_;}
	inline static hdr_mflood* access(const Packet * p){
		return (hdr_mflood*) p->access(offset_);
	}
};

#endif	/*__mflood_pakcet_h__*/