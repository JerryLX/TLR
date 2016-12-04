
global ns
set ns [new Simulator]

# Global configuration parameters
Node/SatNode set time_advance_ 0
HandoffManager/Term set elevation_mask_ 40 
HandoffManager/Term set term_handoff_int_ 10
HandoffManager/Sat set sat_handoff_int_ 10
HandoffManager/Sat set latitude_threshold_ 60
HandoffManager/Sat set longitude_threshold_ 8
HandoffManager set handoff_randomization_ true
SatRouteObject set metric_delay_ true
# Set this to false if opt(wiredRouting) == ON below
SatRouteObject set data_driven_computation_ true
# "ns-random 0" sets seed heuristically; other integers are deterministic
ns-random 1
Agent set ttl_ 32; # Should be > than max diameter in network

global opt
set opt(chan)           Channel/Sat
set opt(bw_down)        1.5Mb; # Downlink bandwidth (satellite to ground)
set opt(bw_up)          1.5Mb; # Uplink bandwidth
set opt(bw_isl)         155Mb
set opt(phy)            Phy/Sat
set opt(mac)            Mac/Sat
set opt(ifq)            Queue/DropTail
set opt(qlim)           50
set opt(ll)             LL/Sat
set opt(wiredRouting)	OFF

set opt(alt)            1375; # Polar satellite altitude (Iridium)
set opt(inc)            84.7; # Orbit inclination w.r.t. equator

# XXX Tracing enabling must precede link creation !
# and satellite classifiers, if tracing is to work
set outfile [open out.tr w]
$ns trace-all $outfile

# Configure satellite nodes 
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

# Nodes n(100) - n(1223) are satellite nodes
source sat-teledesic-nodes.tcl

# configure the ISLs
source sat-teledesic-links.tcl

# Set up terminals
$ns node-config -satNodeType terminal
set n100 [$ns node]
$n100 set-position 37.9 -122.3; # Berkeley
set n101 [$ns node]
$n101 set-position 42.3 -71.1; # Boston

# Add GSL links
# It doesn't matter what the sat node is (handoff algorithm will reset it)
$n100 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
  $opt(phy) [$n(100) set downlink_] [$n(100) set uplink_]
$n101 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
  $opt(phy) [$n(100) set downlink_] [$n(100) set uplink_]

# Trace all queues
$ns trace-all-satlinks $outfile

# Attach agents
set udp0 [new Agent/UDP]
$ns attach-agent $n100 $udp0
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
$cbr0 set interval_ 60

set null0 [new Agent/Null]
$ns attach-agent $n101 $null0

$ns connect $udp0 $null0
$ns at 1.0 "$cbr0 start"

# We're using a centralized routing genie-- create and start it here
set satrouteobject_ [new SatRouteObject]
$satrouteobject_ suppress_initial_computation 
$ns at 0.5 "$satrouteobject_ compute_routes"; # anytime before data is sent

$ns at 86400.0 "finish" ; # one earth rotation 

proc finish {} {
	global ns outfile 
	$ns flush-trace
	close $outfile

	exit 0
}

$ns run

