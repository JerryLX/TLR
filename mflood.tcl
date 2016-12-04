#======================================================
#参数定义
#======================================================
set val(ifqlen)			50							;#IFQ队列的容量
set val(nn)				50							;#场景中的节点数
set val(rp)				MFlood						;#路由协议
set val(chan)			Channel/WirelessChannel		;#采用无线信道
set val(prop)			Propagation/TwoRayGround	;#无线电波的传播方式
set val(netif)			Phy/WirelessPhy				;#无线物理层
set val(mac)			Mac/802_11					;#MAC层采用802.11
set val(ifq)			Queue/DropTail/PriQueue		;#IFQ采用PriQueue
set val(ll)				LL							;#ll层采用LL
set val(ant)			Antenna/OmniAntenna			;#天线方式，全方位天线
set val(stop)			40							;#运行时间

#======================================================
#主要程序部分
#======================================================
#ns-random	0										

#初始化全局变量
set ns_ [new Simulator]
set tracefd [open mflood.tr w]						;#trace输出文件为mflood.tr
$ns_ trace-all $tracefd
#set namtrace [open mflood.nam w]
#set god_ [create-god $val(nn)]
#$ns_ namtrace-all-wireless $namtrace 1200 1200
#定义拓扑
set topo [new Topography]
$topo load_flatgrid 1200 1200						;#场景大小为1000*500

set god_ [create-god $val(nn)]
#创建无线信道
set channel [new Channel/WirelessChannel]
#无线节点的配置，引用了前面定义的参数
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

#**********************场景设定***************************
#初始化3个节点的坐标，也同时确定了拓扑
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

#**********************数据流设定*************************
#创建UDP流
 set udp_(0) [new Agent/UDP]
 $ns_ attach-agent $node_(0) $udp_(0)
#创建UDP流的接收Agent
 set null_(0) [new Agent/Null]
 $ns_ attach-agent $node_(2) $null_(0)
#连接UDP流和它的接受者
 $ns_ connect $udp_(0) $null_(0)
#创建CBR流，产生平稳数据流送给UDP
 set cbr_(0) [new Application/Traffic/CBR]
 $cbr_(0) set packetSize_ 512	;#每个数据包大小为512Byte
 $cbr_(0) set interval_ 4.0		;#每4s发送1个包
 $cbr_(0) set random_ 1
 $cbr_(0) set maxpkts_ 1000		;#最多发送1000个包
 $cbr_(0) attach-agent $udp_(0)	;#与udp(0)连接上
 $ns_ at 10.0 "$cbr_(0) start"	;#在第10s启动CBR流
#source "cbr-50n-30c-1p"

#告诉每个节点什么时候NS运行结束
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

									
