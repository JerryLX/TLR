#Create a simulator object
set ns [new Simulator]

#Open a trace file
set tracefd [open out.tr w]
$ns trace-all $tracefd
set nf [open out.nam w]
$ns namtrace-all $nf

#Define a 'finish' procedure
proc finish {} {
	global ns tracefd nf
	$ns flush-trace
	close $tracefd
	close $nf
	exec nam out.nam &
	exit 0
}

#Create three nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]

#Connect the nodes with two links
$ns duplex-link $n0 $n1 1Mb 10ms DropTail
$ns duplex-link $n1 $n2 1Mb 10ms DropTail
$ns duplex-link $n2 $n4 1Mb 10ms DropTail
$ns duplex-link $n0 $n3 1Mb 10ms DropTail
$ns duplex-link $n3 $n4 1Mb 10ms DropTail

#Create two agents and attach them to the nodes n0 and n4
set p0 [new Agent/NewAgent]
$ns attach-agent $n0 $p0
set p1 [new Agent/NewAgent]
$ns attach-agent $n1 $p1
set p2 [new Agent/NewAgent]
$ns attach-agent $n2 $p2
set p3 [new Agent/NewAgent]
$ns attach-agent $n3 $p3
set p4 [new Agent/NewAgent]
$ns attach-agent $n4 $p4

#set a path
$ns at 0.0 "$p4 addpath $p4 $p3 $p0"
#Send first packet
$ns at 0.2 "$p4 send"
#change a path
$ns at 0.4 "$p4 addpath $p4 $p2 $p1 $p0"
#Send second packet
$ns at 0.6 "$p4 send"

$ns at 1.0 "finish"

#Run the simulation
$ns run