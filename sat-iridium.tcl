
global ns
set ns [new Simulator]

# Global configuration parameters 
#debug 1
HandoffManager/Term set elevation_mask_ 8.2
HandoffManager/Term set term_handoff_int_ 3
HandoffManager/Sat set sat_handoff_int_ 3
HandoffManager/Sat set latitude_threshold_ 60 
HandoffManager/Sat set longitude_threshold_ 10
HandoffManager set handoff_randomization_ false
StateCheckManager set sat_statecheck_int_ 0.006
SatRouteObject set metric_delay_ true
# Set this to false if opt(wiredRouting) == ON below
SatRouteObject set data_driven_computation_ false
# "ns-random 0" sets seed heuristically; other integers are deterministic
ns-random 1
Agent set ttl_ 32; # Should be > than max diameter in network

# One plane of Iridium-like satellites

global opt
set opt(chan)           Channel/Sat
set opt(bw_down)        25Mb; # Downlink bandwidth (satellite to ground)  
set opt(bw_up)          25Mb; # Uplink bandwidth
set opt(bw_isl)         25Mb
set opt(phy)            Phy/Sat
set opt(mac)            Mac/Sat
set opt(ifq)            Queue/DropTail
set opt(qlim)           75
set opt(ll)             LL/Sat
set opt(wiredRouting) 	OFF

set opt(alt)            780; # Polar satellite altitude (Iridium)
set opt(inc)            86.4; # Orbit inclination w.r.t. equator

# XXX This tracing enabling must precede link and node creation
set outfile [open out.tr w]
$ns trace-all $outfile

# Create the satellite nodes
# Nodes 0-99 are satellite nodes; 100 and higher are earth terminals

$ns node-config -satNodeType polar \
		-llType $opt(ll) \
		-ifqType $opt(ifq) \
		-ifqLen $opt(qlim) \
		-macType $opt(mac) \
		-phyType $opt(phy) \
		-channelType $opt(chan) \
		-downlinkBW $opt(bw_down) \
		-wiredRouting $opt(wiredRouting) 

set alt $opt(alt)
set inc $opt(inc)

source sat-iridium-nodes.tcl

# configure the ISLs
source sat-iridium-links.tcl

## Set up probe terrestrial nodes
#$ns node-config -satNodeType terminal
#set n100 [$ns node]
#$n100 set-position 40.7 -74.0; # NewYork,NA
#set n101 [$ns node]
#$n101 set-position 34.5 121.4; # ShangHai,ASIA 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n100 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n101 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp0 [new Agent/UDP]
#$ns attach-agent $n100 $udp0
#set cbr0 [new Application/Traffic/CBR]
#$cbr0 attach-agent $udp0
#$cbr0 set packetSize_ 1000
#$cbr0 set interval_ 0.5
#set null0 [new Agent/Null]
#$ns attach-agent $n101 $null0
#$ns connect $udp0 $null0
#$ns at 0.5 "$cbr0 start"
#############################################
#$ns node-config -satNodeType terminal
#set n102 [$ns node]
#$n102 set-position 35.4 139.5; # Tokyo,ASIA
#set n103 [$ns node]
#$n103 set-position 51.3 0.1; # London,EUR 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n102 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n103 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp1 [new Agent/UDP]
#$ns attach-agent $n102 $udp1
#set cbr1 [new Application/Traffic/CBR]
#$cbr1 attach-agent $udp1
#$cbr1 set packetSize_ 1000
#$cbr1 set interval_ 0.5
#set null1 [new Agent/Null]
#$ns attach-agent $n103 $null1
#$ns connect $udp1 $null1
#$ns at 0.5 "$cbr1 start"
###########################################
#$ns node-config -satNodeType terminal
#set n104 [$ns node]
#$n104 set-position 48.5 2.2; # Paris,EUR
#set n105 [$ns node]
#$n105 set-position -26.2 28.0; # Johannesburg,AFR 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n104 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n105 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp2 [new Agent/UDP]
#$ns attach-agent $n104 $udp2
#set cbr2 [new Application/Traffic/CBR]
#$cbr2 attach-agent $udp2
#$cbr2 set packetSize_ 1000
#$cbr2 set interval_ 0.5
#set null2 [new Agent/Null]
#$ns attach-agent $n105 $null2
#$ns connect $udp2 $null2
#$ns at 0.5 "$cbr2 start"
###########################################
#$ns node-config -satNodeType terminal
#set n106 [$ns node]
#$n106 set-position 30.0 31.2; # Cairo,AFR
#set n107 [$ns node]
#$n107 set-position -32.0 115.8; # Perth,OCEAN 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n106 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n107 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp3 [new Agent/UDP]
#$ns attach-agent $n106 $udp3
#set cbr3 [new Application/Traffic/CBR]
#$cbr3 attach-agent $udp3
#$cbr3 set packetSize_ 1000
#$cbr3 set interval_ 0.5
#set null3 [new Agent/Null]
#$ns attach-agent $n107 $null3
#$ns connect $udp3 $null3
#$ns at 0.5 "$cbr3 start"
##########################################
#$ns node-config -satNodeType terminal
#set n108 [$ns node]
#$n108 set-position -33.5 151.1; # Sydney,OCEAN
#set n109 [$ns node]
#$n109 set-position -34.4 -58.3; # Buenos Aires,SA 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n108 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n109 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp4 [new Agent/UDP]
#$ns attach-agent $n108 $udp4
#set cbr4 [new Application/Traffic/CBR]
#$cbr4 attach-agent $udp4
#$cbr4 set packetSize_ 1000
#$cbr4 set interval_ 0.5
#set null4 [new Agent/Null]
#$ns attach-agent $n109 $null4
#$ns connect $udp4 $null4
#$ns at 0.5 "$cbr4 start"
#########################################
#$ns node-config -satNodeType terminal
#set n110 [$ns node]
#$n110 set-position -23.3 -46.4; # Sao Paulo,SA
#set n111 [$ns node]
#$n111 set-position 34.0 -118.2; # Los Angeles,NA 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n110 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n111 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp5 [new Agent/UDP]
#$ns attach-agent $n110 $udp5
#set cbr5 [new Application/Traffic/CBR]
#$cbr5 attach-agent $udp5
#$cbr5 set packetSize_ 1000
#$cbr5 set interval_ 0.5
#set null5 [new Agent/Null]
#$ns attach-agent $n111 $null5
#$ns connect $udp5 $null5
#$ns at 0.5 "$cbr5 start"
#
#
#$ns node-config -satNodeType terminal
#set n110 [$ns node]
#$n110 set-position -23.3 -46.4; # Sao Paulo,SA
#set n111 [$ns node]
#$n111 set-position 34.0 -118.2; # Los Angeles,NA 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n110 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n111 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp5 [new Agent/UDP]
#$ns attach-agent $n110 $udp5
#set cbr5 [new Application/Traffic/CBR]
#$cbr5 attach-agent $udp5
#$cbr5 set packetSize_ 1000
#$cbr5 set interval_ 0.5
#set null5 [new Agent/Null]
#$ns attach-agent $n111 $null5
#$ns connect $udp5 $null5
#$ns at 0.5 "$cbr5 start"
#


# Trace all queues
$ns trace-all-satlinks $outfile
# Attach agents
set udp0 [new Agent/UDP]
$ns attach-agent $n25 $udp0
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
$cbr0 set packetSize_ 1000
$cbr0 set rate_ 1Mb
#$cbr0 set interval_ 0.5
set null0 [new Agent/Null]
$ns attach-agent $n46 $null0
$ns connect $udp0 $null0
$ns at 0.5 "$cbr0 start"

## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp6 [new Agent/UDP]
#$ns attach-agent $n15 $udp6
#set cbr6 [new Application/Traffic/CBR]
#$cbr6 attach-agent $udp6
#$cbr6 set packetSize_ 1000
#$cbr6 set rate_ 13Mb
##$cbr6 set interval_ 0.5
#set null6 [new Agent/Null]
#$ns attach-agent $n46 $null6
#$ns connect $udp6 $null6
#$ns at 0.5 "$cbr6 start"
#
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp7 [new Agent/UDP]
#$ns attach-agent $n16 $udp7
#set cbr7 [new Application/Traffic/CBR]
#$cbr7 attach-agent $udp7
#$cbr7 set packetSize_ 1000
#$cbr7 set rate_ 13Mb
##$cbr7 set interval_ 0.5
#set null7 [new Agent/Null]
#$ns attach-agent $n46 $null7
#$ns connect $udp7 $null7
#$ns at 0.5 "$cbr7 start"
#
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp8 [new Agent/UDP]
#$ns attach-agent $n31 $udp8
#set cbr8 [new Application/Traffic/CBR]
#$cbr8 attach-agent $udp8
#$cbr8 set packetSize_ 1000
#$cbr8 set rate_ 13Mb
##$cbr8 set interval_ 0.5
#set null8 [new Agent/Null]
#$ns attach-agent $n46 $null8
#$ns connect $udp8 $null8
#$ns at 0.5 "$cbr8 start"
#
#$ns node-config -satNodeType terminal
#set n110 [$ns node]
#$n110 set-position -15 30; 
#set n111 [$ns node]
#$n111 set-position 45 90; 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n110 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n111 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp5 [new Agent/UDP]
#$ns attach-agent $n110 $udp5
#set cbr5 [new Application/Traffic/CBR]
#$cbr5 attach-agent $udp5
#$cbr5 set packetSize_ 1000
#$cbr5 set rate_ 13Mb
##$cbr5 set interval_ 0.5
#set null5 [new Agent/Null]
#$ns attach-agent $n111 $null5
#$ns connect $udp5 $null5
#$ns at 0.5 "$cbr5 start"
#
#$ns node-config -satNodeType terminal
#set n112 [$ns node]
#$n112 set-position 15 31; 
#set n113 [$ns node]
#$n113 set-position 46 91; 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n112 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n113 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp6 [new Agent/UDP]
#$ns attach-agent $n112 $udp6
#set cbr6 [new Application/Traffic/CBR]
#$cbr6 attach-agent $udp6
#$cbr6 set packetSize_ 1000
#$cbr6 set rate_ 13Mb
##$cbr6 set interval_ 0.5
#set null6 [new Agent/Null]
#$ns attach-agent $n113 $null6
#$ns connect $udp6 $null6
#$ns at 0.51 "$cbr6 start"
#
#$ns node-config -satNodeType terminal
#set n114 [$ns node]
#$n114 set-position 45 30; 
#set n115 [$ns node]
#$n115 set-position 40 90; 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n114 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n115 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp7 [new Agent/UDP]
#$ns attach-agent $n114 $udp7
#set cbr7 [new Application/Traffic/CBR]
#$cbr7 attach-agent $udp7
#$cbr7 set packetSize_ 1000
#$cbr7 set rate_ 13Mb
##$cbr7 set interval_ 0.5
#set null7 [new Agent/Null]
#$ns attach-agent $n115 $null7
#$ns connect $udp7 $null7
#$ns at 0.52 "$cbr7 start"
#
#$ns node-config -satNodeType terminal
#set n116 [$ns node]
#$n116 set-position 30 60; 
#set n117 [$ns node]
#$n117 set-position 40 91; 
## Add GSL links
## It doesn't matter what the sat node is (handoff algorithm will reset it)
#$n116 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n117 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#  $opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
## Attach agents
#set udp8 [new Agent/UDP]
#$ns attach-agent $n116 $udp8
#set cbr8 [new Application/Traffic/CBR]
#$cbr8 attach-agent $udp8
#$cbr8 set packetSize_ 1000
#$cbr8 set rate_ 13Mb
##$cbr8 set interval_ 0.5
#set null8 [new Agent/Null]
#$ns attach-agent $n117 $null8
#$ns connect $udp8 $null8
#$ns at 0.53 "$cbr8 start"
#
##Using some background traffic flow
source sat-iridium-bg.tcl
#
# We're using a centralized routing genie-- create and start it here
#debug 1
set satrouteobject_ [new SatRouteObject]
$satrouteobject_ compute_routes

$ns at 20.51 "finish" ; # one earth rotation 

proc finish {} {
	global ns outfile 
	$ns flush-trace
	close $outfile

	exit 0
}

$ns run

