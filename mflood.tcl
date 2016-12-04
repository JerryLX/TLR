#======================================================
#��������
#======================================================
set val(ifqlen)			50							;#IFQ���е�����
set val(nn)				50							;#�����еĽڵ���
set val(rp)				MFlood						;#·��Э��
set val(chan)			Channel/WirelessChannel		;#���������ŵ�
set val(prop)			Propagation/TwoRayGround	;#���ߵ粨�Ĵ�����ʽ
set val(netif)			Phy/WirelessPhy				;#���������
set val(mac)			Mac/802_11					;#MAC�����802.11
set val(ifq)			Queue/DropTail/PriQueue		;#IFQ����PriQueue
set val(ll)				LL							;#ll�����LL
set val(ant)			Antenna/OmniAntenna			;#���߷�ʽ��ȫ��λ����
set val(stop)			40							;#����ʱ��

#======================================================
#��Ҫ���򲿷�
#======================================================
#ns-random	0										

#��ʼ��ȫ�ֱ���
set ns_ [new Simulator]
set tracefd [open mflood.tr w]						;#trace����ļ�Ϊmflood.tr
$ns_ trace-all $tracefd
#set namtrace [open mflood.nam w]
#set god_ [create-god $val(nn)]
#$ns_ namtrace-all-wireless $namtrace 1200 1200
#��������
set topo [new Topography]
$topo load_flatgrid 1200 1200						;#������СΪ1000*500

set god_ [create-god $val(nn)]
#���������ŵ�
set channel [new Channel/WirelessChannel]
#���߽ڵ�����ã�������ǰ�涨��Ĳ���
	$ns_ node-config -adhocRouting  $val(rp)		\
					 -llType 	    $val(ll)		\
					 -macType		$val(mac)		\
					 -ifqType		$val(ifq)		\
					 -ifqLen		$val(ifqlen)	\
					 -antType		$val(ant)		\
					 -propType		$val(prop)		\
					 -phyType		$val(netif)		\
					 -channel		$channel		\
					 -topoInstance	$topo			\
					 -agentTrace	ON				\
					 -routerTrace	ON				\
					 -macTrace		OFF				\
					 -movementTrace	OFF				
					 
for {set i 0} {$i < $val(nn)} {incr i} {
	set node_($i) [$ns_ node] 
	$node_($i) random-motion 0 
	$ns_ initial_node_pos $node_($i) 20
}

#**********************�����趨***************************
#��ʼ��3���ڵ�����꣬Ҳͬʱȷ��������
# $node_(0) set X_ 100.0
# $node_(0) set Y_ 200.0
# $node_(0) set Z_ 0.0

# $node_(1) set X_ 250.0
# $node_(1) set Y_ 200.0
# $node_(1) set Z_ 0.0

# $node_(2) set X_ 400.0
# $node_(2) set Y_ 200.0
# $node_(2) set Z_ 0.0
source "scene-20n-0p-40M-40t-1200-1200"

#**********************�������趨*************************
#����UDP��
 set udp_(0) [new Agent/UDP]
 $ns_ attach-agent $node_(0) $udp_(0)
#����UDP���Ľ���Agent
 set null_(0) [new Agent/Null]
 $ns_ attach-agent $node_(2) $null_(0)
#����UDP�������Ľ�����
 $ns_ connect $udp_(0) $null_(0)
#����CBR��������ƽ���������͸�UDP
 set cbr_(0) [new Application/Traffic/CBR]
 $cbr_(0) set packetSize_ 512	;#ÿ�����ݰ���СΪ512Byte
 $cbr_(0) set interval_ 4.0		;#ÿ4s����1����
 $cbr_(0) set random_ 1
 $cbr_(0) set maxpkts_ 1000		;#��෢��1000����
 $cbr_(0) attach-agent $udp_(0)	;#��udp(0)������
 $ns_ at 10.0 "$cbr_(0) start"	;#�ڵ�10s����CBR��
#source "cbr-50n-30c-1p"

#����ÿ���ڵ�ʲôʱ��NS���н���
for {set i 0} {$i < $val(nn)} {incr i} {
$ns_ at $val(stop).0 "$node_($i) reset";
}
$ns_ at $val(stop).0 "stop"
$ns_ at $val(stop).01 "puts \"NS EXITING...\" ; $ns_ halt"

proc stop {} {
	global ns_ tracefd
	$ns_ flush-trace
	close $tracefd
}

puts "Starting Simulation..."
$ns_ run

									
