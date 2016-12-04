if {![info exists ns]} {
	puts "Error:  sat-iridium-backgrounds.tcl is a supporting script for the "			
	puts "        sat-iridium.tcl script-- run 'sat-iridium.tcl' instead"			
	exit
}

$ns node-config -satNodeType terminal

#Background: 200 to 201
set n200 [$ns node]
$n200 set-position 57.4 -115.3;
set n201 [$ns node]
$n201 set-position 20.3 -108.9;
#Add GSL links
$n200 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n201 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp1 [new Agent/UDP]
$ns attach-agent $n200 $udp1
set pareto1 [new Application/Traffic/Pareto]
$pareto1 attach-agent $udp1
$pareto1 set packetSize_ 1000
$pareto1 set rate_ 1000Kb
set null1 [new Agent/Null]
$ns attach-agent $n201 $null1
$ns connect $udp1 $null1
$ns at 0.06 "$pareto1 start"

#Background: 202 to 203
set n202 [$ns node]
$n202 set-position 31.2 -79.2;
set n203 [$ns node]
$n203 set-position 45.7 -87.2;
#Add GSL links
$n202 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n203 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp2 [new Agent/UDP]
$ns attach-agent $n202 $udp2
set pareto2 [new Application/Traffic/Pareto]
$pareto2 attach-agent $udp2
$pareto2 set packetSize_ 1000
$pareto2 set rate_ 1000Kb
set null2 [new Agent/Null]
$ns attach-agent $n203 $null2
$ns connect $udp2 $null2
$ns at 0.55 "$pareto2 start"

#Background: 204 to 205
set n204 [$ns node]
$n204 set-position 53.1 -89.4;
set n205 [$ns node]
$n205 set-position 29.4 -55.2;
#Add GSL links
$n204 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n205 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp3 [new Agent/UDP]
$ns attach-agent $n204 $udp3
set pareto3 [new Application/Traffic/Pareto]
$pareto3 attach-agent $udp3
$pareto3 set packetSize_ 1000
$pareto3 set rate_ 1000Kb
set null3 [new Agent/Null]
$ns attach-agent $n205 $null3
$ns connect $udp3 $null3
$ns at 0.48 "$pareto3 start"

#Background: 206 to 207
set n206 [$ns node]
$n206 set-position 49.8 -83.1;
set n207 [$ns node]
$n207 set-position 51.7 -82.5;
#Add GSL links
$n206 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n207 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp4 [new Agent/UDP]
$ns attach-agent $n206 $udp4
set pareto4 [new Application/Traffic/Pareto]
$pareto4 attach-agent $udp4
$pareto4 set packetSize_ 1000
$pareto4 set rate_ 1000Kb
set null4 [new Agent/Null]
$ns attach-agent $n207 $null4
$ns connect $udp4 $null4
$ns at 0.58 "$pareto4 start"

#Background: 208 to 209
set n208 [$ns node]
$n208 set-position 43.4 -117.5;
set n209 [$ns node]
$n209 set-position 53.6 -84.8;
#Add GSL links
$n208 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n209 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp5 [new Agent/UDP]
$ns attach-agent $n208 $udp5
set pareto5 [new Application/Traffic/Pareto]
$pareto5 attach-agent $udp5
$pareto5 set packetSize_ 1000
$pareto5 set rate_ 1000Kb
set null5 [new Agent/Null]
$ns attach-agent $n209 $null5
$ns connect $udp5 $null5
$ns at 0.79 "$pareto5 start"

#Background: 210 to 211
set n210 [$ns node]
$n210 set-position 56.0 -88.7;
set n211 [$ns node]
$n211 set-position 32.6 -59.6;
#Add GSL links
$n210 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n211 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp6 [new Agent/UDP]
$ns attach-agent $n210 $udp6
set pareto6 [new Application/Traffic/Pareto]
$pareto6 attach-agent $udp6
$pareto6 set packetSize_ 1000
$pareto6 set rate_ 1000Kb
set null6 [new Agent/Null]
$ns attach-agent $n211 $null6
$ns connect $udp6 $null6
$ns at 0.88 "$pareto6 start"
#
##Background: 212 to 213
#set n212 [$ns node]
#$n212 set-position 55.1 -102.2;
#set n213 [$ns node]
#$n213 set-position 38.6 -104.3;
##Add GSL links
#$n212 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n213 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp7 [new Agent/UDP]
#$ns attach-agent $n212 $udp7
#set pareto7 [new Application/Traffic/Pareto]
#$pareto7 attach-agent $udp7
#$pareto7 set packetSize_ 1000
#$pareto7 set rate_ 1000Kb
#set null7 [new Agent/Null]
#$ns attach-agent $n213 $null7
#$ns connect $udp7 $null7
#$ns at 0.89 "$pareto7 start"
#
##Background: 214 to 215
#set n214 [$ns node]
#$n214 set-position 29.2 -93.1;
#set n215 [$ns node]
#$n215 set-position 54.7 -104.9;
##Add GSL links
#$n214 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n215 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp8 [new Agent/UDP]
#$ns attach-agent $n214 $udp8
#set pareto8 [new Application/Traffic/Pareto]
#$pareto8 attach-agent $udp8
#$pareto8 set packetSize_ 1000
#$pareto8 set rate_ 1000Kb
#set null8 [new Agent/Null]
#$ns attach-agent $n215 $null8
#$ns connect $udp8 $null8
#$ns at 0.98 "$pareto8 start"
#
##Background: 216 to 217
#set n216 [$ns node]
#$n216 set-position 45.5 -111.8;
#set n217 [$ns node]
#$n217 set-position 35.4 -104.9;
##Add GSL links
#$n216 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n217 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp9 [new Agent/UDP]
#$ns attach-agent $n216 $udp9
#set pareto9 [new Application/Traffic/Pareto]
#$pareto9 attach-agent $udp9
#$pareto9 set packetSize_ 1000
#$pareto9 set rate_ 1000Kb
#set null9 [new Agent/Null]
#$ns attach-agent $n217 $null9
#$ns connect $udp9 $null9
#$ns at 0.82 "$pareto9 start"
#
##Background: 218 to 219
#set n218 [$ns node]
#$n218 set-position 40.3 -79.9;
#set n219 [$ns node]
#$n219 set-position 45.3 -127.8;
##Add GSL links
#$n218 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n219 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp10 [new Agent/UDP]
#$ns attach-agent $n218 $udp10
#set pareto10 [new Application/Traffic/Pareto]
#$pareto10 attach-agent $udp10
#$pareto10 set packetSize_ 1000
#$pareto10 set rate_ 1000Kb
#set null10 [new Agent/Null]
#$ns attach-agent $n219 $null10
#$ns connect $udp10 $null10
#$ns at 0.76 "$pareto10 start"
#
##Background: 220 to 221
#set n220 [$ns node]
#$n220 set-position 51.1 -109.1;
#set n221 [$ns node]
#$n221 set-position 20.3 -75.1;
##Add GSL links
#$n220 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n221 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp11 [new Agent/UDP]
#$ns attach-agent $n220 $udp11
#set pareto11 [new Application/Traffic/Pareto]
#$pareto11 attach-agent $udp11
#$pareto11 set packetSize_ 1000
#$pareto11 set rate_ 1000Kb
#set null11 [new Agent/Null]
#$ns attach-agent $n221 $null11
#$ns connect $udp11 $null11
#$ns at 0.61 "$pareto11 start"
#
##Background: 222 to 223
#set n222 [$ns node]
#$n222 set-position 33.4 -123.8;
#set n223 [$ns node]
#$n223 set-position 57.6 -113.8;
##Add GSL links
#$n222 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n223 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp12 [new Agent/UDP]
#$ns attach-agent $n222 $udp12
#set pareto12 [new Application/Traffic/Pareto]
#$pareto12 attach-agent $udp12
#$pareto12 set packetSize_ 1000
#$pareto12 set rate_ 1000Kb
#set null12 [new Agent/Null]
#$ns attach-agent $n223 $null12
#$ns connect $udp12 $null12
#$ns at 0.66 "$pareto12 start"
#
##Background: 224 to 225
#set n224 [$ns node]
#$n224 set-position 56.4 -78.6;
#set n225 [$ns node]
#$n225 set-position 59.4 -84.8;
##Add GSL links
#$n224 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n225 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp13 [new Agent/UDP]
#$ns attach-agent $n224 $udp13
#set pareto13 [new Application/Traffic/Pareto]
#$pareto13 attach-agent $udp13
#$pareto13 set packetSize_ 1000
#$pareto13 set rate_ 1000Kb
#set null13 [new Agent/Null]
#$ns attach-agent $n225 $null13
#$ns connect $udp13 $null13
#$ns at 0.71 "$pareto13 start"
#
##Background: 226 to 227
#set n226 [$ns node]
#$n226 set-position 33.5 -115.6;
#set n227 [$ns node]
#$n227 set-position 29.0 -91.6;
##Add GSL links
#$n226 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n227 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp14 [new Agent/UDP]
#$ns attach-agent $n226 $udp14
#set pareto14 [new Application/Traffic/Pareto]
#$pareto14 attach-agent $udp14
#$pareto14 set packetSize_ 1000
#$pareto14 set rate_ 1000Kb
#set null14 [new Agent/Null]
#$ns attach-agent $n227 $null14
#$ns connect $udp14 $null14
#$ns at 0.95 "$pareto14 start"
#
##Background: 228 to 229
#set n228 [$ns node]
#$n228 set-position 34.0 -110.9;
#set n229 [$ns node]
#$n229 set-position 47.9 -65.5;
##Add GSL links
#$n228 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n229 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp15 [new Agent/UDP]
#$ns attach-agent $n228 $udp15
#set pareto15 [new Application/Traffic/Pareto]
#$pareto15 attach-agent $udp15
#$pareto15 set packetSize_ 1000
#$pareto15 set rate_ 1000Kb
#set null15 [new Agent/Null]
#$ns attach-agent $n229 $null15
#$ns connect $udp15 $null15
#$ns at 0.43 "$pareto15 start"
#
##Background: 230 to 231
#set n230 [$ns node]
#$n230 set-position 26.2 -130.0;
#set n231 [$ns node]
#$n231 set-position 49.4 -63.5;
##Add GSL links
#$n230 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n231 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp16 [new Agent/UDP]
#$ns attach-agent $n230 $udp16
#set pareto16 [new Application/Traffic/Pareto]
#$pareto16 attach-agent $udp16
#$pareto16 set packetSize_ 1000
#$pareto16 set rate_ 1000Kb
#set null16 [new Agent/Null]
#$ns attach-agent $n231 $null16
#$ns connect $udp16 $null16
#$ns at 0.22 "$pareto16 start"
#
##Background: 232 to 233
#set n232 [$ns node]
#$n232 set-position 32.3 -72.3;
#set n233 [$ns node]
#$n233 set-position 58.1 -87.2;
##Add GSL links
#$n232 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n233 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp17 [new Agent/UDP]
#$ns attach-agent $n232 $udp17
#set pareto17 [new Application/Traffic/Pareto]
#$pareto17 attach-agent $udp17
#$pareto17 set packetSize_ 1000
#$pareto17 set rate_ 1000Kb
#set null17 [new Agent/Null]
#$ns attach-agent $n233 $null17
#$ns connect $udp17 $null17
#$ns at 0.26 "$pareto17 start"
#
##Background: 234 to 235
#set n234 [$ns node]
#$n234 set-position 49.4 -78.5;
#set n235 [$ns node]
#$n235 set-position 33.8 -112.8;
##Add GSL links
#$n234 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n235 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp18 [new Agent/UDP]
#$ns attach-agent $n234 $udp18
#set pareto18 [new Application/Traffic/Pareto]
#$pareto18 attach-agent $udp18
#$pareto18 set packetSize_ 1000
#$pareto18 set rate_ 1000Kb
#set null18 [new Agent/Null]
#$ns attach-agent $n235 $null18
#$ns connect $udp18 $null18
#$ns at 0.77 "$pareto18 start"
#
##Background: 236 to 237
#set n236 [$ns node]
#$n236 set-position 35.6 -81.1;
#set n237 [$ns node]
#$n237 set-position 29.3 -124.8;
##Add GSL links
#$n236 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n237 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp19 [new Agent/UDP]
#$ns attach-agent $n236 $udp19
#set pareto19 [new Application/Traffic/Pareto]
#$pareto19 attach-agent $udp19
#$pareto19 set packetSize_ 1000
#$pareto19 set rate_ 1000Kb
#set null19 [new Agent/Null]
#$ns attach-agent $n237 $null19
#$ns connect $udp19 $null19
#$ns at 0.41 "$pareto19 start"
#
##Background: 238 to 239
#set n238 [$ns node]
#$n238 set-position 36.4 -116.1;
#set n239 [$ns node]
#$n239 set-position 23.6 -114.3;
##Add GSL links
#$n238 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n239 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp20 [new Agent/UDP]
#$ns attach-agent $n238 $udp20
#set pareto20 [new Application/Traffic/Pareto]
#$pareto20 attach-agent $udp20
#$pareto20 set packetSize_ 1000
#$pareto20 set rate_ 1000Kb
#set null20 [new Agent/Null]
#$ns attach-agent $n239 $null20
#$ns connect $udp20 $null20
#$ns at 0.24 "$pareto20 start"
#
##Background: 240 to 241
#set n240 [$ns node]
#$n240 set-position 28.3 -100.3;
#set n241 [$ns node]
#$n241 set-position 21.7 -58.7;
##Add GSL links
#$n240 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n241 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp21 [new Agent/UDP]
#$ns attach-agent $n240 $udp21
#set pareto21 [new Application/Traffic/Pareto]
#$pareto21 attach-agent $udp21
#$pareto21 set packetSize_ 1000
#$pareto21 set rate_ 1000Kb
#set null21 [new Agent/Null]
#$ns attach-agent $n241 $null21
#$ns connect $udp21 $null21
#$ns at 0.94 "$pareto21 start"
#
##Background: 242 to 243
#set n242 [$ns node]
#$n242 set-position 31.2 -132.5;
#set n243 [$ns node]
#$n243 set-position 44.4 -99.1;
##Add GSL links
#$n242 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n243 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp22 [new Agent/UDP]
#$ns attach-agent $n242 $udp22
#set pareto22 [new Application/Traffic/Pareto]
#$pareto22 attach-agent $udp22
#$pareto22 set packetSize_ 1000
#$pareto22 set rate_ 1000Kb
#set null22 [new Agent/Null]
#$ns attach-agent $n243 $null22
#$ns connect $udp22 $null22
#$ns at 0.40 "$pareto22 start"
#
##Background: 244 to 245
#set n244 [$ns node]
#$n244 set-position 51.9 -86.8;
#set n245 [$ns node]
#$n245 set-position 31.9 -109.8;
##Add GSL links
#$n244 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n245 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp23 [new Agent/UDP]
#$ns attach-agent $n244 $udp23
#set pareto23 [new Application/Traffic/Pareto]
#$pareto23 attach-agent $udp23
#$pareto23 set packetSize_ 1000
#$pareto23 set rate_ 1000Kb
#set null23 [new Agent/Null]
#$ns attach-agent $n245 $null23
#$ns connect $udp23 $null23
#$ns at 0.12 "$pareto23 start"
#
##Background: 246 to 247
#set n246 [$ns node]
#$n246 set-position 29.8 -120.3;
#set n247 [$ns node]
#$n247 set-position 42.9 -116.2;
##Add GSL links
#$n246 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n247 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp24 [new Agent/UDP]
#$ns attach-agent $n246 $udp24
#set pareto24 [new Application/Traffic/Pareto]
#$pareto24 attach-agent $udp24
#$pareto24 set packetSize_ 1000
#$pareto24 set rate_ 1000Kb
#set null24 [new Agent/Null]
#$ns attach-agent $n247 $null24
#$ns connect $udp24 $null24
#$ns at 0.21 "$pareto24 start"
#
##Background: 248 to 249
#set n248 [$ns node]
#$n248 set-position 40.7 -100.5;
#set n249 [$ns node]
#$n249 set-position 26.0 -65.0;
##Add GSL links
#$n248 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n249 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp25 [new Agent/UDP]
#$ns attach-agent $n248 $udp25
#set pareto25 [new Application/Traffic/Pareto]
#$pareto25 attach-agent $udp25
#$pareto25 set packetSize_ 1000
#$pareto25 set rate_ 1000Kb
#set null25 [new Agent/Null]
#$ns attach-agent $n249 $null25
#$ns connect $udp25 $null25
#$ns at 0.47 "$pareto25 start"
#
##Background: 250 to 251
#set n250 [$ns node]
#$n250 set-position 50.2 -93.3;
#set n251 [$ns node]
#$n251 set-position 43.7 -66.0;
##Add GSL links
#$n250 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n251 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp26 [new Agent/UDP]
#$ns attach-agent $n250 $udp26
#set pareto26 [new Application/Traffic/Pareto]
#$pareto26 attach-agent $udp26
#$pareto26 set packetSize_ 1000
#$pareto26 set rate_ 1000Kb
#set null26 [new Agent/Null]
#$ns attach-agent $n251 $null26
#$ns connect $udp26 $null26
#$ns at 0.24 "$pareto26 start"
#
##Background: 252 to 253
#set n252 [$ns node]
#$n252 set-position 21.3 -97.7;
#set n253 [$ns node]
#$n253 set-position 32.3 -92.0;
##Add GSL links
#$n252 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n253 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp27 [new Agent/UDP]
#$ns attach-agent $n252 $udp27
#set pareto27 [new Application/Traffic/Pareto]
#$pareto27 attach-agent $udp27
#$pareto27 set packetSize_ 1000
#$pareto27 set rate_ 1000Kb
#set null27 [new Agent/Null]
#$ns attach-agent $n253 $null27
#$ns connect $udp27 $null27
#$ns at 0.36 "$pareto27 start"
#
##Background: 254 to 255
#set n254 [$ns node]
#$n254 set-position 51.8 -120.7;
#set n255 [$ns node]
#$n255 set-position 51.3 -118.8;
##Add GSL links
#$n254 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n255 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp28 [new Agent/UDP]
#$ns attach-agent $n254 $udp28
#set pareto28 [new Application/Traffic/Pareto]
#$pareto28 attach-agent $udp28
#$pareto28 set packetSize_ 1000
#$pareto28 set rate_ 1000Kb
#set null28 [new Agent/Null]
#$ns attach-agent $n255 $null28
#$ns connect $udp28 $null28
#$ns at 0.02 "$pareto28 start"
#
##Background: 256 to 257
#set n256 [$ns node]
#$n256 set-position 40.6 -86.9;
#set n257 [$ns node]
#$n257 set-position 33.6 -102.5;
##Add GSL links
#$n256 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n257 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp29 [new Agent/UDP]
#$ns attach-agent $n256 $udp29
#set pareto29 [new Application/Traffic/Pareto]
#$pareto29 attach-agent $udp29
#$pareto29 set packetSize_ 1000
#$pareto29 set rate_ 1000Kb
#set null29 [new Agent/Null]
#$ns attach-agent $n257 $null29
#$ns connect $udp29 $null29
#$ns at 0.34 "$pareto29 start"
#
##Background: 258 to 259
#set n258 [$ns node]
#$n258 set-position 40.0 -92.7;
#set n259 [$ns node]
#$n259 set-position 23.3 -92.0;
##Add GSL links
#$n258 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n259 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp30 [new Agent/UDP]
#$ns attach-agent $n258 $udp30
#set pareto30 [new Application/Traffic/Pareto]
#$pareto30 attach-agent $udp30
#$pareto30 set packetSize_ 1000
#$pareto30 set rate_ 1000Kb
#set null30 [new Agent/Null]
#$ns attach-agent $n259 $null30
#$ns connect $udp30 $null30
#$ns at 0.64 "$pareto30 start"
#
##Background: 260 to 261
#set n260 [$ns node]
#$n260 set-position 55.4 -111.3;
#set n261 [$ns node]
#$n261 set-position -34.1 -43.3;
##Add GSL links
#$n260 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n261 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp31 [new Agent/UDP]
#$ns attach-agent $n260 $udp31
#set pareto31 [new Application/Traffic/Pareto]
#$pareto31 attach-agent $udp31
#$pareto31 set packetSize_ 1000
#$pareto31 set rate_ 1000Kb
#set null31 [new Agent/Null]
#$ns attach-agent $n261 $null31
#$ns connect $udp31 $null31
#$ns at 0.89 "$pareto31 start"
#
##Background: 262 to 263
#set n262 [$ns node]
#$n262 set-position 30.8 -108.1;
#set n263 [$ns node]
#$n263 set-position 5.6 -65.3;
##Add GSL links
#$n262 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n263 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp32 [new Agent/UDP]
#$ns attach-agent $n262 $udp32
#set pareto32 [new Application/Traffic/Pareto]
#$pareto32 attach-agent $udp32
#$pareto32 set packetSize_ 1000
#$pareto32 set rate_ 1000Kb
#set null32 [new Agent/Null]
#$ns attach-agent $n263 $null32
#$ns connect $udp32 $null32
#$ns at 0.11 "$pareto32 start"
#
##Background: 264 to 265
#set n264 [$ns node]
#$n264 set-position 48.2 -108.8;
#set n265 [$ns node]
#$n265 set-position -41.4 -44.4;
##Add GSL links
#$n264 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n265 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp33 [new Agent/UDP]
#$ns attach-agent $n264 $udp33
#set pareto33 [new Application/Traffic/Pareto]
#$pareto33 attach-agent $udp33
#$pareto33 set packetSize_ 1000
#$pareto33 set rate_ 1000Kb
#set null33 [new Agent/Null]
#$ns attach-agent $n265 $null33
#$ns connect $udp33 $null33
#$ns at 0.45 "$pareto33 start"
#
##Background: 266 to 267
#set n266 [$ns node]
#$n266 set-position 52.5 -102.6;
#set n267 [$ns node]
#$n267 set-position -41.0 -76.2;
##Add GSL links
#$n266 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n267 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp34 [new Agent/UDP]
#$ns attach-agent $n266 $udp34
#set pareto34 [new Application/Traffic/Pareto]
#$pareto34 attach-agent $udp34
#$pareto34 set packetSize_ 1000
#$pareto34 set rate_ 1000Kb
#set null34 [new Agent/Null]
#$ns attach-agent $n267 $null34
#$ns connect $udp34 $null34
#$ns at 0.86 "$pareto34 start"
#
##Background: 268 to 269
#set n268 [$ns node]
#$n268 set-position 59.4 -90.6;
#set n269 [$ns node]
#$n269 set-position -33.0 -42.0;
##Add GSL links
#$n268 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n269 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp35 [new Agent/UDP]
#$ns attach-agent $n268 $udp35
#set pareto35 [new Application/Traffic/Pareto]
#$pareto35 attach-agent $udp35
#$pareto35 set packetSize_ 1000
#$pareto35 set rate_ 1000Kb
#set null35 [new Agent/Null]
#$ns attach-agent $n269 $null35
#$ns connect $udp35 $null35
#$ns at 0.22 "$pareto35 start"
#
##Background: 270 to 271
#set n270 [$ns node]
#$n270 set-position 20.6 -66.8;
#set n271 [$ns node]
#$n271 set-position 49.7 23.9;
##Add GSL links
#$n270 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n271 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp36 [new Agent/UDP]
#$ns attach-agent $n270 $udp36
#set pareto36 [new Application/Traffic/Pareto]
#$pareto36 attach-agent $udp36
#$pareto36 set packetSize_ 1000
#$pareto36 set rate_ 1000Kb
#set null36 [new Agent/Null]
#$ns attach-agent $n271 $null36
#$ns connect $udp36 $null36
#$ns at 0.12 "$pareto36 start"
#
##Background: 272 to 273
#set n272 [$ns node]
#$n272 set-position 26.1 -100.5;
#set n273 [$ns node]
#$n273 set-position 50.1 17.0;
##Add GSL links
#$n272 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n273 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp37 [new Agent/UDP]
#$ns attach-agent $n272 $udp37
#set pareto37 [new Application/Traffic/Pareto]
#$pareto37 attach-agent $udp37
#$pareto37 set packetSize_ 1000
#$pareto37 set rate_ 1000Kb
#set null37 [new Agent/Null]
#$ns attach-agent $n273 $null37
#$ns connect $udp37 $null37
#$ns at 0.12 "$pareto37 start"
#
##Background: 274 to 275
#set n274 [$ns node]
#$n274 set-position 34.3 -111.9;
#set n275 [$ns node]
#$n275 set-position 58.3 -5.1;
##Add GSL links
#$n274 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n275 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp38 [new Agent/UDP]
#$ns attach-agent $n274 $udp38
#set pareto38 [new Application/Traffic/Pareto]
#$pareto38 attach-agent $udp38
#$pareto38 set packetSize_ 1000
#$pareto38 set rate_ 1000Kb
#set null38 [new Agent/Null]
#$ns attach-agent $n275 $null38
#$ns connect $udp38 $null38
#$ns at 0.28 "$pareto38 start"
#
##Background: 276 to 277
#set n276 [$ns node]
#$n276 set-position 39.6 -81.8;
#set n277 [$ns node]
#$n277 set-position 59.3 3.3;
##Add GSL links
#$n276 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n277 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp39 [new Agent/UDP]
#$ns attach-agent $n276 $udp39
#set pareto39 [new Application/Traffic/Pareto]
#$pareto39 attach-agent $udp39
#$pareto39 set packetSize_ 1000
#$pareto39 set rate_ 1000Kb
#set null39 [new Agent/Null]
#$ns attach-agent $n277 $null39
#$ns connect $udp39 $null39
#$ns at 0.38 "$pareto39 start"
#
##Background: 278 to 279
#set n278 [$ns node]
#$n278 set-position 38.8 -79.2;
#set n279 [$ns node]
#$n279 set-position 51.2 -7.2;
##Add GSL links
#$n278 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n279 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp40 [new Agent/UDP]
#$ns attach-agent $n278 $udp40
#set pareto40 [new Application/Traffic/Pareto]
#$pareto40 attach-agent $udp40
#$pareto40 set packetSize_ 1000
#$pareto40 set rate_ 1000Kb
#set null40 [new Agent/Null]
#$ns attach-agent $n279 $null40
#$ns connect $udp40 $null40
#$ns at 0.96 "$pareto40 start"
#
##Background: 280 to 281
#set n280 [$ns node]
#$n280 set-position 30.0 -122.8;
#set n281 [$ns node]
#$n281 set-position 39.3 -8.0;
##Add GSL links
#$n280 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n281 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp41 [new Agent/UDP]
#$ns attach-agent $n280 $udp41
#set pareto41 [new Application/Traffic/Pareto]
#$pareto41 attach-agent $udp41
#$pareto41 set packetSize_ 1000
#$pareto41 set rate_ 1000Kb
#set null41 [new Agent/Null]
#$ns attach-agent $n281 $null41
#$ns connect $udp41 $null41
#$ns at 0.04 "$pareto41 start"
#
##Background: 282 to 283
#set n282 [$ns node]
#$n282 set-position 51.5 -117.2;
#set n283 [$ns node]
#$n283 set-position 43.6 11.2;
##Add GSL links
#$n282 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n283 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp42 [new Agent/UDP]
#$ns attach-agent $n282 $udp42
#set pareto42 [new Application/Traffic/Pareto]
#$pareto42 attach-agent $udp42
#$pareto42 set packetSize_ 1000
#$pareto42 set rate_ 1000Kb
#set null42 [new Agent/Null]
#$ns attach-agent $n283 $null42
#$ns connect $udp42 $null42
#$ns at 0.17 "$pareto42 start"
#
##Background: 284 to 285
#set n284 [$ns node]
#$n284 set-position 55.1 -107.6;
#set n285 [$ns node]
#$n285 set-position -33.5 40.4;
##Add GSL links
#$n284 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n285 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp43 [new Agent/UDP]
#$ns attach-agent $n284 $udp43
#set pareto43 [new Application/Traffic/Pareto]
#$pareto43 attach-agent $udp43
#$pareto43 set packetSize_ 1000
#$pareto43 set rate_ 1000Kb
#set null43 [new Agent/Null]
#$ns attach-agent $n285 $null43
#$ns connect $udp43 $null43
#$ns at 0.96 "$pareto43 start"
#
##Background: 286 to 287
#set n286 [$ns node]
#$n286 set-position 22.7 -80.3;
#set n287 [$ns node]
#$n287 set-position 32.7 76.3;
##Add GSL links
#$n286 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n287 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp44 [new Agent/UDP]
#$ns attach-agent $n286 $udp44
#set pareto44 [new Application/Traffic/Pareto]
#$pareto44 attach-agent $udp44
#$pareto44 set packetSize_ 1000
#$pareto44 set rate_ 1000Kb
#set null44 [new Agent/Null]
#$ns attach-agent $n287 $null44
#$ns connect $udp44 $null44
#$ns at 0.97 "$pareto44 start"
#
##Background: 288 to 289
#set n288 [$ns node]
#$n288 set-position 50.8 -104.1;
#set n289 [$ns node]
#$n289 set-position 48.1 100.1;
##Add GSL links
#$n288 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n289 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp45 [new Agent/UDP]
#$ns attach-agent $n288 $udp45
#set pareto45 [new Application/Traffic/Pareto]
#$pareto45 attach-agent $udp45
#$pareto45 set packetSize_ 1000
#$pareto45 set rate_ 1000Kb
#set null45 [new Agent/Null]
#$ns attach-agent $n289 $null45
#$ns connect $udp45 $null45
#$ns at 0.42 "$pareto45 start"
#
##Background: 290 to 291
#set n290 [$ns node]
#$n290 set-position 41.9 -95.9;
#set n291 [$ns node]
#$n291 set-position 10.2 48.3;
##Add GSL links
#$n290 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n291 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp46 [new Agent/UDP]
#$ns attach-agent $n290 $udp46
#set pareto46 [new Application/Traffic/Pareto]
#$pareto46 attach-agent $udp46
#$pareto46 set packetSize_ 1000
#$pareto46 set rate_ 1000Kb
#set null46 [new Agent/Null]
#$ns attach-agent $n291 $null46
#$ns connect $udp46 $null46
#$ns at 0.19 "$pareto46 start"
#
##Background: 292 to 293
#set n292 [$ns node]
#$n292 set-position 44.9 -66.5;
#set n293 [$ns node]
#$n293 set-position 9.3 54.4;
##Add GSL links
#$n292 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n293 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp47 [new Agent/UDP]
#$ns attach-agent $n292 $udp47
#set pareto47 [new Application/Traffic/Pareto]
#$pareto47 attach-agent $udp47
#$pareto47 set packetSize_ 1000
#$pareto47 set rate_ 1000Kb
#set null47 [new Agent/Null]
#$ns attach-agent $n293 $null47
#$ns connect $udp47 $null47
#$ns at 0.58 "$pareto47 start"
#
##Background: 294 to 295
#set n294 [$ns node]
#$n294 set-position 59.7 -84.1;
#set n295 [$ns node]
#$n295 set-position 28.6 83.5;
##Add GSL links
#$n294 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n295 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp48 [new Agent/UDP]
#$ns attach-agent $n294 $udp48
#set pareto48 [new Application/Traffic/Pareto]
#$pareto48 attach-agent $udp48
#$pareto48 set packetSize_ 1000
#$pareto48 set rate_ 1000Kb
#set null48 [new Agent/Null]
#$ns attach-agent $n295 $null48
#$ns connect $udp48 $null48
#$ns at 0.73 "$pareto48 start"
#
##Background: 296 to 297
#set n296 [$ns node]
#$n296 set-position 25.4 -56.4;
#set n297 [$ns node]
#$n297 set-position -35.1 157.1;
##Add GSL links
#$n296 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n297 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp49 [new Agent/UDP]
#$ns attach-agent $n296 $udp49
#set pareto49 [new Application/Traffic/Pareto]
#$pareto49 attach-agent $udp49
#$pareto49 set packetSize_ 1000
#$pareto49 set rate_ 1000Kb
#set null49 [new Agent/Null]
#$ns attach-agent $n297 $null49
#$ns connect $udp49 $null49
#$ns at 0.43 "$pareto49 start"
#
##Background: 298 to 299
#set n298 [$ns node]
#$n298 set-position 14.6 -60.2;
#set n299 [$ns node]
#$n299 set-position 29.0 -107.5;
##Add GSL links
#$n298 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n299 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp50 [new Agent/UDP]
#$ns attach-agent $n298 $udp50
#set pareto50 [new Application/Traffic/Pareto]
#$pareto50 attach-agent $udp50
#$pareto50 set packetSize_ 1000
#$pareto50 set rate_ 1000Kb
#set null50 [new Agent/Null]
#$ns attach-agent $n299 $null50
#$ns connect $udp50 $null50
#$ns at 0.13 "$pareto50 start"
#
##Background: 300 to 301
#set n300 [$ns node]
#$n300 set-position 8.9 -71.5;
#set n301 [$ns node]
#$n301 set-position 27.5 -123.0;
##Add GSL links
#$n300 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n301 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp51 [new Agent/UDP]
#$ns attach-agent $n300 $udp51
#set pareto51 [new Application/Traffic/Pareto]
#$pareto51 attach-agent $udp51
#$pareto51 set packetSize_ 1000
#$pareto51 set rate_ 1000Kb
#set null51 [new Agent/Null]
#$ns attach-agent $n301 $null51
#$ns connect $udp51 $null51
#$ns at 0.86 "$pareto51 start"
#
##Background: 302 to 303
#set n302 [$ns node]
#$n302 set-position -18.1 -35.9;
#set n303 [$ns node]
#$n303 set-position 52.9 -92.8;
##Add GSL links
#$n302 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n303 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp52 [new Agent/UDP]
#$ns attach-agent $n302 $udp52
#set pareto52 [new Application/Traffic/Pareto]
#$pareto52 attach-agent $udp52
#$pareto52 set packetSize_ 1000
#$pareto52 set rate_ 1000Kb
#set null52 [new Agent/Null]
#$ns attach-agent $n303 $null52
#$ns connect $udp52 $null52
#$ns at 0.24 "$pareto52 start"
#
##Background: 304 to 305
#set n304 [$ns node]
#$n304 set-position -20.2 -47.9;
#set n305 [$ns node]
#$n305 set-position 56.2 -110.9;
##Add GSL links
#$n304 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n305 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp53 [new Agent/UDP]
#$ns attach-agent $n304 $udp53
#set pareto53 [new Application/Traffic/Pareto]
#$pareto53 attach-agent $udp53
#$pareto53 set packetSize_ 1000
#$pareto53 set rate_ 1000Kb
#set null53 [new Agent/Null]
#$ns attach-agent $n305 $null53
#$ns connect $udp53 $null53
#$ns at 0.65 "$pareto53 start"
#
##Background: 306 to 307
#set n306 [$ns node]
#$n306 set-position -53.0 -66.0;
#set n307 [$ns node]
#$n307 set-position 32.6 -109.4;
##Add GSL links
#$n306 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n307 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp54 [new Agent/UDP]
#$ns attach-agent $n306 $udp54
#set pareto54 [new Application/Traffic/Pareto]
#$pareto54 attach-agent $udp54
#$pareto54 set packetSize_ 1000
#$pareto54 set rate_ 1000Kb
#set null54 [new Agent/Null]
#$ns attach-agent $n307 $null54
#$ns connect $udp54 $null54
#$ns at 0.26 "$pareto54 start"
#
##Background: 308 to 309
#set n308 [$ns node]
#$n308 set-position -39.9 -43.8;
#set n309 [$ns node]
#$n309 set-position 36.4 -89.9;
##Add GSL links
#$n308 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n309 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp55 [new Agent/UDP]
#$ns attach-agent $n308 $udp55
#set pareto55 [new Application/Traffic/Pareto]
#$pareto55 attach-agent $udp55
#$pareto55 set packetSize_ 1000
#$pareto55 set rate_ 1000Kb
#set null55 [new Agent/Null]
#$ns attach-agent $n309 $null55
#$ns connect $udp55 $null55
#$ns at 0.83 "$pareto55 start"
#
##Background: 310 to 311
#set n310 [$ns node]
#$n310 set-position -44.3 -35.1;
#set n311 [$ns node]
#$n311 set-position 28.4 -115.2;
##Add GSL links
#$n310 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n311 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp56 [new Agent/UDP]
#$ns attach-agent $n310 $udp56
#set pareto56 [new Application/Traffic/Pareto]
#$pareto56 attach-agent $udp56
#$pareto56 set packetSize_ 1000
#$pareto56 set rate_ 1000Kb
#set null56 [new Agent/Null]
#$ns attach-agent $n311 $null56
#$ns connect $udp56 $null56
#$ns at 0.26 "$pareto56 start"
#
##Background: 312 to 313
#set n312 [$ns node]
#$n312 set-position -30.1 -66.3;
#set n313 [$ns node]
#$n313 set-position 26.2 -62.6;
##Add GSL links
#$n312 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n313 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp57 [new Agent/UDP]
#$ns attach-agent $n312 $udp57
#set pareto57 [new Application/Traffic/Pareto]
#$pareto57 attach-agent $udp57
#$pareto57 set packetSize_ 1000
#$pareto57 set rate_ 1000Kb
#set null57 [new Agent/Null]
#$ns attach-agent $n313 $null57
#$ns connect $udp57 $null57
#$ns at 0.58 "$pareto57 start"
#
##Background: 314 to 315
#set n314 [$ns node]
#$n314 set-position 5.0 -50.6;
#set n315 [$ns node]
#$n315 set-position 40.1 -102.0;
##Add GSL links
#$n314 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n315 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp58 [new Agent/UDP]
#$ns attach-agent $n314 $udp58
#set pareto58 [new Application/Traffic/Pareto]
#$pareto58 attach-agent $udp58
#$pareto58 set packetSize_ 1000
#$pareto58 set rate_ 1000Kb
#set null58 [new Agent/Null]
#$ns attach-agent $n315 $null58
#$ns connect $udp58 $null58
#$ns at 0.16 "$pareto58 start"
#
##Background: 316 to 317
#set n316 [$ns node]
#$n316 set-position -52.4 -72.0;
#set n317 [$ns node]
#$n317 set-position 53.9 -111.0;
##Add GSL links
#$n316 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n317 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp59 [new Agent/UDP]
#$ns attach-agent $n316 $udp59
#set pareto59 [new Application/Traffic/Pareto]
#$pareto59 attach-agent $udp59
#$pareto59 set packetSize_ 1000
#$pareto59 set rate_ 1000Kb
#set null59 [new Agent/Null]
#$ns attach-agent $n317 $null59
#$ns connect $udp59 $null59
#$ns at 0.72 "$pareto59 start"
#
##Background: 318 to 319
#set n318 [$ns node]
#$n318 set-position 0.6 -74.0;
#set n319 [$ns node]
#$n319 set-position 51.4 -86.8;
##Add GSL links
#$n318 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n319 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp60 [new Agent/UDP]
#$ns attach-agent $n318 $udp60
#set pareto60 [new Application/Traffic/Pareto]
#$pareto60 attach-agent $udp60
#$pareto60 set packetSize_ 1000
#$pareto60 set rate_ 1000Kb
#set null60 [new Agent/Null]
#$ns attach-agent $n319 $null60
#$ns connect $udp60 $null60
#$ns at 0.68 "$pareto60 start"
#
##Background: 320 to 321
#set n320 [$ns node]
#$n320 set-position -1.0 -51.5;
#set n321 [$ns node]
#$n321 set-position 53.1 -109.3;
##Add GSL links
#$n320 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n321 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp61 [new Agent/UDP]
#$ns attach-agent $n320 $udp61
#set pareto61 [new Application/Traffic/Pareto]
#$pareto61 attach-agent $udp61
#$pareto61 set packetSize_ 1000
#$pareto61 set rate_ 1000Kb
#set null61 [new Agent/Null]
#$ns attach-agent $n321 $null61
#$ns connect $udp61 $null61
#$ns at 0.36 "$pareto61 start"
#
##Background: 322 to 323
#set n322 [$ns node]
#$n322 set-position 11.6 -63.6;
#set n323 [$ns node]
#$n323 set-position 28.7 -64.8;
##Add GSL links
#$n322 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n323 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp62 [new Agent/UDP]
#$ns attach-agent $n322 $udp62
#set pareto62 [new Application/Traffic/Pareto]
#$pareto62 attach-agent $udp62
#$pareto62 set packetSize_ 1000
#$pareto62 set rate_ 1000Kb
#set null62 [new Agent/Null]
#$ns attach-agent $n323 $null62
#$ns connect $udp62 $null62
#$ns at 0.14 "$pareto62 start"
#
##Background: 324 to 325
#set n324 [$ns node]
#$n324 set-position 6.4 -69.8;
#set n325 [$ns node]
#$n325 set-position 55.2 -127.4;
##Add GSL links
#$n324 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n325 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp63 [new Agent/UDP]
#$ns attach-agent $n324 $udp63
#set pareto63 [new Application/Traffic/Pareto]
#$pareto63 attach-agent $udp63
#$pareto63 set packetSize_ 1000
#$pareto63 set rate_ 1000Kb
#set null63 [new Agent/Null]
#$ns attach-agent $n325 $null63
#$ns connect $udp63 $null63
#$ns at 0.28 "$pareto63 start"
#
##Background: 326 to 327
#set n326 [$ns node]
#$n326 set-position -38.8 -72.2;
#set n327 [$ns node]
#$n327 set-position 32.2 -128.7;
##Add GSL links
#$n326 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n327 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp64 [new Agent/UDP]
#$ns attach-agent $n326 $udp64
#set pareto64 [new Application/Traffic/Pareto]
#$pareto64 attach-agent $udp64
#$pareto64 set packetSize_ 1000
#$pareto64 set rate_ 1000Kb
#set null64 [new Agent/Null]
#$ns attach-agent $n327 $null64
#$ns connect $udp64 $null64
#$ns at 0.58 "$pareto64 start"
#
##Background: 328 to 329
#set n328 [$ns node]
#$n328 set-position -46.0 -65.9;
#set n329 [$ns node]
#$n329 set-position 48.9 -82.1;
##Add GSL links
#$n328 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n329 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp65 [new Agent/UDP]
#$ns attach-agent $n328 $udp65
#set pareto65 [new Application/Traffic/Pareto]
#$pareto65 attach-agent $udp65
#$pareto65 set packetSize_ 1000
#$pareto65 set rate_ 1000Kb
#set null65 [new Agent/Null]
#$ns attach-agent $n329 $null65
#$ns connect $udp65 $null65
#$ns at 0.81 "$pareto65 start"
#
##Background: 330 to 331
#set n330 [$ns node]
#$n330 set-position -23.7 -46.5;
#set n331 [$ns node]
#$n331 set-position 59.3 -102.3;
##Add GSL links
#$n330 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n331 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp66 [new Agent/UDP]
#$ns attach-agent $n330 $udp66
#set pareto66 [new Application/Traffic/Pareto]
#$pareto66 attach-agent $udp66
#$pareto66 set packetSize_ 1000
#$pareto66 set rate_ 1000Kb
#set null66 [new Agent/Null]
#$ns attach-agent $n331 $null66
#$ns connect $udp66 $null66
#$ns at 0.19 "$pareto66 start"
#
##Background: 332 to 333
#set n332 [$ns node]
#$n332 set-position -18.8 -53.0;
#set n333 [$ns node]
#$n333 set-position -9.3 -35.5;
##Add GSL links
#$n332 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n333 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp67 [new Agent/UDP]
#$ns attach-agent $n332 $udp67
#set pareto67 [new Application/Traffic/Pareto]
#$pareto67 attach-agent $udp67
#$pareto67 set packetSize_ 1000
#$pareto67 set rate_ 1000Kb
#set null67 [new Agent/Null]
#$ns attach-agent $n333 $null67
#$ns connect $udp67 $null67
#$ns at 0.77 "$pareto67 start"
#
##Background: 334 to 335
#set n334 [$ns node]
#$n334 set-position -20.5 -78.9;
#set n335 [$ns node]
#$n335 set-position -25.7 -51.7;
##Add GSL links
#$n334 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n335 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp68 [new Agent/UDP]
#$ns attach-agent $n334 $udp68
#set pareto68 [new Application/Traffic/Pareto]
#$pareto68 attach-agent $udp68
#$pareto68 set packetSize_ 1000
#$pareto68 set rate_ 1000Kb
#set null68 [new Agent/Null]
#$ns attach-agent $n335 $null68
#$ns connect $udp68 $null68
#$ns at 0.66 "$pareto68 start"
#
##Background: 336 to 337
#set n336 [$ns node]
#$n336 set-position -34.2 -45.1;
#set n337 [$ns node]
#$n337 set-position -48.0 -43.8;
##Add GSL links
#$n336 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n337 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp69 [new Agent/UDP]
#$ns attach-agent $n336 $udp69
#set pareto69 [new Application/Traffic/Pareto]
#$pareto69 attach-agent $udp69
#$pareto69 set packetSize_ 1000
#$pareto69 set rate_ 1000Kb
#set null69 [new Agent/Null]
#$ns attach-agent $n337 $null69
#$ns connect $udp69 $null69
#$ns at 0.27 "$pareto69 start"
#
##Background: 338 to 339
#set n338 [$ns node]
#$n338 set-position -25.2 -42.6;
#set n339 [$ns node]
#$n339 set-position -39.5 -77.7;
##Add GSL links
#$n338 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n339 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp70 [new Agent/UDP]
#$ns attach-agent $n338 $udp70
#set pareto70 [new Application/Traffic/Pareto]
#$pareto70 attach-agent $udp70
#$pareto70 set packetSize_ 1000
#$pareto70 set rate_ 1000Kb
#set null70 [new Agent/Null]
#$ns attach-agent $n339 $null70
#$ns connect $udp70 $null70
#$ns at 0.89 "$pareto70 start"
#
##Background: 340 to 341
#set n340 [$ns node]
#$n340 set-position -28.4 -73.7;
#set n341 [$ns node]
#$n341 set-position 13.3 -39.3;
##Add GSL links
#$n340 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n341 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp71 [new Agent/UDP]
#$ns attach-agent $n340 $udp71
#set pareto71 [new Application/Traffic/Pareto]
#$pareto71 attach-agent $udp71
#$pareto71 set packetSize_ 1000
#$pareto71 set rate_ 1000Kb
#set null71 [new Agent/Null]
#$ns attach-agent $n341 $null71
#$ns connect $udp71 $null71
#$ns at 0.45 "$pareto71 start"
#
##Background: 342 to 343
#set n342 [$ns node]
#$n342 set-position -33.4 -43.0;
#set n343 [$ns node]
#$n343 set-position -6.8 -68.8;
##Add GSL links
#$n342 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n343 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp72 [new Agent/UDP]
#$ns attach-agent $n342 $udp72
#set pareto72 [new Application/Traffic/Pareto]
#$pareto72 attach-agent $udp72
#$pareto72 set packetSize_ 1000
#$pareto72 set rate_ 1000Kb
#set null72 [new Agent/Null]
#$ns attach-agent $n343 $null72
#$ns connect $udp72 $null72
#$ns at 0.99 "$pareto72 start"
#
##Background: 344 to 345
#set n344 [$ns node]
#$n344 set-position 0.4 -77.6;
#set n345 [$ns node]
#$n345 set-position -27.9 -63.9;
##Add GSL links
#$n344 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n345 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp73 [new Agent/UDP]
#$ns attach-agent $n344 $udp73
#set pareto73 [new Application/Traffic/Pareto]
#$pareto73 attach-agent $udp73
#$pareto73 set packetSize_ 1000
#$pareto73 set rate_ 1000Kb
#set null73 [new Agent/Null]
#$ns attach-agent $n345 $null73
#$ns connect $udp73 $null73
#$ns at 0.69 "$pareto73 start"
#
##Background: 346 to 347
#set n346 [$ns node]
#$n346 set-position -55.0 -69.4;
#set n347 [$ns node]
#$n347 set-position -21.8 -40.6;
##Add GSL links
#$n346 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n347 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp74 [new Agent/UDP]
#$ns attach-agent $n346 $udp74
#set pareto74 [new Application/Traffic/Pareto]
#$pareto74 attach-agent $udp74
#$pareto74 set packetSize_ 1000
#$pareto74 set rate_ 1000Kb
#set null74 [new Agent/Null]
#$ns attach-agent $n347 $null74
#$ns connect $udp74 $null74
#$ns at 0.89 "$pareto74 start"
#
##Background: 348 to 349
#set n348 [$ns node]
#$n348 set-position 0.0 -64.8;
#set n349 [$ns node]
#$n349 set-position -21.0 -78.0;
##Add GSL links
#$n348 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n349 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp75 [new Agent/UDP]
#$ns attach-agent $n348 $udp75
#set pareto75 [new Application/Traffic/Pareto]
#$pareto75 attach-agent $udp75
#$pareto75 set packetSize_ 1000
#$pareto75 set rate_ 1000Kb
#set null75 [new Agent/Null]
#$ns attach-agent $n349 $null75
#$ns connect $udp75 $null75
#$ns at 0.14 "$pareto75 start"
#
##Background: 350 to 351
#set n350 [$ns node]
#$n350 set-position -18.3 -48.1;
#set n351 [$ns node]
#$n351 set-position -21.0 -47.7;
##Add GSL links
#$n350 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n351 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp76 [new Agent/UDP]
#$ns attach-agent $n350 $udp76
#set pareto76 [new Application/Traffic/Pareto]
#$pareto76 attach-agent $udp76
#$pareto76 set packetSize_ 1000
#$pareto76 set rate_ 1000Kb
#set null76 [new Agent/Null]
#$ns attach-agent $n351 $null76
#$ns connect $udp76 $null76
#$ns at 0.92 "$pareto76 start"
#
##Background: 352 to 353
#set n352 [$ns node]
#$n352 set-position -36.9 -41.1;
#set n353 [$ns node]
#$n353 set-position -49.5 -68.4;
##Add GSL links
#$n352 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n353 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp77 [new Agent/UDP]
#$ns attach-agent $n352 $udp77
#set pareto77 [new Application/Traffic/Pareto]
#$pareto77 attach-agent $udp77
#$pareto77 set packetSize_ 1000
#$pareto77 set rate_ 1000Kb
#set null77 [new Agent/Null]
#$ns attach-agent $n353 $null77
#$ns connect $udp77 $null77
#$ns at 0.96 "$pareto77 start"
#
##Background: 354 to 355
#set n354 [$ns node]
#$n354 set-position -39.8 -41.7;
#set n355 [$ns node]
#$n355 set-position 1.8 -51.5;
##Add GSL links
#$n354 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n355 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp78 [new Agent/UDP]
#$ns attach-agent $n354 $udp78
#set pareto78 [new Application/Traffic/Pareto]
#$pareto78 attach-agent $udp78
#$pareto78 set packetSize_ 1000
#$pareto78 set rate_ 1000Kb
#set null78 [new Agent/Null]
#$ns attach-agent $n355 $null78
#$ns connect $udp78 $null78
#$ns at 0.95 "$pareto78 start"
#
##Background: 356 to 357
#set n356 [$ns node]
#$n356 set-position -23.1 -41.1;
#set n357 [$ns node]
#$n357 set-position -47.9 -60.9;
##Add GSL links
#$n356 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n357 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp79 [new Agent/UDP]
#$ns attach-agent $n356 $udp79
#set pareto79 [new Application/Traffic/Pareto]
#$pareto79 attach-agent $udp79
#$pareto79 set packetSize_ 1000
#$pareto79 set rate_ 1000Kb
#set null79 [new Agent/Null]
#$ns attach-agent $n357 $null79
#$ns connect $udp79 $null79
#$ns at 0.00 "$pareto79 start"
#
##Background: 358 to 359
#set n358 [$ns node]
#$n358 set-position -45.8 -40.7;
#set n359 [$ns node]
#$n359 set-position -49.4 -47.4;
##Add GSL links
#$n358 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n359 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp80 [new Agent/UDP]
#$ns attach-agent $n358 $udp80
#set pareto80 [new Application/Traffic/Pareto]
#$pareto80 attach-agent $udp80
#$pareto80 set packetSize_ 1000
#$pareto80 set rate_ 1000Kb
#set null80 [new Agent/Null]
#$ns attach-agent $n359 $null80
#$ns connect $udp80 $null80
#$ns at 0.37 "$pareto80 start"
#
##Background: 360 to 361
#set n360 [$ns node]
#$n360 set-position 4.8 -47.3;
#set n361 [$ns node]
#$n361 set-position -25.9 -66.0;
##Add GSL links
#$n360 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n361 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp81 [new Agent/UDP]
#$ns attach-agent $n360 $udp81
#set pareto81 [new Application/Traffic/Pareto]
#$pareto81 attach-agent $udp81
#$pareto81 set packetSize_ 1000
#$pareto81 set rate_ 1000Kb
#set null81 [new Agent/Null]
#$ns attach-agent $n361 $null81
#$ns connect $udp81 $null81
#$ns at 0.47 "$pareto81 start"
#
##Background: 362 to 363
#set n362 [$ns node]
#$n362 set-position -34.5 -59.2;
#set n363 [$ns node]
#$n363 set-position -53.2 -55.3;
##Add GSL links
#$n362 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n363 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp82 [new Agent/UDP]
#$ns attach-agent $n362 $udp82
#set pareto82 [new Application/Traffic/Pareto]
#$pareto82 attach-agent $udp82
#$pareto82 set packetSize_ 1000
#$pareto82 set rate_ 1000Kb
#set null82 [new Agent/Null]
#$ns attach-agent $n363 $null82
#$ns connect $udp82 $null82
#$ns at 0.81 "$pareto82 start"
#
##Background: 364 to 365
#set n364 [$ns node]
#$n364 set-position -44.0 -51.9;
#set n365 [$ns node]
#$n365 set-position -42.8 -63.2;
##Add GSL links
#$n364 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n365 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp83 [new Agent/UDP]
#$ns attach-agent $n364 $udp83
#set pareto83 [new Application/Traffic/Pareto]
#$pareto83 attach-agent $udp83
#$pareto83 set packetSize_ 1000
#$pareto83 set rate_ 1000Kb
#set null83 [new Agent/Null]
#$ns attach-agent $n365 $null83
#$ns connect $udp83 $null83
#$ns at 0.47 "$pareto83 start"
#
##Background: 366 to 367
#set n366 [$ns node]
#$n366 set-position -18.0 -68.0;
#set n367 [$ns node]
#$n367 set-position 8.2 -46.2;
##Add GSL links
#$n366 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n367 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp84 [new Agent/UDP]
#$ns attach-agent $n366 $udp84
#set pareto84 [new Application/Traffic/Pareto]
#$pareto84 attach-agent $udp84
#$pareto84 set packetSize_ 1000
#$pareto84 set rate_ 1000Kb
#set null84 [new Agent/Null]
#$ns attach-agent $n367 $null84
#$ns connect $udp84 $null84
#$ns at 0.57 "$pareto84 start"
#
##Background: 368 to 369
#set n368 [$ns node]
#$n368 set-position -7.1 -74.1;
#set n369 [$ns node]
#$n369 set-position -20.4 -65.0;
##Add GSL links
#$n368 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n369 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp85 [new Agent/UDP]
#$ns attach-agent $n368 $udp85
#set pareto85 [new Application/Traffic/Pareto]
#$pareto85 attach-agent $udp85
#$pareto85 set packetSize_ 1000
#$pareto85 set rate_ 1000Kb
#set null85 [new Agent/Null]
#$ns attach-agent $n369 $null85
#$ns connect $udp85 $null85
#$ns at 0.52 "$pareto85 start"
#
##Background: 370 to 371
#set n370 [$ns node]
#$n370 set-position -10.4 -40.6;
#set n371 [$ns node]
#$n371 set-position -45.4 -49.5;
##Add GSL links
#$n370 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n371 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp86 [new Agent/UDP]
#$ns attach-agent $n370 $udp86
#set pareto86 [new Application/Traffic/Pareto]
#$pareto86 attach-agent $udp86
#$pareto86 set packetSize_ 1000
#$pareto86 set rate_ 1000Kb
#set null86 [new Agent/Null]
#$ns attach-agent $n371 $null86
#$ns connect $udp86 $null86
#$ns at 0.71 "$pareto86 start"
#
##Background: 372 to 373
#set n372 [$ns node]
#$n372 set-position -11.7 -69.5;
#set n373 [$ns node]
#$n373 set-position 44.8 7.7;
##Add GSL links
#$n372 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n373 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp87 [new Agent/UDP]
#$ns attach-agent $n372 $udp87
#set pareto87 [new Application/Traffic/Pareto]
#$pareto87 attach-agent $udp87
#$pareto87 set packetSize_ 1000
#$pareto87 set rate_ 1000Kb
#set null87 [new Agent/Null]
#$ns attach-agent $n373 $null87
#$ns connect $udp87 $null87
#$ns at 0.95 "$pareto87 start"
#
##Background: 374 to 375
#set n374 [$ns node]
#$n374 set-position -35.3 -76.6;
#set n375 [$ns node]
#$n375 set-position 50.5 1.6;
##Add GSL links
#$n374 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n375 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp88 [new Agent/UDP]
#$ns attach-agent $n374 $udp88
#set pareto88 [new Application/Traffic/Pareto]
#$pareto88 attach-agent $udp88
#$pareto88 set packetSize_ 1000
#$pareto88 set rate_ 1000Kb
#set null88 [new Agent/Null]
#$ns attach-agent $n375 $null88
#$ns connect $udp88 $null88
#$ns at 0.32 "$pareto88 start"
#
##Background: 376 to 377
#set n376 [$ns node]
#$n376 set-position -6.4 -67.2;
#set n377 [$ns node]
#$n377 set-position 56.5 -4.0;
##Add GSL links
#$n376 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n377 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp89 [new Agent/UDP]
#$ns attach-agent $n376 $udp89
#set pareto89 [new Application/Traffic/Pareto]
#$pareto89 attach-agent $udp89
#$pareto89 set packetSize_ 1000
#$pareto89 set rate_ 1000Kb
#set null89 [new Agent/Null]
#$ns attach-agent $n377 $null89
#$ns connect $udp89 $null89
#$ns at 0.48 "$pareto89 start"
#
##Background: 378 to 379
#set n378 [$ns node]
#$n378 set-position -28.8 -52.0;
#set n379 [$ns node]
#$n379 set-position 52.1 -0.5;
##Add GSL links
#$n378 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n379 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp90 [new Agent/UDP]
#$ns attach-agent $n378 $udp90
#set pareto90 [new Application/Traffic/Pareto]
#$pareto90 attach-agent $udp90
#$pareto90 set packetSize_ 1000
#$pareto90 set rate_ 1000Kb
#set null90 [new Agent/Null]
#$ns attach-agent $n379 $null90
#$ns connect $udp90 $null90
#$ns at 0.20 "$pareto90 start"
#
##Background: 380 to 381
#set n380 [$ns node]
#$n380 set-position -52.2 -72.6;
#set n381 [$ns node]
#$n381 set-position 38.0 -2.5;
##Add GSL links
#$n380 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n381 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp91 [new Agent/UDP]
#$ns attach-agent $n380 $udp91
#set pareto91 [new Application/Traffic/Pareto]
#$pareto91 attach-agent $udp91
#$pareto91 set packetSize_ 1000
#$pareto91 set rate_ 1000Kb
#set null91 [new Agent/Null]
#$ns attach-agent $n381 $null91
#$ns connect $udp91 $null91
#$ns at 0.77 "$pareto91 start"
#
##Background: 382 to 383
#set n382 [$ns node]
#$n382 set-position -21.6 -67.7;
#set n383 [$ns node]
#$n383 set-position 52.1 33.0;
##Add GSL links
#$n382 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n383 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp92 [new Agent/UDP]
#$ns attach-agent $n382 $udp92
#set pareto92 [new Application/Traffic/Pareto]
#$pareto92 attach-agent $udp92
#$pareto92 set packetSize_ 1000
#$pareto92 set rate_ 1000Kb
#set null92 [new Agent/Null]
#$ns attach-agent $n383 $null92
#$ns connect $udp92 $null92
#$ns at 0.80 "$pareto92 start"
#
##Background: 384 to 385
#set n384 [$ns node]
#$n384 set-position -50.8 -63.4;
#set n385 [$ns node]
#$n385 set-position 3.5 29.2;
##Add GSL links
#$n384 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n385 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp93 [new Agent/UDP]
#$ns attach-agent $n384 $udp93
#set pareto93 [new Application/Traffic/Pareto]
#$pareto93 attach-agent $udp93
#$pareto93 set packetSize_ 1000
#$pareto93 set rate_ 1000Kb
#set null93 [new Agent/Null]
#$ns attach-agent $n385 $null93
#$ns connect $udp93 $null93
#$ns at 0.93 "$pareto93 start"
#
##Background: 386 to 387
#set n386 [$ns node]
#$n386 set-position -31.7 -40.8;
#set n387 [$ns node]
#$n387 set-position 7.7 83.8;
##Add GSL links
#$n386 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n387 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp94 [new Agent/UDP]
#$ns attach-agent $n386 $udp94
#set pareto94 [new Application/Traffic/Pareto]
#$pareto94 attach-agent $udp94
#$pareto94 set packetSize_ 1000
#$pareto94 set rate_ 1000Kb
#set null94 [new Agent/Null]
#$ns attach-agent $n387 $null94
#$ns connect $udp94 $null94
#$ns at 0.10 "$pareto94 start"
#
##Background: 388 to 389
#set n388 [$ns node]
#$n388 set-position -23.9 -57.3;
#set n389 [$ns node]
#$n389 set-position 54.0 132.6;
##Add GSL links
#$n388 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n389 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp95 [new Agent/UDP]
#$ns attach-agent $n388 $udp95
#set pareto95 [new Application/Traffic/Pareto]
#$pareto95 attach-agent $udp95
#$pareto95 set packetSize_ 1000
#$pareto95 set rate_ 1000Kb
#set null95 [new Agent/Null]
#$ns attach-agent $n389 $null95
#$ns connect $udp95 $null95
#$ns at 0.37 "$pareto95 start"
#
##Background: 390 to 391
#set n390 [$ns node]
#$n390 set-position -46.1 -61.1;
#set n391 [$ns node]
#$n391 set-position 42.0 131.0;
##Add GSL links
#$n390 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n391 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp96 [new Agent/UDP]
#$ns attach-agent $n390 $udp96
#set pareto96 [new Application/Traffic/Pareto]
#$pareto96 attach-agent $udp96
#$pareto96 set packetSize_ 1000
#$pareto96 set rate_ 1000Kb
#set null96 [new Agent/Null]
#$ns attach-agent $n391 $null96
#$ns connect $udp96 $null96
#$ns at 0.36 "$pareto96 start"
#
##Background: 392 to 393
#set n392 [$ns node]
#$n392 set-position -25.8 -66.2;
#set n393 [$ns node]
#$n393 set-position 1.2 57.4;
##Add GSL links
#$n392 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n393 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp97 [new Agent/UDP]
#$ns attach-agent $n392 $udp97
#set pareto97 [new Application/Traffic/Pareto]
#$pareto97 attach-agent $udp97
#$pareto97 set packetSize_ 1000
#$pareto97 set rate_ 1000Kb
#set null97 [new Agent/Null]
#$ns attach-agent $n393 $null97
#$ns connect $udp97 $null97
#$ns at 0.15 "$pareto97 start"
#
##Background: 394 to 395
#set n394 [$ns node]
#$n394 set-position 8.9 -54.1;
#set n395 [$ns node]
#$n395 set-position -26.1 116.3;
##Add GSL links
#$n394 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n395 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp98 [new Agent/UDP]
#$ns attach-agent $n394 $udp98
#set pareto98 [new Application/Traffic/Pareto]
#$pareto98 attach-agent $udp98
#$pareto98 set packetSize_ 1000
#$pareto98 set rate_ 1000Kb
#set null98 [new Agent/Null]
#$ns attach-agent $n395 $null98
#$ns connect $udp98 $null98
#$ns at 0.91 "$pareto98 start"
#
##Background: 396 to 397
#set n396 [$ns node]
#$n396 set-position 41.9 35.7;
#set n397 [$ns node]
#$n397 set-position 40.7 -124.3;
##Add GSL links
#$n396 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n397 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp99 [new Agent/UDP]
#$ns attach-agent $n396 $udp99
#set pareto99 [new Application/Traffic/Pareto]
#$pareto99 attach-agent $udp99
#$pareto99 set packetSize_ 1000
#$pareto99 set rate_ 1000Kb
#set null99 [new Agent/Null]
#$ns attach-agent $n397 $null99
#$ns connect $udp99 $null99
#$ns at 0.02 "$pareto99 start"
#
##Background: 398 to 399
#set n398 [$ns node]
#$n398 set-position 45.2 29.2;
#set n399 [$ns node]
#$n399 set-position 54.4 -97.0;
##Add GSL links
#$n398 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n399 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp100 [new Agent/UDP]
#$ns attach-agent $n398 $udp100
#set pareto100 [new Application/Traffic/Pareto]
#$pareto100 attach-agent $udp100
#$pareto100 set packetSize_ 1000
#$pareto100 set rate_ 1000Kb
#set null100 [new Agent/Null]
#$ns attach-agent $n399 $null100
#$ns connect $udp100 $null100
#$ns at 0.82 "$pareto100 start"
#
##Background: 400 to 401
#set n400 [$ns node]
#$n400 set-position 35.6 24.3;
#set n401 [$ns node]
#$n401 set-position 45.9 -120.4;
##Add GSL links
#$n400 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n401 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp101 [new Agent/UDP]
#$ns attach-agent $n400 $udp101
#set pareto101 [new Application/Traffic/Pareto]
#$pareto101 attach-agent $udp101
#$pareto101 set packetSize_ 1000
#$pareto101 set rate_ 1000Kb
#set null101 [new Agent/Null]
#$ns attach-agent $n401 $null101
#$ns connect $udp101 $null101
#$ns at 0.70 "$pareto101 start"
#
##Background: 402 to 403
#set n402 [$ns node]
#$n402 set-position 49.9 23.5;
#set n403 [$ns node]
#$n403 set-position 41.1 -82.9;
##Add GSL links
#$n402 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n403 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp102 [new Agent/UDP]
#$ns attach-agent $n402 $udp102
#set pareto102 [new Application/Traffic/Pareto]
#$pareto102 attach-agent $udp102
#$pareto102 set packetSize_ 1000
#$pareto102 set rate_ 1000Kb
#set null102 [new Agent/Null]
#$ns attach-agent $n403 $null102
#$ns connect $udp102 $null102
#$ns at 0.47 "$pareto102 start"
#
##Background: 404 to 405
#set n404 [$ns node]
#$n404 set-position 44.7 21.3;
#set n405 [$ns node]
#$n405 set-position 48.8 -128.9;
##Add GSL links
#$n404 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n405 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp103 [new Agent/UDP]
#$ns attach-agent $n404 $udp103
#set pareto103 [new Application/Traffic/Pareto]
#$pareto103 attach-agent $udp103
#$pareto103 set packetSize_ 1000
#$pareto103 set rate_ 1000Kb
#set null103 [new Agent/Null]
#$ns attach-agent $n405 $null103
#$ns connect $udp103 $null103
#$ns at 0.40 "$pareto103 start"
#
##Background: 406 to 407
#set n406 [$ns node]
#$n406 set-position 40.3 0.1;
#set n407 [$ns node]
#$n407 set-position 34.9 -110.6;
##Add GSL links
#$n406 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n407 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp104 [new Agent/UDP]
#$ns attach-agent $n406 $udp104
#set pareto104 [new Application/Traffic/Pareto]
#$pareto104 attach-agent $udp104
#$pareto104 set packetSize_ 1000
#$pareto104 set rate_ 1000Kb
#set null104 [new Agent/Null]
#$ns attach-agent $n407 $null104
#$ns connect $udp104 $null104
#$ns at 0.16 "$pareto104 start"
#
##Background: 408 to 409
#set n408 [$ns node]
#$n408 set-position 49.0 6.6;
#set n409 [$ns node]
#$n409 set-position 57.3 -115.0;
##Add GSL links
#$n408 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n409 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp105 [new Agent/UDP]
#$ns attach-agent $n408 $udp105
#set pareto105 [new Application/Traffic/Pareto]
#$pareto105 attach-agent $udp105
#$pareto105 set packetSize_ 1000
#$pareto105 set rate_ 1000Kb
#set null105 [new Agent/Null]
#$ns attach-agent $n409 $null105
#$ns connect $udp105 $null105
#$ns at 0.25 "$pareto105 start"
#
##Background: 410 to 411
#set n410 [$ns node]
#$n410 set-position 47.7 15.2;
#set n411 [$ns node]
#$n411 set-position 51.7 -67.9;
##Add GSL links
#$n410 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n411 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp106 [new Agent/UDP]
#$ns attach-agent $n410 $udp106
#set pareto106 [new Application/Traffic/Pareto]
#$pareto106 attach-agent $udp106
#$pareto106 set packetSize_ 1000
#$pareto106 set rate_ 1000Kb
#set null106 [new Agent/Null]
#$ns attach-agent $n411 $null106
#$ns connect $udp106 $null106
#$ns at 0.84 "$pareto106 start"
#
##Background: 412 to 413
#set n412 [$ns node]
#$n412 set-position 55.1 -7.1;
#set n413 [$ns node]
#$n413 set-position 42.8 -113.9;
##Add GSL links
#$n412 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n413 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp107 [new Agent/UDP]
#$ns attach-agent $n412 $udp107
#set pareto107 [new Application/Traffic/Pareto]
#$pareto107 attach-agent $udp107
#$pareto107 set packetSize_ 1000
#$pareto107 set rate_ 1000Kb
#set null107 [new Agent/Null]
#$ns attach-agent $n413 $null107
#$ns connect $udp107 $null107
#$ns at 0.76 "$pareto107 start"
#
##Background: 414 to 415
#set n414 [$ns node]
#$n414 set-position 59.8 1.2;
#set n415 [$ns node]
#$n415 set-position 26.3 -124.1;
##Add GSL links
#$n414 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n415 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp108 [new Agent/UDP]
#$ns attach-agent $n414 $udp108
#set pareto108 [new Application/Traffic/Pareto]
#$pareto108 attach-agent $udp108
#$pareto108 set packetSize_ 1000
#$pareto108 set rate_ 1000Kb
#set null108 [new Agent/Null]
#$ns attach-agent $n415 $null108
#$ns connect $udp108 $null108
#$ns at 0.85 "$pareto108 start"
#
##Background: 416 to 417
#set n416 [$ns node]
#$n416 set-position 51.1 20.8;
#set n417 [$ns node]
#$n417 set-position 35.0 -65.1;
##Add GSL links
#$n416 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n417 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp109 [new Agent/UDP]
#$ns attach-agent $n416 $udp109
#set pareto109 [new Application/Traffic/Pareto]
#$pareto109 attach-agent $udp109
#$pareto109 set packetSize_ 1000
#$pareto109 set rate_ 1000Kb
#set null109 [new Agent/Null]
#$ns attach-agent $n417 $null109
#$ns connect $udp109 $null109
#$ns at 0.69 "$pareto109 start"
#
##Background: 418 to 419
#set n418 [$ns node]
#$n418 set-position 59.0 25.4;
#set n419 [$ns node]
#$n419 set-position 32.2 -71.1;
##Add GSL links
#$n418 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n419 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp110 [new Agent/UDP]
#$ns attach-agent $n418 $udp110
#set pareto110 [new Application/Traffic/Pareto]
#$pareto110 attach-agent $udp110
#$pareto110 set packetSize_ 1000
#$pareto110 set rate_ 1000Kb
#set null110 [new Agent/Null]
#$ns attach-agent $n419 $null110
#$ns connect $udp110 $null110
#$ns at 0.99 "$pareto110 start"
#
##Background: 420 to 421
#set n420 [$ns node]
#$n420 set-position 54.0 3.2;
#set n421 [$ns node]
#$n421 set-position 51.7 -103.4;
##Add GSL links
#$n420 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n421 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp111 [new Agent/UDP]
#$ns attach-agent $n420 $udp111
#set pareto111 [new Application/Traffic/Pareto]
#$pareto111 attach-agent $udp111
#$pareto111 set packetSize_ 1000
#$pareto111 set rate_ 1000Kb
#set null111 [new Agent/Null]
#$ns attach-agent $n421 $null111
#$ns connect $udp111 $null111
#$ns at 0.84 "$pareto111 start"
#
##Background: 422 to 423
#set n422 [$ns node]
#$n422 set-position 59.2 -5.7;
#set n423 [$ns node]
#$n423 set-position 23.6 -93.9;
##Add GSL links
#$n422 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n423 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp112 [new Agent/UDP]
#$ns attach-agent $n422 $udp112
#set pareto112 [new Application/Traffic/Pareto]
#$pareto112 attach-agent $udp112
#$pareto112 set packetSize_ 1000
#$pareto112 set rate_ 1000Kb
#set null112 [new Agent/Null]
#$ns attach-agent $n423 $null112
#$ns connect $udp112 $null112
#$ns at 0.67 "$pareto112 start"
#
##Background: 424 to 425
#set n424 [$ns node]
#$n424 set-position 52.3 -3.8;
#set n425 [$ns node]
#$n425 set-position 29.6 -114.9;
##Add GSL links
#$n424 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n425 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp113 [new Agent/UDP]
#$ns attach-agent $n424 $udp113
#set pareto113 [new Application/Traffic/Pareto]
#$pareto113 attach-agent $udp113
#$pareto113 set packetSize_ 1000
#$pareto113 set rate_ 1000Kb
#set null113 [new Agent/Null]
#$ns attach-agent $n425 $null113
#$ns connect $udp113 $null113
#$ns at 0.25 "$pareto113 start"
#
##Background: 426 to 427
#set n426 [$ns node]
#$n426 set-position 57.2 -4.9;
#set n427 [$ns node]
#$n427 set-position 38.9 -61.4;
##Add GSL links
#$n426 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n427 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp114 [new Agent/UDP]
#$ns attach-agent $n426 $udp114
#set pareto114 [new Application/Traffic/Pareto]
#$pareto114 attach-agent $udp114
#$pareto114 set packetSize_ 1000
#$pareto114 set rate_ 1000Kb
#set null114 [new Agent/Null]
#$ns attach-agent $n427 $null114
#$ns connect $udp114 $null114
#$ns at 0.12 "$pareto114 start"
#
##Background: 428 to 429
#set n428 [$ns node]
#$n428 set-position 47.4 19.9;
#set n429 [$ns node]
#$n429 set-position 27.2 -82.5;
##Add GSL links
#$n428 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n429 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp115 [new Agent/UDP]
#$ns attach-agent $n428 $udp115
#set pareto115 [new Application/Traffic/Pareto]
#$pareto115 attach-agent $udp115
#$pareto115 set packetSize_ 1000
#$pareto115 set rate_ 1000Kb
#set null115 [new Agent/Null]
#$ns attach-agent $n429 $null115
#$ns connect $udp115 $null115
#$ns at 0.50 "$pareto115 start"
#
##Background: 430 to 431
#set n430 [$ns node]
#$n430 set-position 49.1 16.7;
#set n431 [$ns node]
#$n431 set-position 30.4 -113.4;
##Add GSL links
#$n430 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n431 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp116 [new Agent/UDP]
#$ns attach-agent $n430 $udp116
#set pareto116 [new Application/Traffic/Pareto]
#$pareto116 attach-agent $udp116
#$pareto116 set packetSize_ 1000
#$pareto116 set rate_ 1000Kb
#set null116 [new Agent/Null]
#$ns attach-agent $n431 $null116
#$ns connect $udp116 $null116
#$ns at 0.07 "$pareto116 start"
#
##Background: 432 to 433
#set n432 [$ns node]
#$n432 set-position 50.5 0.6;
#set n433 [$ns node]
#$n433 set-position 39.1 -117.8;
##Add GSL links
#$n432 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n433 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp117 [new Agent/UDP]
#$ns attach-agent $n432 $udp117
#set pareto117 [new Application/Traffic/Pareto]
#$pareto117 attach-agent $udp117
#$pareto117 set packetSize_ 1000
#$pareto117 set rate_ 1000Kb
#set null117 [new Agent/Null]
#$ns attach-agent $n433 $null117
#$ns connect $udp117 $null117
#$ns at 0.22 "$pareto117 start"
#
##Background: 434 to 435
#set n434 [$ns node]
#$n434 set-position 37.5 26.6;
#set n435 [$ns node]
#$n435 set-position 51.8 -118.7;
##Add GSL links
#$n434 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n435 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp118 [new Agent/UDP]
#$ns attach-agent $n434 $udp118
#set pareto118 [new Application/Traffic/Pareto]
#$pareto118 attach-agent $udp118
#$pareto118 set packetSize_ 1000
#$pareto118 set rate_ 1000Kb
#set null118 [new Agent/Null]
#$ns attach-agent $n435 $null118
#$ns connect $udp118 $null118
#$ns at 0.77 "$pareto118 start"
#
##Background: 436 to 437
#set n436 [$ns node]
#$n436 set-position 58.5 18.8;
#set n437 [$ns node]
#$n437 set-position -15.8 -66.9;
##Add GSL links
#$n436 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n437 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp119 [new Agent/UDP]
#$ns attach-agent $n436 $udp119
#set pareto119 [new Application/Traffic/Pareto]
#$pareto119 attach-agent $udp119
#$pareto119 set packetSize_ 1000
#$pareto119 set rate_ 1000Kb
#set null119 [new Agent/Null]
#$ns attach-agent $n437 $null119
#$ns connect $udp119 $null119
#$ns at 0.89 "$pareto119 start"
#
##Background: 438 to 439
#set n438 [$ns node]
#$n438 set-position 36.9 30.6;
#set n439 [$ns node]
#$n439 set-position -15.8 -39.1;
##Add GSL links
#$n438 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n439 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp120 [new Agent/UDP]
#$ns attach-agent $n438 $udp120
#set pareto120 [new Application/Traffic/Pareto]
#$pareto120 attach-agent $udp120
#$pareto120 set packetSize_ 1000
#$pareto120 set rate_ 1000Kb
#set null120 [new Agent/Null]
#$ns attach-agent $n439 $null120
#$ns connect $udp120 $null120
#$ns at 0.94 "$pareto120 start"
#
##Background: 440 to 441
#set n440 [$ns node]
#$n440 set-position 50.4 38.5;
#set n441 [$ns node]
#$n441 set-position 44.3 32.8;
##Add GSL links
#$n440 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n441 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp121 [new Agent/UDP]
#$ns attach-agent $n440 $udp121
#set pareto121 [new Application/Traffic/Pareto]
#$pareto121 attach-agent $udp121
#$pareto121 set packetSize_ 1000
#$pareto121 set rate_ 1000Kb
#set null121 [new Agent/Null]
#$ns attach-agent $n441 $null121
#$ns connect $udp121 $null121
#$ns at 0.62 "$pareto121 start"
#
##Background: 442 to 443
#set n442 [$ns node]
#$n442 set-position 54.3 32.2;
#set n443 [$ns node]
#$n443 set-position 38.0 4.7;
##Add GSL links
#$n442 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n443 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp122 [new Agent/UDP]
#$ns attach-agent $n442 $udp122
#set pareto122 [new Application/Traffic/Pareto]
#$pareto122 attach-agent $udp122
#$pareto122 set packetSize_ 1000
#$pareto122 set rate_ 1000Kb
#set null122 [new Agent/Null]
#$ns attach-agent $n443 $null122
#$ns connect $udp122 $null122
#$ns at 0.38 "$pareto122 start"
#
##Background: 444 to 445
#set n444 [$ns node]
#$n444 set-position 38.9 5.5;
#set n445 [$ns node]
#$n445 set-position 39.6 8.0;
##Add GSL links
#$n444 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n445 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp123 [new Agent/UDP]
#$ns attach-agent $n444 $udp123
#set pareto123 [new Application/Traffic/Pareto]
#$pareto123 attach-agent $udp123
#$pareto123 set packetSize_ 1000
#$pareto123 set rate_ 1000Kb
#set null123 [new Agent/Null]
#$ns attach-agent $n445 $null123
#$ns connect $udp123 $null123
#$ns at 0.27 "$pareto123 start"
#
##Background: 446 to 447
#set n446 [$ns node]
#$n446 set-position 52.1 20.7;
#set n447 [$ns node]
#$n447 set-position 49.6 -1.1;
##Add GSL links
#$n446 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n447 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp124 [new Agent/UDP]
#$ns attach-agent $n446 $udp124
#set pareto124 [new Application/Traffic/Pareto]
#$pareto124 attach-agent $udp124
#$pareto124 set packetSize_ 1000
#$pareto124 set rate_ 1000Kb
#set null124 [new Agent/Null]
#$ns attach-agent $n447 $null124
#$ns connect $udp124 $null124
#$ns at 0.22 "$pareto124 start"
#
##Background: 448 to 449
#set n448 [$ns node]
#$n448 set-position 57.5 32.6;
#set n449 [$ns node]
#$n449 set-position 56.1 26.7;
##Add GSL links
#$n448 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n449 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp125 [new Agent/UDP]
#$ns attach-agent $n448 $udp125
#set pareto125 [new Application/Traffic/Pareto]
#$pareto125 attach-agent $udp125
#$pareto125 set packetSize_ 1000
#$pareto125 set rate_ 1000Kb
#set null125 [new Agent/Null]
#$ns attach-agent $n449 $null125
#$ns connect $udp125 $null125
#$ns at 0.07 "$pareto125 start"
#
##Background: 450 to 451
#set n450 [$ns node]
#$n450 set-position 40.2 3.7;
#set n451 [$ns node]
#$n451 set-position 36.5 34.5;
##Add GSL links
#$n450 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n451 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp126 [new Agent/UDP]
#$ns attach-agent $n450 $udp126
#set pareto126 [new Application/Traffic/Pareto]
#$pareto126 attach-agent $udp126
#$pareto126 set packetSize_ 1000
#$pareto126 set rate_ 1000Kb
#set null126 [new Agent/Null]
#$ns attach-agent $n451 $null126
#$ns connect $udp126 $null126
#$ns at 0.48 "$pareto126 start"
#
##Background: 452 to 453
#set n452 [$ns node]
#$n452 set-position 40.9 10.1;
#set n453 [$ns node]
#$n453 set-position 58.3 5.2;
##Add GSL links
#$n452 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n453 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp127 [new Agent/UDP]
#$ns attach-agent $n452 $udp127
#set pareto127 [new Application/Traffic/Pareto]
#$pareto127 attach-agent $udp127
#$pareto127 set packetSize_ 1000
#$pareto127 set rate_ 1000Kb
#set null127 [new Agent/Null]
#$ns attach-agent $n453 $null127
#$ns connect $udp127 $null127
#$ns at 0.30 "$pareto127 start"
#
##Background: 454 to 455
#set n454 [$ns node]
#$n454 set-position 59.6 34.7;
#set n455 [$ns node]
#$n455 set-position 50.4 -7.4;
##Add GSL links
#$n454 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n455 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp128 [new Agent/UDP]
#$ns attach-agent $n454 $udp128
#set pareto128 [new Application/Traffic/Pareto]
#$pareto128 attach-agent $udp128
#$pareto128 set packetSize_ 1000
#$pareto128 set rate_ 1000Kb
#set null128 [new Agent/Null]
#$ns attach-agent $n455 $null128
#$ns connect $udp128 $null128
#$ns at 0.47 "$pareto128 start"
#
##Background: 456 to 457
#set n456 [$ns node]
#$n456 set-position 59.2 21.5;
#set n457 [$ns node]
#$n457 set-position 45.2 29.0;
##Add GSL links
#$n456 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n457 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp129 [new Agent/UDP]
#$ns attach-agent $n456 $udp129
#set pareto129 [new Application/Traffic/Pareto]
#$pareto129 attach-agent $udp129
#$pareto129 set packetSize_ 1000
#$pareto129 set rate_ 1000Kb
#set null129 [new Agent/Null]
#$ns attach-agent $n457 $null129
#$ns connect $udp129 $null129
#$ns at 0.47 "$pareto129 start"
#
##Background: 458 to 459
#set n458 [$ns node]
#$n458 set-position 48.1 31.3;
#set n459 [$ns node]
#$n459 set-position 35.6 -7.3;
##Add GSL links
#$n458 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n459 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp130 [new Agent/UDP]
#$ns attach-agent $n458 $udp130
#set pareto130 [new Application/Traffic/Pareto]
#$pareto130 attach-agent $udp130
#$pareto130 set packetSize_ 1000
#$pareto130 set rate_ 1000Kb
#set null130 [new Agent/Null]
#$ns attach-agent $n459 $null130
#$ns connect $udp130 $null130
#$ns at 0.54 "$pareto130 start"
#
##Background: 460 to 461
#set n460 [$ns node]
#$n460 set-position 52.8 25.5;
#set n461 [$ns node]
#$n461 set-position 38.0 39.1;
##Add GSL links
#$n460 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n461 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp131 [new Agent/UDP]
#$ns attach-agent $n460 $udp131
#set pareto131 [new Application/Traffic/Pareto]
#$pareto131 attach-agent $udp131
#$pareto131 set packetSize_ 1000
#$pareto131 set rate_ 1000Kb
#set null131 [new Agent/Null]
#$ns attach-agent $n461 $null131
#$ns connect $udp131 $null131
#$ns at 0.22 "$pareto131 start"
#
##Background: 462 to 463
#set n462 [$ns node]
#$n462 set-position 49.0 -5.6;
#set n463 [$ns node]
#$n463 set-position 56.1 15.7;
##Add GSL links
#$n462 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n463 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp132 [new Agent/UDP]
#$ns attach-agent $n462 $udp132
#set pareto132 [new Application/Traffic/Pareto]
#$pareto132 attach-agent $udp132
#$pareto132 set packetSize_ 1000
#$pareto132 set rate_ 1000Kb
#set null132 [new Agent/Null]
#$ns attach-agent $n463 $null132
#$ns connect $udp132 $null132
#$ns at 0.41 "$pareto132 start"
#
##Background: 464 to 465
#set n464 [$ns node]
#$n464 set-position 55.9 21.7;
#set n465 [$ns node]
#$n465 set-position 39.2 9.3;
##Add GSL links
#$n464 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n465 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp133 [new Agent/UDP]
#$ns attach-agent $n464 $udp133
#set pareto133 [new Application/Traffic/Pareto]
#$pareto133 attach-agent $udp133
#$pareto133 set packetSize_ 1000
#$pareto133 set rate_ 1000Kb
#set null133 [new Agent/Null]
#$ns attach-agent $n465 $null133
#$ns connect $udp133 $null133
#$ns at 0.21 "$pareto133 start"
#
##Background: 466 to 467
#set n466 [$ns node]
#$n466 set-position 37.4 -5.9;
#set n467 [$ns node]
#$n467 set-position 36.9 32.8;
##Add GSL links
#$n466 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n467 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp134 [new Agent/UDP]
#$ns attach-agent $n466 $udp134
#set pareto134 [new Application/Traffic/Pareto]
#$pareto134 attach-agent $udp134
#$pareto134 set packetSize_ 1000
#$pareto134 set rate_ 1000Kb
#set null134 [new Agent/Null]
#$ns attach-agent $n467 $null134
#$ns connect $udp134 $null134
#$ns at 0.67 "$pareto134 start"
#
##Background: 468 to 469
#set n468 [$ns node]
#$n468 set-position 41.8 -7.8;
#set n469 [$ns node]
#$n469 set-position 58.4 -7.8;
##Add GSL links
#$n468 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n469 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp135 [new Agent/UDP]
#$ns attach-agent $n468 $udp135
#set pareto135 [new Application/Traffic/Pareto]
#$pareto135 attach-agent $udp135
#$pareto135 set packetSize_ 1000
#$pareto135 set rate_ 1000Kb
#set null135 [new Agent/Null]
#$ns attach-agent $n469 $null135
#$ns connect $udp135 $null135
#$ns at 0.65 "$pareto135 start"
#
##Background: 470 to 471
#set n470 [$ns node]
#$n470 set-position 53.3 30.3;
#set n471 [$ns node]
#$n471 set-position 52.8 33.9;
##Add GSL links
#$n470 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n471 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp136 [new Agent/UDP]
#$ns attach-agent $n470 $udp136
#set pareto136 [new Application/Traffic/Pareto]
#$pareto136 attach-agent $udp136
#$pareto136 set packetSize_ 1000
#$pareto136 set rate_ 1000Kb
#set null136 [new Agent/Null]
#$ns attach-agent $n471 $null136
#$ns connect $udp136 $null136
#$ns at 0.83 "$pareto136 start"
#
##Background: 472 to 473
#set n472 [$ns node]
#$n472 set-position 38.3 11.9;
#set n473 [$ns node]
#$n473 set-position 48.8 6.5;
##Add GSL links
#$n472 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n473 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp137 [new Agent/UDP]
#$ns attach-agent $n472 $udp137
#set pareto137 [new Application/Traffic/Pareto]
#$pareto137 attach-agent $udp137
#$pareto137 set packetSize_ 1000
#$pareto137 set rate_ 1000Kb
#set null137 [new Agent/Null]
#$ns attach-agent $n473 $null137
#$ns connect $udp137 $null137
#$ns at 0.11 "$pareto137 start"
#
##Background: 474 to 475
#set n474 [$ns node]
#$n474 set-position 56.2 5.7;
#set n475 [$ns node]
#$n475 set-position 35.5 32.4;
##Add GSL links
#$n474 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n475 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp138 [new Agent/UDP]
#$ns attach-agent $n474 $udp138
#set pareto138 [new Application/Traffic/Pareto]
#$pareto138 attach-agent $udp138
#$pareto138 set packetSize_ 1000
#$pareto138 set rate_ 1000Kb
#set null138 [new Agent/Null]
#$ns attach-agent $n475 $null138
#$ns connect $udp138 $null138
#$ns at 0.15 "$pareto138 start"
#
##Background: 476 to 477
#set n476 [$ns node]
#$n476 set-position 44.6 28.3;
#set n477 [$ns node]
#$n477 set-position 43.4 39.0;
##Add GSL links
#$n476 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n477 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp139 [new Agent/UDP]
#$ns attach-agent $n476 $udp139
#set pareto139 [new Application/Traffic/Pareto]
#$pareto139 attach-agent $udp139
#$pareto139 set packetSize_ 1000
#$pareto139 set rate_ 1000Kb
#set null139 [new Agent/Null]
#$ns attach-agent $n477 $null139
#$ns connect $udp139 $null139
#$ns at 0.28 "$pareto139 start"
#
##Background: 478 to 479
#set n478 [$ns node]
#$n478 set-position 50.5 -8.5;
#set n479 [$ns node]
#$n479 set-position 56.9 -7.4;
##Add GSL links
#$n478 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n479 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp140 [new Agent/UDP]
#$ns attach-agent $n478 $udp140
#set pareto140 [new Application/Traffic/Pareto]
#$pareto140 attach-agent $udp140
#$pareto140 set packetSize_ 1000
#$pareto140 set rate_ 1000Kb
#set null140 [new Agent/Null]
#$ns attach-agent $n479 $null140
#$ns connect $udp140 $null140
#$ns at 0.95 "$pareto140 start"
#
##Background: 480 to 481
#set n480 [$ns node]
#$n480 set-position 48.8 34.6;
#set n481 [$ns node]
#$n481 set-position -23.2 37.4;
##Add GSL links
#$n480 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n481 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp141 [new Agent/UDP]
#$ns attach-agent $n480 $udp141
#set pareto141 [new Application/Traffic/Pareto]
#$pareto141 attach-agent $udp141
#$pareto141 set packetSize_ 1000
#$pareto141 set rate_ 1000Kb
#set null141 [new Agent/Null]
#$ns attach-agent $n481 $null141
#$ns connect $udp141 $null141
#$ns at 0.68 "$pareto141 start"
#
##Background: 482 to 483
#set n482 [$ns node]
#$n482 set-position 43.3 30.7;
#set n483 [$ns node]
#$n483 set-position 52.2 51.3;
##Add GSL links
#$n482 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n483 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp142 [new Agent/UDP]
#$ns attach-agent $n482 $udp142
#set pareto142 [new Application/Traffic/Pareto]
#$pareto142 attach-agent $udp142
#$pareto142 set packetSize_ 1000
#$pareto142 set rate_ 1000Kb
#set null142 [new Agent/Null]
#$ns attach-agent $n483 $null142
#$ns connect $udp142 $null142
#$ns at 0.98 "$pareto142 start"
#
##Background: 484 to 485
#set n484 [$ns node]
#$n484 set-position 35.7 39.8;
#set n485 [$ns node]
#$n485 set-position 21.8 114.5;
##Add GSL links
#$n484 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n485 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp143 [new Agent/UDP]
#$ns attach-agent $n484 $udp143
#set pareto143 [new Application/Traffic/Pareto]
#$pareto143 attach-agent $udp143
#$pareto143 set packetSize_ 1000
#$pareto143 set rate_ 1000Kb
#set null143 [new Agent/Null]
#$ns attach-agent $n485 $null143
#$ns connect $udp143 $null143
#$ns at 0.16 "$pareto143 start"
#
##Background: 486 to 487
#set n486 [$ns node]
#$n486 set-position 47.9 10.9;
#set n487 [$ns node]
#$n487 set-position 32.3 58.6;
##Add GSL links
#$n486 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n487 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp144 [new Agent/UDP]
#$ns attach-agent $n486 $udp144
#set pareto144 [new Application/Traffic/Pareto]
#$pareto144 attach-agent $udp144
#$pareto144 set packetSize_ 1000
#$pareto144 set rate_ 1000Kb
#set null144 [new Agent/Null]
#$ns attach-agent $n487 $null144
#$ns connect $udp144 $null144
#$ns at 0.33 "$pareto144 start"
#
##Background: 488 to 489
#set n488 [$ns node]
#$n488 set-position 54.0 23.2;
#set n489 [$ns node]
#$n489 set-position 36.9 72.4;
##Add GSL links
#$n488 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n489 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp145 [new Agent/UDP]
#$ns attach-agent $n488 $udp145
#set pareto145 [new Application/Traffic/Pareto]
#$pareto145 attach-agent $udp145
#$pareto145 set packetSize_ 1000
#$pareto145 set rate_ 1000Kb
#set null145 [new Agent/Null]
#$ns attach-agent $n489 $null145
#$ns connect $udp145 $null145
#$ns at 0.22 "$pareto145 start"
#
##Background: 490 to 491
#set n490 [$ns node]
#$n490 set-position 39.7 18.2;
#set n491 [$ns node]
#$n491 set-position 58.9 71.9;
##Add GSL links
#$n490 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n491 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp146 [new Agent/UDP]
#$ns attach-agent $n490 $udp146
#set pareto146 [new Application/Traffic/Pareto]
#$pareto146 attach-agent $udp146
#$pareto146 set packetSize_ 1000
#$pareto146 set rate_ 1000Kb
#set null146 [new Agent/Null]
#$ns attach-agent $n491 $null146
#$ns connect $udp146 $null146
#$ns at 0.08 "$pareto146 start"
#
##Background: 492 to 493
#set n492 [$ns node]
#$n492 set-position 58.5 -9.3;
#set n493 [$ns node]
#$n493 set-position -9.5 165.5;
##Add GSL links
#$n492 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n493 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp147 [new Agent/UDP]
#$ns attach-agent $n492 $udp147
#set pareto147 [new Application/Traffic/Pareto]
#$pareto147 attach-agent $udp147
#$pareto147 set packetSize_ 1000
#$pareto147 set rate_ 1000Kb
#set null147 [new Agent/Null]
#$ns attach-agent $n493 $null147
#$ns connect $udp147 $null147
#$ns at 0.34 "$pareto147 start"
#
##Background: 494 to 495
#set n494 [$ns node]
#$n494 set-position -12.7 9.0;
#set n495 [$ns node]
#$n495 set-position 54.1 -70.3;
##Add GSL links
#$n494 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n495 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp148 [new Agent/UDP]
#$ns attach-agent $n494 $udp148
#set pareto148 [new Application/Traffic/Pareto]
#$pareto148 attach-agent $udp148
#$pareto148 set packetSize_ 1000
#$pareto148 set rate_ 1000Kb
#set null148 [new Agent/Null]
#$ns attach-agent $n495 $null148
#$ns connect $udp148 $null148
#$ns at 0.03 "$pareto148 start"
#
##Background: 496 to 497
#set n496 [$ns node]
#$n496 set-position 4.2 35.6;
#set n497 [$ns node]
#$n497 set-position 40.2 -74.0;
##Add GSL links
#$n496 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n497 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp149 [new Agent/UDP]
#$ns attach-agent $n496 $udp149
#set pareto149 [new Application/Traffic/Pareto]
#$pareto149 attach-agent $udp149
#$pareto149 set packetSize_ 1000
#$pareto149 set rate_ 1000Kb
#set null149 [new Agent/Null]
#$ns attach-agent $n497 $null149
#$ns connect $udp149 $null149
#$ns at 0.03 "$pareto149 start"
#
##Background: 498 to 499
#set n498 [$ns node]
#$n498 set-position -18.0 43.9;
#set n499 [$ns node]
#$n499 set-position 21.3 -70.7;
##Add GSL links
#$n498 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n499 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp150 [new Agent/UDP]
#$ns attach-agent $n498 $udp150
#set pareto150 [new Application/Traffic/Pareto]
#$pareto150 attach-agent $udp150
#$pareto150 set packetSize_ 1000
#$pareto150 set rate_ 1000Kb
#set null150 [new Agent/Null]
#$ns attach-agent $n499 $null150
#$ns connect $udp150 $null150
#$ns at 0.75 "$pareto150 start"
#
##Background: 500 to 501
#set n500 [$ns node]
#$n500 set-position -0.4 28.4;
#set n501 [$ns node]
#$n501 set-position 45.9 -73.5;
##Add GSL links
#$n500 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n501 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp151 [new Agent/UDP]
#$ns attach-agent $n500 $udp151
#set pareto151 [new Application/Traffic/Pareto]
#$pareto151 attach-agent $udp151
#$pareto151 set packetSize_ 1000
#$pareto151 set rate_ 1000Kb
#set null151 [new Agent/Null]
#$ns attach-agent $n501 $null151
#$ns connect $udp151 $null151
#$ns at 0.08 "$pareto151 start"
#
##Background: 502 to 503
#set n502 [$ns node]
#$n502 set-position -11.7 26.3;
#set n503 [$ns node]
#$n503 set-position 59.0 -112.7;
##Add GSL links
#$n502 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n503 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp152 [new Agent/UDP]
#$ns attach-agent $n502 $udp152
#set pareto152 [new Application/Traffic/Pareto]
#$pareto152 attach-agent $udp152
#$pareto152 set packetSize_ 1000
#$pareto152 set rate_ 1000Kb
#set null152 [new Agent/Null]
#$ns attach-agent $n503 $null152
#$ns connect $udp152 $null152
#$ns at 0.32 "$pareto152 start"
#
##Background: 504 to 505
#set n504 [$ns node]
#$n504 set-position -9.9 41.0;
#set n505 [$ns node]
#$n505 set-position 59.1 -99.2;
##Add GSL links
#$n504 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n505 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp153 [new Agent/UDP]
#$ns attach-agent $n504 $udp153
#set pareto153 [new Application/Traffic/Pareto]
#$pareto153 attach-agent $udp153
#$pareto153 set packetSize_ 1000
#$pareto153 set rate_ 1000Kb
#set null153 [new Agent/Null]
#$ns attach-agent $n505 $null153
#$ns connect $udp153 $null153
#$ns at 0.67 "$pareto153 start"
#
##Background: 506 to 507
#set n506 [$ns node]
#$n506 set-position -2.5 38.3;
#set n507 [$ns node]
#$n507 set-position 55.7 -73.1;
##Add GSL links
#$n506 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n507 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp154 [new Agent/UDP]
#$ns attach-agent $n506 $udp154
#set pareto154 [new Application/Traffic/Pareto]
#$pareto154 attach-agent $udp154
#$pareto154 set packetSize_ 1000
#$pareto154 set rate_ 1000Kb
#set null154 [new Agent/Null]
#$ns attach-agent $n507 $null154
#$ns connect $udp154 $null154
#$ns at 0.33 "$pareto154 start"
#
##Background: 508 to 509
#set n508 [$ns node]
#$n508 set-position -23.8 11.1;
#set n509 [$ns node]
#$n509 set-position 23.9 -88.4;
##Add GSL links
#$n508 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n509 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp155 [new Agent/UDP]
#$ns attach-agent $n508 $udp155
#set pareto155 [new Application/Traffic/Pareto]
#$pareto155 attach-agent $udp155
#$pareto155 set packetSize_ 1000
#$pareto155 set rate_ 1000Kb
#set null155 [new Agent/Null]
#$ns attach-agent $n509 $null155
#$ns connect $udp155 $null155
#$ns at 0.73 "$pareto155 start"
#
##Background: 510 to 511
#set n510 [$ns node]
#$n510 set-position -10.7 3.6;
#set n511 [$ns node]
#$n511 set-position 26.4 -59.4;
##Add GSL links
#$n510 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n511 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp156 [new Agent/UDP]
#$ns attach-agent $n510 $udp156
#set pareto156 [new Application/Traffic/Pareto]
#$pareto156 attach-agent $udp156
#$pareto156 set packetSize_ 1000
#$pareto156 set rate_ 1000Kb
#set null156 [new Agent/Null]
#$ns attach-agent $n511 $null156
#$ns connect $udp156 $null156
#$ns at 0.80 "$pareto156 start"
#
##Background: 512 to 513
#set n512 [$ns node]
#$n512 set-position 14.1 10.2;
#set n513 [$ns node]
#$n513 set-position 21.6 -80.0;
##Add GSL links
#$n512 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n513 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp157 [new Agent/UDP]
#$ns attach-agent $n512 $udp157
#set pareto157 [new Application/Traffic/Pareto]
#$pareto157 attach-agent $udp157
#$pareto157 set packetSize_ 1000
#$pareto157 set rate_ 1000Kb
#set null157 [new Agent/Null]
#$ns attach-agent $n513 $null157
#$ns connect $udp157 $null157
#$ns at 0.70 "$pareto157 start"
#
##Background: 514 to 515
#set n514 [$ns node]
#$n514 set-position -17.4 18.5;
#set n515 [$ns node]
#$n515 set-position 33.5 -63.1;
##Add GSL links
#$n514 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n515 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp158 [new Agent/UDP]
#$ns attach-agent $n514 $udp158
#set pareto158 [new Application/Traffic/Pareto]
#$pareto158 attach-agent $udp158
#$pareto158 set packetSize_ 1000
#$pareto158 set rate_ 1000Kb
#set null158 [new Agent/Null]
#$ns attach-agent $n515 $null158
#$ns connect $udp158 $null158
#$ns at 0.10 "$pareto158 start"
#
##Background: 516 to 517
#set n516 [$ns node]
#$n516 set-position -23.1 32.2;
#set n517 [$ns node]
#$n517 set-position 27.0 -74.0;
##Add GSL links
#$n516 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n517 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp159 [new Agent/UDP]
#$ns attach-agent $n516 $udp159
#set pareto159 [new Application/Traffic/Pareto]
#$pareto159 attach-agent $udp159
#$pareto159 set packetSize_ 1000
#$pareto159 set rate_ 1000Kb
#set null159 [new Agent/Null]
#$ns attach-agent $n517 $null159
#$ns connect $udp159 $null159
#$ns at 0.80 "$pareto159 start"
#
##Background: 518 to 519
#set n518 [$ns node]
#$n518 set-position -26.1 18.8;
#set n519 [$ns node]
#$n519 set-position 36.5 -95.2;
##Add GSL links
#$n518 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n519 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp160 [new Agent/UDP]
#$ns attach-agent $n518 $udp160
#set pareto160 [new Application/Traffic/Pareto]
#$pareto160 attach-agent $udp160
#$pareto160 set packetSize_ 1000
#$pareto160 set rate_ 1000Kb
#set null160 [new Agent/Null]
#$ns attach-agent $n519 $null160
#$ns connect $udp160 $null160
#$ns at 0.59 "$pareto160 start"
#
##Background: 520 to 521
#set n520 [$ns node]
#$n520 set-position -15.2 16.1;
#set n521 [$ns node]
#$n521 set-position 52.2 -101.2;
##Add GSL links
#$n520 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n521 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp161 [new Agent/UDP]
#$ns attach-agent $n520 $udp161
#set pareto161 [new Application/Traffic/Pareto]
#$pareto161 attach-agent $udp161
#$pareto161 set packetSize_ 1000
#$pareto161 set rate_ 1000Kb
#set null161 [new Agent/Null]
#$ns attach-agent $n521 $null161
#$ns connect $udp161 $null161
#$ns at 0.77 "$pareto161 start"
#
##Background: 522 to 523
#set n522 [$ns node]
#$n522 set-position -15.5 33.1;
#set n523 [$ns node]
#$n523 set-position 46.6 -73.9;
##Add GSL links
#$n522 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n523 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp162 [new Agent/UDP]
#$ns attach-agent $n522 $udp162
#set pareto162 [new Application/Traffic/Pareto]
#$pareto162 attach-agent $udp162
#$pareto162 set packetSize_ 1000
#$pareto162 set rate_ 1000Kb
#set null162 [new Agent/Null]
#$ns attach-agent $n523 $null162
#$ns connect $udp162 $null162
#$ns at 0.37 "$pareto162 start"
#
##Background: 524 to 525
#set n524 [$ns node]
#$n524 set-position 34.8 15.2;
#set n525 [$ns node]
#$n525 set-position 39.1 -133.6;
##Add GSL links
#$n524 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n525 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp163 [new Agent/UDP]
#$ns attach-agent $n524 $udp163
#set pareto163 [new Application/Traffic/Pareto]
#$pareto163 attach-agent $udp163
#$pareto163 set packetSize_ 1000
#$pareto163 set rate_ 1000Kb
#set null163 [new Agent/Null]
#$ns attach-agent $n525 $null163
#$ns connect $udp163 $null163
#$ns at 0.52 "$pareto163 start"
#
##Background: 526 to 527
#set n526 [$ns node]
#$n526 set-position -28.9 29.2;
#set n527 [$ns node]
#$n527 set-position 28.7 -125.4;
##Add GSL links
#$n526 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n527 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp164 [new Agent/UDP]
#$ns attach-agent $n526 $udp164
#set pareto164 [new Application/Traffic/Pareto]
#$pareto164 attach-agent $udp164
#$pareto164 set packetSize_ 1000
#$pareto164 set rate_ 1000Kb
#set null164 [new Agent/Null]
#$ns attach-agent $n527 $null164
#$ns connect $udp164 $null164
#$ns at 0.13 "$pareto164 start"
#
##Background: 528 to 529
#set n528 [$ns node]
#$n528 set-position -15.2 21.5;
#set n529 [$ns node]
#$n529 set-position 33.5 -123.0;
##Add GSL links
#$n528 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n529 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp165 [new Agent/UDP]
#$ns attach-agent $n528 $udp165
#set pareto165 [new Application/Traffic/Pareto]
#$pareto165 attach-agent $udp165
#$pareto165 set packetSize_ 1000
#$pareto165 set rate_ 1000Kb
#set null165 [new Agent/Null]
#$ns attach-agent $n529 $null165
#$ns connect $udp165 $null165
#$ns at 0.78 "$pareto165 start"
#
##Background: 530 to 531
#set n530 [$ns node]
#$n530 set-position -18.3 11.2;
#set n531 [$ns node]
#$n531 set-position 36.6 -121.7;
##Add GSL links
#$n530 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n531 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp166 [new Agent/UDP]
#$ns attach-agent $n530 $udp166
#set pareto166 [new Application/Traffic/Pareto]
#$pareto166 attach-agent $udp166
#$pareto166 set packetSize_ 1000
#$pareto166 set rate_ 1000Kb
#set null166 [new Agent/Null]
#$ns attach-agent $n531 $null166
#$ns connect $udp166 $null166
#$ns at 0.60 "$pareto166 start"
#
##Background: 532 to 533
#set n532 [$ns node]
#$n532 set-position 22.7 38.3;
#set n533 [$ns node]
#$n533 set-position 27.1 -65.1;
##Add GSL links
#$n532 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n533 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp167 [new Agent/UDP]
#$ns attach-agent $n532 $udp167
#set pareto167 [new Application/Traffic/Pareto]
#$pareto167 attach-agent $udp167
#$pareto167 set packetSize_ 1000
#$pareto167 set rate_ 1000Kb
#set null167 [new Agent/Null]
#$ns attach-agent $n533 $null167
#$ns connect $udp167 $null167
#$ns at 0.21 "$pareto167 start"
#
##Background: 534 to 535
#set n534 [$ns node]
#$n534 set-position -24.9 4.6;
#set n535 [$ns node]
#$n535 set-position -24.8 -63.3;
##Add GSL links
#$n534 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n535 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp168 [new Agent/UDP]
#$ns attach-agent $n534 $udp168
#set pareto168 [new Application/Traffic/Pareto]
#$pareto168 attach-agent $udp168
#$pareto168 set packetSize_ 1000
#$pareto168 set rate_ 1000Kb
#set null168 [new Agent/Null]
#$ns attach-agent $n535 $null168
#$ns connect $udp168 $null168
#$ns at 0.57 "$pareto168 start"
#
##Background: 536 to 537
#set n536 [$ns node]
#$n536 set-position -25.9 1.5;
#set n537 [$ns node]
#$n537 set-position 40.9 -1.7;
##Add GSL links
#$n536 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n537 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp169 [new Agent/UDP]
#$ns attach-agent $n536 $udp169
#set pareto169 [new Application/Traffic/Pareto]
#$pareto169 attach-agent $udp169
#$pareto169 set packetSize_ 1000
#$pareto169 set rate_ 1000Kb
#set null169 [new Agent/Null]
#$ns attach-agent $n537 $null169
#$ns connect $udp169 $null169
#$ns at 0.31 "$pareto169 start"
#
##Background: 538 to 539
#set n538 [$ns node]
#$n538 set-position 31.3 4.4;
#set n539 [$ns node]
#$n539 set-position 57.5 -9.8;
##Add GSL links
#$n538 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n539 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp170 [new Agent/UDP]
#$ns attach-agent $n538 $udp170
#set pareto170 [new Application/Traffic/Pareto]
#$pareto170 attach-agent $udp170
#$pareto170 set packetSize_ 1000
#$pareto170 set rate_ 1000Kb
#set null170 [new Agent/Null]
#$ns attach-agent $n539 $null170
#$ns connect $udp170 $null170
#$ns at 0.93 "$pareto170 start"
#
##Background: 540 to 541
#set n540 [$ns node]
#$n540 set-position 28.9 25.2;
#set n541 [$ns node]
#$n541 set-position 50.8 2.6;
##Add GSL links
#$n540 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n541 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp171 [new Agent/UDP]
#$ns attach-agent $n540 $udp171
#set pareto171 [new Application/Traffic/Pareto]
#$pareto171 attach-agent $udp171
#$pareto171 set packetSize_ 1000
#$pareto171 set rate_ 1000Kb
#set null171 [new Agent/Null]
#$ns attach-agent $n541 $null171
#$ns connect $udp171 $null171
#$ns at 0.25 "$pareto171 start"
#
##Background: 542 to 543
#set n542 [$ns node]
#$n542 set-position 3.6 -10.4;
#set n543 [$ns node]
#$n543 set-position 53.7 10.4;
##Add GSL links
#$n542 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n543 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp172 [new Agent/UDP]
#$ns attach-agent $n542 $udp172
#set pareto172 [new Application/Traffic/Pareto]
#$pareto172 attach-agent $udp172
#$pareto172 set packetSize_ 1000
#$pareto172 set rate_ 1000Kb
#set null172 [new Agent/Null]
#$ns attach-agent $n543 $null172
#$ns connect $udp172 $null172
#$ns at 0.31 "$pareto172 start"
#
##Background: 544 to 545
#set n544 [$ns node]
#$n544 set-position -20.3 28.3;
#set n545 [$ns node]
#$n545 set-position 56.4 1.9;
##Add GSL links
#$n544 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n545 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp173 [new Agent/UDP]
#$ns attach-agent $n544 $udp173
#set pareto173 [new Application/Traffic/Pareto]
#$pareto173 attach-agent $udp173
#$pareto173 set packetSize_ 1000
#$pareto173 set rate_ 1000Kb
#set null173 [new Agent/Null]
#$ns attach-agent $n545 $null173
#$ns connect $udp173 $null173
#$ns at 0.84 "$pareto173 start"
#
##Background: 546 to 547
#set n546 [$ns node]
#$n546 set-position -31.4 17.2;
#set n547 [$ns node]
#$n547 set-position 58.0 -1.0;
##Add GSL links
#$n546 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n547 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp174 [new Agent/UDP]
#$ns attach-agent $n546 $udp174
#set pareto174 [new Application/Traffic/Pareto]
#$pareto174 attach-agent $udp174
#$pareto174 set packetSize_ 1000
#$pareto174 set rate_ 1000Kb
#set null174 [new Agent/Null]
#$ns attach-agent $n547 $null174
#$ns connect $udp174 $null174
#$ns at 0.39 "$pareto174 start"
#
##Background: 548 to 549
#set n548 [$ns node]
#$n548 set-position -11.1 13.2;
#set n549 [$ns node]
#$n549 set-position 55.6 15.0;
##Add GSL links
#$n548 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n549 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp175 [new Agent/UDP]
#$ns attach-agent $n548 $udp175
#set pareto175 [new Application/Traffic/Pareto]
#$pareto175 attach-agent $udp175
#$pareto175 set packetSize_ 1000
#$pareto175 set rate_ 1000Kb
#set null175 [new Agent/Null]
#$ns attach-agent $n549 $null175
#$ns connect $udp175 $null175
#$ns at 0.17 "$pareto175 start"
#
##Background: 550 to 551
#set n550 [$ns node]
#$n550 set-position -1.1 46.3;
#set n551 [$ns node]
#$n551 set-position 41.3 26.4;
##Add GSL links
#$n550 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n551 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp176 [new Agent/UDP]
#$ns attach-agent $n550 $udp176
#set pareto176 [new Application/Traffic/Pareto]
#$pareto176 attach-agent $udp176
#$pareto176 set packetSize_ 1000
#$pareto176 set rate_ 1000Kb
#set null176 [new Agent/Null]
#$ns attach-agent $n551 $null176
#$ns connect $udp176 $null176
#$ns at 0.68 "$pareto176 start"
#
##Background: 552 to 553
#set n552 [$ns node]
#$n552 set-position -14.4 5.5;
#set n553 [$ns node]
#$n553 set-position 42.0 26.7;
##Add GSL links
#$n552 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n553 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp177 [new Agent/UDP]
#$ns attach-agent $n552 $udp177
#set pareto177 [new Application/Traffic/Pareto]
#$pareto177 attach-agent $udp177
#$pareto177 set packetSize_ 1000
#$pareto177 set rate_ 1000Kb
#set null177 [new Agent/Null]
#$ns attach-agent $n553 $null177
#$ns connect $udp177 $null177
#$ns at 0.34 "$pareto177 start"
#
##Background: 554 to 555
#set n554 [$ns node]
#$n554 set-position 19.5 -4.5;
#set n555 [$ns node]
#$n555 set-position 58.0 3.2;
##Add GSL links
#$n554 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n555 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp178 [new Agent/UDP]
#$ns attach-agent $n554 $udp178
#set pareto178 [new Application/Traffic/Pareto]
#$pareto178 attach-agent $udp178
#$pareto178 set packetSize_ 1000
#$pareto178 set rate_ 1000Kb
#set null178 [new Agent/Null]
#$ns attach-agent $n555 $null178
#$ns connect $udp178 $null178
#$ns at 0.62 "$pareto178 start"
#
##Background: 556 to 557
#set n556 [$ns node]
#$n556 set-position -13.9 13.0;
#set n557 [$ns node]
#$n557 set-position 44.5 32.5;
##Add GSL links
#$n556 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n557 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp179 [new Agent/UDP]
#$ns attach-agent $n556 $udp179
#set pareto179 [new Application/Traffic/Pareto]
#$pareto179 attach-agent $udp179
#$pareto179 set packetSize_ 1000
#$pareto179 set rate_ 1000Kb
#set null179 [new Agent/Null]
#$ns attach-agent $n557 $null179
#$ns connect $udp179 $null179
#$ns at 0.51 "$pareto179 start"
#
##Background: 558 to 559
#set n558 [$ns node]
#$n558 set-position -17.0 21.3;
#set n559 [$ns node]
#$n559 set-position 57.3 16.2;
##Add GSL links
#$n558 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n559 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp180 [new Agent/UDP]
#$ns attach-agent $n558 $udp180
#set pareto180 [new Application/Traffic/Pareto]
#$pareto180 attach-agent $udp180
#$pareto180 set packetSize_ 1000
#$pareto180 set rate_ 1000Kb
#set null180 [new Agent/Null]
#$ns attach-agent $n559 $null180
#$ns connect $udp180 $null180
#$ns at 0.04 "$pareto180 start"
#
##Background: 560 to 561
#set n560 [$ns node]
#$n560 set-position -3.6 45.2;
#set n561 [$ns node]
#$n561 set-position 43.8 17.0;
##Add GSL links
#$n560 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n561 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp181 [new Agent/UDP]
#$ns attach-agent $n560 $udp181
#set pareto181 [new Application/Traffic/Pareto]
#$pareto181 attach-agent $udp181
#$pareto181 set packetSize_ 1000
#$pareto181 set rate_ 1000Kb
#set null181 [new Agent/Null]
#$ns attach-agent $n561 $null181
#$ns connect $udp181 $null181
#$ns at 0.52 "$pareto181 start"
#
##Background: 562 to 563
#set n562 [$ns node]
#$n562 set-position 20.5 41.1;
#set n563 [$ns node]
#$n563 set-position 46.8 32.0;
##Add GSL links
#$n562 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n563 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp182 [new Agent/UDP]
#$ns attach-agent $n562 $udp182
#set pareto182 [new Application/Traffic/Pareto]
#$pareto182 attach-agent $udp182
#$pareto182 set packetSize_ 1000
#$pareto182 set rate_ 1000Kb
#set null182 [new Agent/Null]
#$ns attach-agent $n563 $null182
#$ns connect $udp182 $null182
#$ns at 0.25 "$pareto182 start"
#
##Background: 564 to 565
#set n564 [$ns node]
#$n564 set-position -26.4 42.7;
#set n565 [$ns node]
#$n565 set-position 58.3 -4.2;
##Add GSL links
#$n564 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n565 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp183 [new Agent/UDP]
#$ns attach-agent $n564 $udp183
#set pareto183 [new Application/Traffic/Pareto]
#$pareto183 attach-agent $udp183
#$pareto183 set packetSize_ 1000
#$pareto183 set rate_ 1000Kb
#set null183 [new Agent/Null]
#$ns attach-agent $n565 $null183
#$ns connect $udp183 $null183
#$ns at 0.46 "$pareto183 start"
#
##Background: 566 to 567
#set n566 [$ns node]
#$n566 set-position -28.3 25.6;
#set n567 [$ns node]
#$n567 set-position 20.1 -5.1;
##Add GSL links
#$n566 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n567 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp184 [new Agent/UDP]
#$ns attach-agent $n566 $udp184
#set pareto184 [new Application/Traffic/Pareto]
#$pareto184 attach-agent $udp184
#$pareto184 set packetSize_ 1000
#$pareto184 set rate_ 1000Kb
#set null184 [new Agent/Null]
#$ns attach-agent $n567 $null184
#$ns connect $udp184 $null184
#$ns at 0.88 "$pareto184 start"
#
##Background: 568 to 569
#set n568 [$ns node]
#$n568 set-position -3.7 26.0;
#set n569 [$ns node]
#$n569 set-position 7.0 10.9;
##Add GSL links
#$n568 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n569 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp185 [new Agent/UDP]
#$ns attach-agent $n568 $udp185
#set pareto185 [new Application/Traffic/Pareto]
#$pareto185 attach-agent $udp185
#$pareto185 set packetSize_ 1000
#$pareto185 set rate_ 1000Kb
#set null185 [new Agent/Null]
#$ns attach-agent $n569 $null185
#$ns connect $udp185 $null185
#$ns at 0.87 "$pareto185 start"
#
##Background: 570 to 571
#set n570 [$ns node]
#$n570 set-position -12.7 14.1;
#set n571 [$ns node]
#$n571 set-position -24.9 39.6;
##Add GSL links
#$n570 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n571 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp186 [new Agent/UDP]
#$ns attach-agent $n570 $udp186
#set pareto186 [new Application/Traffic/Pareto]
#$pareto186 attach-agent $udp186
#$pareto186 set packetSize_ 1000
#$pareto186 set rate_ 1000Kb
#set null186 [new Agent/Null]
#$ns attach-agent $n571 $null186
#$ns connect $udp186 $null186
#$ns at 0.03 "$pareto186 start"
#
##Background: 572 to 573
#set n572 [$ns node]
#$n572 set-position 0.7 21.2;
#set n573 [$ns node]
#$n573 set-position -29.3 39.7;
##Add GSL links
#$n572 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n573 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp187 [new Agent/UDP]
#$ns attach-agent $n572 $udp187
#set pareto187 [new Application/Traffic/Pareto]
#$pareto187 attach-agent $udp187
#$pareto187 set packetSize_ 1000
#$pareto187 set rate_ 1000Kb
#set null187 [new Agent/Null]
#$ns attach-agent $n573 $null187
#$ns connect $udp187 $null187
#$ns at 0.82 "$pareto187 start"
#
##Background: 574 to 575
#set n574 [$ns node]
#$n574 set-position -34.0 -14.6;
#set n575 [$ns node]
#$n575 set-position -0.7 -12.0;
##Add GSL links
#$n574 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n575 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp188 [new Agent/UDP]
#$ns attach-agent $n574 $udp188
#set pareto188 [new Application/Traffic/Pareto]
#$pareto188 attach-agent $udp188
#$pareto188 set packetSize_ 1000
#$pareto188 set rate_ 1000Kb
#set null188 [new Agent/Null]
#$ns attach-agent $n575 $null188
#$ns connect $udp188 $null188
#$ns at 0.74 "$pareto188 start"
#
##Background: 576 to 577
#set n576 [$ns node]
#$n576 set-position 27.1 6.8;
#set n577 [$ns node]
#$n577 set-position -9.7 30.6;
##Add GSL links
#$n576 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n577 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp189 [new Agent/UDP]
#$ns attach-agent $n576 $udp189
#set pareto189 [new Application/Traffic/Pareto]
#$pareto189 attach-agent $udp189
#$pareto189 set packetSize_ 1000
#$pareto189 set rate_ 1000Kb
#set null189 [new Agent/Null]
#$ns attach-agent $n577 $null189
#$ns connect $udp189 $null189
#$ns at 0.76 "$pareto189 start"
#
##Background: 578 to 579
#set n578 [$ns node]
#$n578 set-position 24.9 -2.5;
#set n579 [$ns node]
#$n579 set-position -31.8 25.3;
##Add GSL links
#$n578 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n579 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp190 [new Agent/UDP]
#$ns attach-agent $n578 $udp190
#set pareto190 [new Application/Traffic/Pareto]
#$pareto190 attach-agent $udp190
#$pareto190 set packetSize_ 1000
#$pareto190 set rate_ 1000Kb
#set null190 [new Agent/Null]
#$ns attach-agent $n579 $null190
#$ns connect $udp190 $null190
#$ns at 0.24 "$pareto190 start"
#
##Background: 580 to 581
#set n580 [$ns node]
#$n580 set-position -7.7 36.6;
#set n581 [$ns node]
#$n581 set-position 18.4 -5.7;
##Add GSL links
#$n580 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n581 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp191 [new Agent/UDP]
#$ns attach-agent $n580 $udp191
#set pareto191 [new Application/Traffic/Pareto]
#$pareto191 attach-agent $udp191
#$pareto191 set packetSize_ 1000
#$pareto191 set rate_ 1000Kb
#set null191 [new Agent/Null]
#$ns attach-agent $n581 $null191
#$ns connect $udp191 $null191
#$ns at 0.77 "$pareto191 start"
#
##Background: 582 to 583
#set n582 [$ns node]
#$n582 set-position 12.3 -8.1;
#set n583 [$ns node]
#$n583 set-position 22.0 -12.4;
##Add GSL links
#$n582 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n583 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp192 [new Agent/UDP]
#$ns attach-agent $n582 $udp192
#set pareto192 [new Application/Traffic/Pareto]
#$pareto192 attach-agent $udp192
#$pareto192 set packetSize_ 1000
#$pareto192 set rate_ 1000Kb
#set null192 [new Agent/Null]
#$ns attach-agent $n583 $null192
#$ns connect $udp192 $null192
#$ns at 0.67 "$pareto192 start"
#
##Background: 584 to 585
#set n584 [$ns node]
#$n584 set-position 32.4 43.3;
#set n585 [$ns node]
#$n585 set-position 23.0 38.1;
##Add GSL links
#$n584 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n585 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp193 [new Agent/UDP]
#$ns attach-agent $n584 $udp193
#set pareto193 [new Application/Traffic/Pareto]
#$pareto193 attach-agent $udp193
#$pareto193 set packetSize_ 1000
#$pareto193 set rate_ 1000Kb
#set null193 [new Agent/Null]
#$ns attach-agent $n585 $null193
#$ns connect $udp193 $null193
#$ns at 0.30 "$pareto193 start"
#
##Background: 586 to 587
#set n586 [$ns node]
#$n586 set-position 26.4 -5.7;
#set n587 [$ns node]
#$n587 set-position 43.4 130.8;
##Add GSL links
#$n586 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n587 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp194 [new Agent/UDP]
#$ns attach-agent $n586 $udp194
#set pareto194 [new Application/Traffic/Pareto]
#$pareto194 attach-agent $udp194
#$pareto194 set packetSize_ 1000
#$pareto194 set rate_ 1000Kb
#set null194 [new Agent/Null]
#$ns attach-agent $n587 $null194
#$ns connect $udp194 $null194
#$ns at 0.73 "$pareto194 start"
#
##Background: 588 to 589
#set n588 [$ns node]
#$n588 set-position -33.9 43.1;
#set n589 [$ns node]
#$n589 set-position 29.1 131.4;
##Add GSL links
#$n588 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n589 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp195 [new Agent/UDP]
#$ns attach-agent $n588 $udp195
#set pareto195 [new Application/Traffic/Pareto]
#$pareto195 attach-agent $udp195
#$pareto195 set packetSize_ 1000
#$pareto195 set rate_ 1000Kb
#set null195 [new Agent/Null]
#$ns attach-agent $n589 $null195
#$ns connect $udp195 $null195
#$ns at 0.37 "$pareto195 start"
#
##Background: 590 to 591
#set n590 [$ns node]
#$n590 set-position 11.8 46.6;
#set n591 [$ns node]
#$n591 set-position -18.8 160.2;
##Add GSL links
#$n590 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n591 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp196 [new Agent/UDP]
#$ns attach-agent $n590 $udp196
#set pareto196 [new Application/Traffic/Pareto]
#$pareto196 attach-agent $udp196
#$pareto196 set packetSize_ 1000
#$pareto196 set rate_ 1000Kb
#set null196 [new Agent/Null]
#$ns attach-agent $n591 $null196
#$ns connect $udp196 $null196
#$ns at 0.19 "$pareto196 start"
#
##Background: 592 to 593
#set n592 [$ns node]
#$n592 set-position 3.8 92.5;
#set n593 [$ns node]
#$n593 set-position 58.7 -72.6;
##Add GSL links
#$n592 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n593 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp197 [new Agent/UDP]
#$ns attach-agent $n592 $udp197
#set pareto197 [new Application/Traffic/Pareto]
#$pareto197 attach-agent $udp197
#$pareto197 set packetSize_ 1000
#$pareto197 set rate_ 1000Kb
#set null197 [new Agent/Null]
#$ns attach-agent $n593 $null197
#$ns connect $udp197 $null197
#$ns at 0.71 "$pareto197 start"
#
##Background: 594 to 595
#set n594 [$ns node]
#$n594 set-position 31.5 99.7;
#set n595 [$ns node]
#$n595 set-position 44.0 -131.5;
##Add GSL links
#$n594 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n595 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp198 [new Agent/UDP]
#$ns attach-agent $n594 $udp198
#set pareto198 [new Application/Traffic/Pareto]
#$pareto198 attach-agent $udp198
#$pareto198 set packetSize_ 1000
#$pareto198 set rate_ 1000Kb
#set null198 [new Agent/Null]
#$ns attach-agent $n595 $null198
#$ns connect $udp198 $null198
#$ns at 0.24 "$pareto198 start"
#
##Background: 596 to 597
#set n596 [$ns node]
#$n596 set-position 30.7 116.1;
#set n597 [$ns node]
#$n597 set-position 45.9 -116.3;
##Add GSL links
#$n596 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n597 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp199 [new Agent/UDP]
#$ns attach-agent $n596 $udp199
#set pareto199 [new Application/Traffic/Pareto]
#$pareto199 attach-agent $udp199
#$pareto199 set packetSize_ 1000
#$pareto199 set rate_ 1000Kb
#set null199 [new Agent/Null]
#$ns attach-agent $n597 $null199
#$ns connect $udp199 $null199
#$ns at 0.45 "$pareto199 start"
#
##Background: 598 to 599
#set n598 [$ns node]
#$n598 set-position 29.2 50.2;
#set n599 [$ns node]
#$n599 set-position 23.8 -77.2;
##Add GSL links
#$n598 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n599 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp200 [new Agent/UDP]
#$ns attach-agent $n598 $udp200
#set pareto200 [new Application/Traffic/Pareto]
#$pareto200 attach-agent $udp200
#$pareto200 set packetSize_ 1000
#$pareto200 set rate_ 1000Kb
#set null200 [new Agent/Null]
#$ns attach-agent $n599 $null200
#$ns connect $udp200 $null200
#$ns at 0.12 "$pareto200 start"
#
##Background: 600 to 601
#set n600 [$ns node]
#$n600 set-position 36.4 73.9;
#set n601 [$ns node]
#$n601 set-position 39.5 -79.5;
##Add GSL links
#$n600 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n601 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp201 [new Agent/UDP]
#$ns attach-agent $n600 $udp201
#set pareto201 [new Application/Traffic/Pareto]
#$pareto201 attach-agent $udp201
#$pareto201 set packetSize_ 1000
#$pareto201 set rate_ 1000Kb
#set null201 [new Agent/Null]
#$ns attach-agent $n601 $null201
#$ns connect $udp201 $null201
#$ns at 0.06 "$pareto201 start"
#
##Background: 602 to 603
#set n602 [$ns node]
#$n602 set-position 28.4 127.5;
#set n603 [$ns node]
#$n603 set-position 52.2 -125.2;
##Add GSL links
#$n602 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n603 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp202 [new Agent/UDP]
#$ns attach-agent $n602 $udp202
#set pareto202 [new Application/Traffic/Pareto]
#$pareto202 attach-agent $udp202
#$pareto202 set packetSize_ 1000
#$pareto202 set rate_ 1000Kb
#set null202 [new Agent/Null]
#$ns attach-agent $n603 $null202
#$ns connect $udp202 $null202
#$ns at 0.80 "$pareto202 start"
#
##Background: 604 to 605
#set n604 [$ns node]
#$n604 set-position 4.1 98.6;
#set n605 [$ns node]
#$n605 set-position 20.5 -92.2;
##Add GSL links
#$n604 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n605 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp203 [new Agent/UDP]
#$ns attach-agent $n604 $udp203
#set pareto203 [new Application/Traffic/Pareto]
#$pareto203 attach-agent $udp203
#$pareto203 set packetSize_ 1000
#$pareto203 set rate_ 1000Kb
#set null203 [new Agent/Null]
#$ns attach-agent $n605 $null203
#$ns connect $udp203 $null203
#$ns at 0.60 "$pareto203 start"
#
##Background: 606 to 607
#set n606 [$ns node]
#$n606 set-position 2.8 79.5;
#set n607 [$ns node]
#$n607 set-position 20.9 -78.2;
##Add GSL links
#$n606 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n607 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp204 [new Agent/UDP]
#$ns attach-agent $n606 $udp204
#set pareto204 [new Application/Traffic/Pareto]
#$pareto204 attach-agent $udp204
#$pareto204 set packetSize_ 1000
#$pareto204 set rate_ 1000Kb
#set null204 [new Agent/Null]
#$ns attach-agent $n607 $null204
#$ns connect $udp204 $null204
#$ns at 0.33 "$pareto204 start"
#
##Background: 608 to 609
#set n608 [$ns node]
#$n608 set-position 13.5 92.8;
#set n609 [$ns node]
#$n609 set-position 44.6 -70.5;
##Add GSL links
#$n608 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n609 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp205 [new Agent/UDP]
#$ns attach-agent $n608 $udp205
#set pareto205 [new Application/Traffic/Pareto]
#$pareto205 attach-agent $udp205
#$pareto205 set packetSize_ 1000
#$pareto205 set rate_ 1000Kb
#set null205 [new Agent/Null]
#$ns attach-agent $n609 $null205
#$ns connect $udp205 $null205
#$ns at 0.67 "$pareto205 start"
#
##Background: 610 to 611
#set n610 [$ns node]
#$n610 set-position -0.9 78.7;
#set n611 [$ns node]
#$n611 set-position 42.1 -126.8;
##Add GSL links
#$n610 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n611 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp206 [new Agent/UDP]
#$ns attach-agent $n610 $udp206
#set pareto206 [new Application/Traffic/Pareto]
#$pareto206 attach-agent $udp206
#$pareto206 set packetSize_ 1000
#$pareto206 set rate_ 1000Kb
#set null206 [new Agent/Null]
#$ns attach-agent $n611 $null206
#$ns connect $udp206 $null206
#$ns at 0.17 "$pareto206 start"
#
##Background: 612 to 613
#set n612 [$ns node]
#$n612 set-position 13.5 54.6;
#set n613 [$ns node]
#$n613 set-position 50.7 -57.0;
##Add GSL links
#$n612 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n613 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp207 [new Agent/UDP]
#$ns attach-agent $n612 $udp207
#set pareto207 [new Application/Traffic/Pareto]
#$pareto207 attach-agent $udp207
#$pareto207 set packetSize_ 1000
#$pareto207 set rate_ 1000Kb
#set null207 [new Agent/Null]
#$ns attach-agent $n613 $null207
#$ns connect $udp207 $null207
#$ns at 0.53 "$pareto207 start"
#
##Background: 614 to 615
#set n614 [$ns node]
#$n614 set-position 6.3 131.6;
#set n615 [$ns node]
#$n615 set-position 52.9 -71.5;
##Add GSL links
#$n614 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n615 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp208 [new Agent/UDP]
#$ns attach-agent $n614 $udp208
#set pareto208 [new Application/Traffic/Pareto]
#$pareto208 attach-agent $udp208
#$pareto208 set packetSize_ 1000
#$pareto208 set rate_ 1000Kb
#set null208 [new Agent/Null]
#$ns attach-agent $n615 $null208
#$ns connect $udp208 $null208
#$ns at 0.14 "$pareto208 start"
#
##Background: 616 to 617
#set n616 [$ns node]
#$n616 set-position 1.1 57.8;
#set n617 [$ns node]
#$n617 set-position 40.2 -68.4;
##Add GSL links
#$n616 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n617 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp209 [new Agent/UDP]
#$ns attach-agent $n616 $udp209
#set pareto209 [new Application/Traffic/Pareto]
#$pareto209 attach-agent $udp209
#$pareto209 set packetSize_ 1000
#$pareto209 set rate_ 1000Kb
#set null209 [new Agent/Null]
#$ns attach-agent $n617 $null209
#$ns connect $udp209 $null209
#$ns at 0.08 "$pareto209 start"
#
##Background: 618 to 619
#set n618 [$ns node]
#$n618 set-position -3.8 124.5;
#set n619 [$ns node]
#$n619 set-position 30.6 -62.6;
##Add GSL links
#$n618 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n619 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp210 [new Agent/UDP]
#$ns attach-agent $n618 $udp210
#set pareto210 [new Application/Traffic/Pareto]
#$pareto210 attach-agent $udp210
#$pareto210 set packetSize_ 1000
#$pareto210 set rate_ 1000Kb
#set null210 [new Agent/Null]
#$ns attach-agent $n619 $null210
#$ns connect $udp210 $null210
#$ns at 0.15 "$pareto210 start"
#
##Background: 620 to 621
#set n620 [$ns node]
#$n620 set-position 44.1 55.9;
#set n621 [$ns node]
#$n621 set-position 59.5 -111.3;
##Add GSL links
#$n620 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n621 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp211 [new Agent/UDP]
#$ns attach-agent $n620 $udp211
#set pareto211 [new Application/Traffic/Pareto]
#$pareto211 attach-agent $udp211
#$pareto211 set packetSize_ 1000
#$pareto211 set rate_ 1000Kb
#set null211 [new Agent/Null]
#$ns attach-agent $n621 $null211
#$ns connect $udp211 $null211
#$ns at 0.06 "$pareto211 start"
#
##Background: 622 to 623
#set n622 [$ns node]
#$n622 set-position 6.3 88.1;
#set n623 [$ns node]
#$n623 set-position -50.5 -46.6;
##Add GSL links
#$n622 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n623 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp212 [new Agent/UDP]
#$ns attach-agent $n622 $udp212
#set pareto212 [new Application/Traffic/Pareto]
#$pareto212 attach-agent $udp212
#$pareto212 set packetSize_ 1000
#$pareto212 set rate_ 1000Kb
#set null212 [new Agent/Null]
#$ns attach-agent $n623 $null212
#$ns connect $udp212 $null212
#$ns at 0.63 "$pareto212 start"
#
##Background: 624 to 625
#set n624 [$ns node]
#$n624 set-position 11.3 117.0;
#set n625 [$ns node]
#$n625 set-position 35.9 -3.0;
##Add GSL links
#$n624 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n625 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp213 [new Agent/UDP]
#$ns attach-agent $n624 $udp213
#set pareto213 [new Application/Traffic/Pareto]
#$pareto213 attach-agent $udp213
#$pareto213 set packetSize_ 1000
#$pareto213 set rate_ 1000Kb
#set null213 [new Agent/Null]
#$ns attach-agent $n625 $null213
#$ns connect $udp213 $null213
#$ns at 0.02 "$pareto213 start"
#
##Background: 626 to 627
#set n626 [$ns node]
#$n626 set-position 31.4 48.5;
#set n627 [$ns node]
#$n627 set-position 36.9 24.3;
##Add GSL links
#$n626 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n627 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp214 [new Agent/UDP]
#$ns attach-agent $n626 $udp214
#set pareto214 [new Application/Traffic/Pareto]
#$pareto214 attach-agent $udp214
#$pareto214 set packetSize_ 1000
#$pareto214 set rate_ 1000Kb
#set null214 [new Agent/Null]
#$ns attach-agent $n627 $null214
#$ns connect $udp214 $null214
#$ns at 0.70 "$pareto214 start"
#
##Background: 628 to 629
#set n628 [$ns node]
#$n628 set-position 38.5 80.6;
#set n629 [$ns node]
#$n629 set-position 50.0 28.8;
##Add GSL links
#$n628 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n629 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp215 [new Agent/UDP]
#$ns attach-agent $n628 $udp215
#set pareto215 [new Application/Traffic/Pareto]
#$pareto215 attach-agent $udp215
#$pareto215 set packetSize_ 1000
#$pareto215 set rate_ 1000Kb
#set null215 [new Agent/Null]
#$ns attach-agent $n629 $null215
#$ns connect $udp215 $null215
#$ns at 0.23 "$pareto215 start"
#
##Background: 630 to 631
#set n630 [$ns node]
#$n630 set-position -4.0 70.2;
#set n631 [$ns node]
#$n631 set-position 57.0 -8.4;
##Add GSL links
#$n630 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n631 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp216 [new Agent/UDP]
#$ns attach-agent $n630 $udp216
#set pareto216 [new Application/Traffic/Pareto]
#$pareto216 attach-agent $udp216
#$pareto216 set packetSize_ 1000
#$pareto216 set rate_ 1000Kb
#set null216 [new Agent/Null]
#$ns attach-agent $n631 $null216
#$ns connect $udp216 $null216
#$ns at 0.26 "$pareto216 start"
#
##Background: 632 to 633
#set n632 [$ns node]
#$n632 set-position 33.7 55.7;
#set n633 [$ns node]
#$n633 set-position 43.6 3.3;
##Add GSL links
#$n632 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n633 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp217 [new Agent/UDP]
#$ns attach-agent $n632 $udp217
#set pareto217 [new Application/Traffic/Pareto]
#$pareto217 attach-agent $udp217
#$pareto217 set packetSize_ 1000
#$pareto217 set rate_ 1000Kb
#set null217 [new Agent/Null]
#$ns attach-agent $n633 $null217
#$ns connect $udp217 $null217
#$ns at 0.97 "$pareto217 start"
#
##Background: 634 to 635
#set n634 [$ns node]
#$n634 set-position -0.8 109.8;
#set n635 [$ns node]
#$n635 set-position 28.0 13.8;
##Add GSL links
#$n634 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n635 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp218 [new Agent/UDP]
#$ns attach-agent $n634 $udp218
#set pareto218 [new Application/Traffic/Pareto]
#$pareto218 attach-agent $udp218
#$pareto218 set packetSize_ 1000
#$pareto218 set rate_ 1000Kb
#set null218 [new Agent/Null]
#$ns attach-agent $n635 $null218
#$ns connect $udp218 $null218
#$ns at 0.84 "$pareto218 start"
#
##Background: 636 to 637
#set n636 [$ns node]
#$n636 set-position 24.3 40.3;
#set n637 [$ns node]
#$n637 set-position 45.4 70.4;
##Add GSL links
#$n636 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n637 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp219 [new Agent/UDP]
#$ns attach-agent $n636 $udp219
#set pareto219 [new Application/Traffic/Pareto]
#$pareto219 attach-agent $udp219
#$pareto219 set packetSize_ 1000
#$pareto219 set rate_ 1000Kb
#set null219 [new Agent/Null]
#$ns attach-agent $n637 $null219
#$ns connect $udp219 $null219
#$ns at 0.73 "$pareto219 start"
#
##Background: 638 to 639
#set n638 [$ns node]
#$n638 set-position 40.9 121.8;
#set n639 [$ns node]
#$n639 set-position 25.8 92.8;
##Add GSL links
#$n638 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n639 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp220 [new Agent/UDP]
#$ns attach-agent $n638 $udp220
#set pareto220 [new Application/Traffic/Pareto]
#$pareto220 attach-agent $udp220
#$pareto220 set packetSize_ 1000
#$pareto220 set rate_ 1000Kb
#set null220 [new Agent/Null]
#$ns attach-agent $n639 $null220
#$ns connect $udp220 $null220
#$ns at 0.64 "$pareto220 start"
#
##Background: 640 to 641
#set n640 [$ns node]
#$n640 set-position 8.0 96.5;
#set n641 [$ns node]
#$n641 set-position 2.0 133.2;
##Add GSL links
#$n640 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n641 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp221 [new Agent/UDP]
#$ns attach-agent $n640 $udp221
#set pareto221 [new Application/Traffic/Pareto]
#$pareto221 attach-agent $udp221
#$pareto221 set packetSize_ 1000
#$pareto221 set rate_ 1000Kb
#set null221 [new Agent/Null]
#$ns attach-agent $n641 $null221
#$ns connect $udp221 $null221
#$ns at 0.53 "$pareto221 start"
#
##Background: 642 to 643
#set n642 [$ns node]
#$n642 set-position 14.5 59.2;
#set n643 [$ns node]
#$n643 set-position 15.6 56.7;
##Add GSL links
#$n642 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n643 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp222 [new Agent/UDP]
#$ns attach-agent $n642 $udp222
#set pareto222 [new Application/Traffic/Pareto]
#$pareto222 attach-agent $udp222
#$pareto222 set packetSize_ 1000
#$pareto222 set rate_ 1000Kb
#set null222 [new Agent/Null]
#$ns attach-agent $n643 $null222
#$ns connect $udp222 $null222
#$ns at 0.11 "$pareto222 start"
#
##Background: 644 to 645
#set n644 [$ns node]
#$n644 set-position 53.2 105.5;
#set n645 [$ns node]
#$n645 set-position 32.0 107.0;
##Add GSL links
#$n644 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n645 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp223 [new Agent/UDP]
#$ns attach-agent $n644 $udp223
#set pareto223 [new Application/Traffic/Pareto]
#$pareto223 attach-agent $udp223
#$pareto223 set packetSize_ 1000
#$pareto223 set rate_ 1000Kb
#set null223 [new Agent/Null]
#$ns attach-agent $n645 $null223
#$ns connect $udp223 $null223
#$ns at 0.40 "$pareto223 start"
#
##Background: 646 to 647
#set n646 [$ns node]
#$n646 set-position 16.7 41.5;
#set n647 [$ns node]
#$n647 set-position 58.8 69.7;
##Add GSL links
#$n646 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n647 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp224 [new Agent/UDP]
#$ns attach-agent $n646 $udp224
#set pareto224 [new Application/Traffic/Pareto]
#$pareto224 attach-agent $udp224
#$pareto224 set packetSize_ 1000
#$pareto224 set rate_ 1000Kb
#set null224 [new Agent/Null]
#$ns attach-agent $n647 $null224
#$ns connect $udp224 $null224
#$ns at 0.05 "$pareto224 start"
#
##Background: 648 to 649
#set n648 [$ns node]
#$n648 set-position -2.8 99.2;
#set n649 [$ns node]
#$n649 set-position 20.8 87.9;
##Add GSL links
#$n648 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n649 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp225 [new Agent/UDP]
#$ns attach-agent $n648 $udp225
#set pareto225 [new Application/Traffic/Pareto]
#$pareto225 attach-agent $udp225
#$pareto225 set packetSize_ 1000
#$pareto225 set rate_ 1000Kb
#set null225 [new Agent/Null]
#$ns attach-agent $n649 $null225
#$ns connect $udp225 $null225
#$ns at 0.96 "$pareto225 start"
#
##Background: 650 to 651
#set n650 [$ns node]
#$n650 set-position 53.1 138.8;
#set n651 [$ns node]
#$n651 set-position 1.7 114.1;
##Add GSL links
#$n650 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n651 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp226 [new Agent/UDP]
#$ns attach-agent $n650 $udp226
#set pareto226 [new Application/Traffic/Pareto]
#$pareto226 attach-agent $udp226
#$pareto226 set packetSize_ 1000
#$pareto226 set rate_ 1000Kb
#set null226 [new Agent/Null]
#$ns attach-agent $n651 $null226
#$ns connect $udp226 $null226
#$ns at 0.68 "$pareto226 start"
#
##Background: 652 to 653
#set n652 [$ns node]
#$n652 set-position 43.1 112.3;
#set n653 [$ns node]
#$n653 set-position 53.3 80.3;
##Add GSL links
#$n652 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n653 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp227 [new Agent/UDP]
#$ns attach-agent $n652 $udp227
#set pareto227 [new Application/Traffic/Pareto]
#$pareto227 attach-agent $udp227
#$pareto227 set packetSize_ 1000
#$pareto227 set rate_ 1000Kb
#set null227 [new Agent/Null]
#$ns attach-agent $n653 $null227
#$ns connect $udp227 $null227
#$ns at 0.55 "$pareto227 start"
#
##Background: 654 to 655
#set n654 [$ns node]
#$n654 set-position -1.3 129.9;
#set n655 [$ns node]
#$n655 set-position 9.7 129.5;
##Add GSL links
#$n654 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n655 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp228 [new Agent/UDP]
#$ns attach-agent $n654 $udp228
#set pareto228 [new Application/Traffic/Pareto]
#$pareto228 attach-agent $udp228
#$pareto228 set packetSize_ 1000
#$pareto228 set rate_ 1000Kb
#set null228 [new Agent/Null]
#$ns attach-agent $n655 $null228
#$ns connect $udp228 $null228
#$ns at 0.66 "$pareto228 start"
#
##Background: 656 to 657
#set n656 [$ns node]
#$n656 set-position 30.8 107.7;
#set n657 [$ns node]
#$n657 set-position 22.3 47.9;
##Add GSL links
#$n656 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n657 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp229 [new Agent/UDP]
#$ns attach-agent $n656 $udp229
#set pareto229 [new Application/Traffic/Pareto]
#$pareto229 attach-agent $udp229
#$pareto229 set packetSize_ 1000
#$pareto229 set rate_ 1000Kb
#set null229 [new Agent/Null]
#$ns attach-agent $n657 $null229
#$ns connect $udp229 $null229
#$ns at 0.48 "$pareto229 start"
#
##Background: 658 to 659
#set n658 [$ns node]
#$n658 set-position 46.3 139.8;
#set n659 [$ns node]
#$n659 set-position 41.5 110.1;
##Add GSL links
#$n658 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n659 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp230 [new Agent/UDP]
#$ns attach-agent $n658 $udp230
#set pareto230 [new Application/Traffic/Pareto]
#$pareto230 attach-agent $udp230
#$pareto230 set packetSize_ 1000
#$pareto230 set rate_ 1000Kb
#set null230 [new Agent/Null]
#$ns attach-agent $n659 $null230
#$ns connect $udp230 $null230
#$ns at 0.48 "$pareto230 start"
#
##Background: 660 to 661
#set n660 [$ns node]
#$n660 set-position 22.0 72.6;
#set n661 [$ns node]
#$n661 set-position 14.0 97.8;
##Add GSL links
#$n660 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n661 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp231 [new Agent/UDP]
#$ns attach-agent $n660 $udp231
#set pareto231 [new Application/Traffic/Pareto]
#$pareto231 attach-agent $udp231
#$pareto231 set packetSize_ 1000
#$pareto231 set rate_ 1000Kb
#set null231 [new Agent/Null]
#$ns attach-agent $n661 $null231
#$ns connect $udp231 $null231
#$ns at 0.05 "$pareto231 start"
#
##Background: 662 to 663
#set n662 [$ns node]
#$n662 set-position 3.9 96.1;
#set n663 [$ns node]
#$n663 set-position 4.5 95.8;
##Add GSL links
#$n662 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n663 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp232 [new Agent/UDP]
#$ns attach-agent $n662 $udp232
#set pareto232 [new Application/Traffic/Pareto]
#$pareto232 attach-agent $udp232
#$pareto232 set packetSize_ 1000
#$pareto232 set rate_ 1000Kb
#set null232 [new Agent/Null]
#$ns attach-agent $n663 $null232
#$ns connect $udp232 $null232
#$ns at 0.52 "$pareto232 start"
#
##Background: 664 to 665
#set n664 [$ns node]
#$n664 set-position -3.7 134.1;
#set n665 [$ns node]
#$n665 set-position 37.5 79.8;
##Add GSL links
#$n664 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n665 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp233 [new Agent/UDP]
#$ns attach-agent $n664 $udp233
#set pareto233 [new Application/Traffic/Pareto]
#$pareto233 attach-agent $udp233
#$pareto233 set packetSize_ 1000
#$pareto233 set rate_ 1000Kb
#set null233 [new Agent/Null]
#$ns attach-agent $n665 $null233
#$ns connect $udp233 $null233
#$ns at 0.94 "$pareto233 start"
#
##Background: 666 to 667
#set n666 [$ns node]
#$n666 set-position -1.8 113.7;
#set n667 [$ns node]
#$n667 set-position 59.5 47.9;
##Add GSL links
#$n666 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n667 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp234 [new Agent/UDP]
#$ns attach-agent $n666 $udp234
#set pareto234 [new Application/Traffic/Pareto]
#$pareto234 attach-agent $udp234
#$pareto234 set packetSize_ 1000
#$pareto234 set rate_ 1000Kb
#set null234 [new Agent/Null]
#$ns attach-agent $n667 $null234
#$ns connect $udp234 $null234
#$ns at 0.32 "$pareto234 start"
#
##Background: 668 to 669
#set n668 [$ns node]
#$n668 set-position 26.4 64.0;
#set n669 [$ns node]
#$n669 set-position 36.2 98.7;
##Add GSL links
#$n668 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n669 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp235 [new Agent/UDP]
#$ns attach-agent $n668 $udp235
#set pareto235 [new Application/Traffic/Pareto]
#$pareto235 attach-agent $udp235
#$pareto235 set packetSize_ 1000
#$pareto235 set rate_ 1000Kb
#set null235 [new Agent/Null]
#$ns attach-agent $n669 $null235
#$ns connect $udp235 $null235
#$ns at 0.71 "$pareto235 start"
#
##Background: 670 to 671
#set n670 [$ns node]
#$n670 set-position 1.2 110.3;
#set n671 [$ns node]
#$n671 set-position 22.1 97.7;
##Add GSL links
#$n670 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n671 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp236 [new Agent/UDP]
#$ns attach-agent $n670 $udp236
#set pareto236 [new Application/Traffic/Pareto]
#$pareto236 attach-agent $udp236
#$pareto236 set packetSize_ 1000
#$pareto236 set rate_ 1000Kb
#set null236 [new Agent/Null]
#$ns attach-agent $n671 $null236
#$ns connect $udp236 $null236
#$ns at 0.06 "$pareto236 start"
#
##Background: 672 to 673
#set n672 [$ns node]
#$n672 set-position 31.9 69.7;
#set n673 [$ns node]
#$n673 set-position 13.2 41.2;
##Add GSL links
#$n672 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n673 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp237 [new Agent/UDP]
#$ns attach-agent $n672 $udp237
#set pareto237 [new Application/Traffic/Pareto]
#$pareto237 attach-agent $udp237
#$pareto237 set packetSize_ 1000
#$pareto237 set rate_ 1000Kb
#set null237 [new Agent/Null]
#$ns attach-agent $n673 $null237
#$ns connect $udp237 $null237
#$ns at 0.75 "$pareto237 start"
#
##Background: 674 to 675
#set n674 [$ns node]
#$n674 set-position 53.9 75.3;
#set n675 [$ns node]
#$n675 set-position 43.6 133.4;
##Add GSL links
#$n674 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n675 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp238 [new Agent/UDP]
#$ns attach-agent $n674 $udp238
#set pareto238 [new Application/Traffic/Pareto]
#$pareto238 attach-agent $udp238
#$pareto238 set packetSize_ 1000
#$pareto238 set rate_ 1000Kb
#set null238 [new Agent/Null]
#$ns attach-agent $n675 $null238
#$ns connect $udp238 $null238
#$ns at 0.11 "$pareto238 start"
#
##Background: 676 to 677
#set n676 [$ns node]
#$n676 set-position 49.0 114.9;
#set n677 [$ns node]
#$n677 set-position 10.4 126.7;
##Add GSL links
#$n676 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n677 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp239 [new Agent/UDP]
#$ns attach-agent $n676 $udp239
#set pareto239 [new Application/Traffic/Pareto]
#$pareto239 attach-agent $udp239
#$pareto239 set packetSize_ 1000
#$pareto239 set rate_ 1000Kb
#set null239 [new Agent/Null]
#$ns attach-agent $n677 $null239
#$ns connect $udp239 $null239
#$ns at 0.98 "$pareto239 start"
#
##Background: 678 to 679
#set n678 [$ns node]
#$n678 set-position 0.0 44.9;
#set n679 [$ns node]
#$n679 set-position 58.7 139.6;
##Add GSL links
#$n678 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n679 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp240 [new Agent/UDP]
#$ns attach-agent $n678 $udp240
#set pareto240 [new Application/Traffic/Pareto]
#$pareto240 attach-agent $udp240
#$pareto240 set packetSize_ 1000
#$pareto240 set rate_ 1000Kb
#set null240 [new Agent/Null]
#$ns attach-agent $n679 $null240
#$ns connect $udp240 $null240
#$ns at 0.78 "$pareto240 start"
#
##Background: 680 to 681
#set n680 [$ns node]
#$n680 set-position 17.0 121.2;
#set n681 [$ns node]
#$n681 set-position 37.0 73.4;
##Add GSL links
#$n680 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n681 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp241 [new Agent/UDP]
#$ns attach-agent $n680 $udp241
#set pareto241 [new Application/Traffic/Pareto]
#$pareto241 attach-agent $udp241
#$pareto241 set packetSize_ 1000
#$pareto241 set rate_ 1000Kb
#set null241 [new Agent/Null]
#$ns attach-agent $n681 $null241
#$ns connect $udp241 $null241
#$ns at 0.51 "$pareto241 start"
#
##Background: 682 to 683
#set n682 [$ns node]
#$n682 set-position 34.3 39.6;
#set n683 [$ns node]
#$n683 set-position 5.4 106.5;
##Add GSL links
#$n682 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n683 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp242 [new Agent/UDP]
#$ns attach-agent $n682 $udp242
#set pareto242 [new Application/Traffic/Pareto]
#$pareto242 attach-agent $udp242
#$pareto242 set packetSize_ 1000
#$pareto242 set rate_ 1000Kb
#set null242 [new Agent/Null]
#$ns attach-agent $n683 $null242
#$ns connect $udp242 $null242
#$ns at 0.23 "$pareto242 start"
#
##Background: 684 to 685
#set n684 [$ns node]
#$n684 set-position 36.3 123.4;
#set n685 [$ns node]
#$n685 set-position 2.0 64.5;
##Add GSL links
#$n684 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n685 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp243 [new Agent/UDP]
#$ns attach-agent $n684 $udp243
#set pareto243 [new Application/Traffic/Pareto]
#$pareto243 attach-agent $udp243
#$pareto243 set packetSize_ 1000
#$pareto243 set rate_ 1000Kb
#set null243 [new Agent/Null]
#$ns attach-agent $n685 $null243
#$ns connect $udp243 $null243
#$ns at 0.48 "$pareto243 start"
#
##Background: 686 to 687
#set n686 [$ns node]
#$n686 set-position 4.7 128.5;
#set n687 [$ns node]
#$n687 set-position 55.1 18.5;
##Add GSL links
#$n686 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n687 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp244 [new Agent/UDP]
#$ns attach-agent $n686 $udp244
#set pareto244 [new Application/Traffic/Pareto]
#$pareto244 attach-agent $udp244
#$pareto244 set packetSize_ 1000
#$pareto244 set rate_ 1000Kb
#set null244 [new Agent/Null]
#$ns attach-agent $n687 $null244
#$ns connect $udp244 $null244
#$ns at 0.71 "$pareto244 start"
#
##Background: 688 to 689
#set n688 [$ns node]
#$n688 set-position 41.4 52.7;
#set n689 [$ns node]
#$n689 set-position 42.1 11.8;
##Add GSL links
#$n688 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n689 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp245 [new Agent/UDP]
#$ns attach-agent $n688 $udp245
#set pareto245 [new Application/Traffic/Pareto]
#$pareto245 attach-agent $udp245
#$pareto245 set packetSize_ 1000
#$pareto245 set rate_ 1000Kb
#set null245 [new Agent/Null]
#$ns attach-agent $n689 $null245
#$ns connect $udp245 $null245
#$ns at 0.44 "$pareto245 start"
#
##Background: 690 to 691
#set n690 [$ns node]
#$n690 set-position 57.1 121.9;
#set n691 [$ns node]
#$n691 set-position 49.3 -4.0;
##Add GSL links
#$n690 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n691 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp246 [new Agent/UDP]
#$ns attach-agent $n690 $udp246
#set pareto246 [new Application/Traffic/Pareto]
#$pareto246 attach-agent $udp246
#$pareto246 set packetSize_ 1000
#$pareto246 set rate_ 1000Kb
#set null246 [new Agent/Null]
#$ns attach-agent $n691 $null246
#$ns connect $udp246 $null246
#$ns at 0.67 "$pareto246 start"
#
##Background: 692 to 693
#set n692 [$ns node]
#$n692 set-position -37.7 128.2;
#set n693 [$ns node]
#$n693 set-position 57.9 -70.6;
##Add GSL links
#$n692 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n693 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp247 [new Agent/UDP]
#$ns attach-agent $n692 $udp247
#set pareto247 [new Application/Traffic/Pareto]
#$pareto247 attach-agent $udp247
#$pareto247 set packetSize_ 1000
#$pareto247 set rate_ 1000Kb
#set null247 [new Agent/Null]
#$ns attach-agent $n693 $null247
#$ns connect $udp247 $null247
#$ns at 0.66 "$pareto247 start"
#
##Background: 694 to 695
#set n694 [$ns node]
#$n694 set-position -6.8 163.9;
#set n695 [$ns node]
#$n695 set-position 46.2 -126.3;
##Add GSL links
#$n694 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n695 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp248 [new Agent/UDP]
#$ns attach-agent $n694 $udp248
#set pareto248 [new Application/Traffic/Pareto]
#$pareto248 attach-agent $udp248
#$pareto248 set packetSize_ 1000
#$pareto248 set rate_ 1000Kb
#set null248 [new Agent/Null]
#$ns attach-agent $n695 $null248
#$ns connect $udp248 $null248
#$ns at 0.04 "$pareto248 start"
#
##Background: 696 to 697
#set n696 [$ns node]
#$n696 set-position -26.5 170.0;
#set n697 [$ns node]
#$n697 set-position 34.1 -69.3;
##Add GSL links
#$n696 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n697 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp249 [new Agent/UDP]
#$ns attach-agent $n696 $udp249
#set pareto249 [new Application/Traffic/Pareto]
#$pareto249 attach-agent $udp249
#$pareto249 set packetSize_ 1000
#$pareto249 set rate_ 1000Kb
#set null249 [new Agent/Null]
#$ns attach-agent $n697 $null249
#$ns connect $udp249 $null249
#$ns at 0.97 "$pareto249 start"
#
##Background: 698 to 699
#set n698 [$ns node]
#$n698 set-position -36.1 140.4;
#set n699 [$ns node]
#$n699 set-position 43.4 -80.9;
##Add GSL links
#$n698 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n699 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp250 [new Agent/UDP]
#$ns attach-agent $n698 $udp250
#set pareto250 [new Application/Traffic/Pareto]
#$pareto250 attach-agent $udp250
#$pareto250 set packetSize_ 1000
#$pareto250 set rate_ 1000Kb
#set null250 [new Agent/Null]
#$ns attach-agent $n699 $null250
#$ns connect $udp250 $null250
#$ns at 0.41 "$pareto250 start"
#
##Background: 700 to 701
#set n700 [$ns node]
#$n700 set-position -44.4 115.7;
#set n701 [$ns node]
#$n701 set-position 36.8 -82.1;
##Add GSL links
#$n700 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n701 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp251 [new Agent/UDP]
#$ns attach-agent $n700 $udp251
#set pareto251 [new Application/Traffic/Pareto]
#$pareto251 attach-agent $udp251
#$pareto251 set packetSize_ 1000
#$pareto251 set rate_ 1000Kb
#set null251 [new Agent/Null]
#$ns attach-agent $n701 $null251
#$ns connect $udp251 $null251
#$ns at 0.26 "$pareto251 start"
#
##Background: 702 to 703
#set n702 [$ns node]
#$n702 set-position -33.8 140.2;
#set n703 [$ns node]
#$n703 set-position 54.7 -64.3;
##Add GSL links
#$n702 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n703 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp252 [new Agent/UDP]
#$ns attach-agent $n702 $udp252
#set pareto252 [new Application/Traffic/Pareto]
#$pareto252 attach-agent $udp252
#$pareto252 set packetSize_ 1000
#$pareto252 set rate_ 1000Kb
#set null252 [new Agent/Null]
#$ns attach-agent $n703 $null252
#$ns connect $udp252 $null252
#$ns at 0.62 "$pareto252 start"
#
##Background: 704 to 705
#set n704 [$ns node]
#$n704 set-position -13.6 153.1;
#set n705 [$ns node]
#$n705 set-position 59.5 -110.5;
##Add GSL links
#$n704 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n705 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp253 [new Agent/UDP]
#$ns attach-agent $n704 $udp253
#set pareto253 [new Application/Traffic/Pareto]
#$pareto253 attach-agent $udp253
#$pareto253 set packetSize_ 1000
#$pareto253 set rate_ 1000Kb
#set null253 [new Agent/Null]
#$ns attach-agent $n705 $null253
#$ns connect $udp253 $null253
#$ns at 0.77 "$pareto253 start"
#
##Background: 706 to 707
#set n706 [$ns node]
#$n706 set-position -38.9 172.7;
#set n707 [$ns node]
#$n707 set-position 56.6 -67.4;
##Add GSL links
#$n706 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n707 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp254 [new Agent/UDP]
#$ns attach-agent $n706 $udp254
#set pareto254 [new Application/Traffic/Pareto]
#$pareto254 attach-agent $udp254
#$pareto254 set packetSize_ 1000
#$pareto254 set rate_ 1000Kb
#set null254 [new Agent/Null]
#$ns attach-agent $n707 $null254
#$ns connect $udp254 $null254
#$ns at 0.66 "$pareto254 start"
#
##Background: 708 to 709
#set n708 [$ns node]
#$n708 set-position -17.9 141.1;
#set n709 [$ns node]
#$n709 set-position 41.6 -93.8;
##Add GSL links
#$n708 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n709 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp255 [new Agent/UDP]
#$ns attach-agent $n708 $udp255
#set pareto255 [new Application/Traffic/Pareto]
#$pareto255 attach-agent $udp255
#$pareto255 set packetSize_ 1000
#$pareto255 set rate_ 1000Kb
#set null255 [new Agent/Null]
#$ns attach-agent $n709 $null255
#$ns connect $udp255 $null255
#$ns at 0.71 "$pareto255 start"
#
##Background: 710 to 711
#set n710 [$ns node]
#$n710 set-position -38.4 170.1;
#set n711 [$ns node]
#$n711 set-position 22.7 -105.0;
##Add GSL links
#$n710 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n711 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp256 [new Agent/UDP]
#$ns attach-agent $n710 $udp256
#set pareto256 [new Application/Traffic/Pareto]
#$pareto256 attach-agent $udp256
#$pareto256 set packetSize_ 1000
#$pareto256 set rate_ 1000Kb
#set null256 [new Agent/Null]
#$ns attach-agent $n711 $null256
#$ns connect $udp256 $null256
#$ns at 0.94 "$pareto256 start"
#
##Background: 712 to 713
#set n712 [$ns node]
#$n712 set-position -8.1 125.8;
#set n713 [$ns node]
#$n713 set-position 50.2 -86.1;
##Add GSL links
#$n712 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n713 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp257 [new Agent/UDP]
#$ns attach-agent $n712 $udp257
#set pareto257 [new Application/Traffic/Pareto]
#$pareto257 attach-agent $udp257
#$pareto257 set packetSize_ 1000
#$pareto257 set rate_ 1000Kb
#set null257 [new Agent/Null]
#$ns attach-agent $n713 $null257
#$ns connect $udp257 $null257
#$ns at 0.39 "$pareto257 start"
#
##Background: 714 to 715
#set n714 [$ns node]
#$n714 set-position -7.0 115.4;
#set n715 [$ns node]
#$n715 set-position 34.1 -62.3;
##Add GSL links
#$n714 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n715 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp258 [new Agent/UDP]
#$ns attach-agent $n714 $udp258
#set pareto258 [new Application/Traffic/Pareto]
#$pareto258 attach-agent $udp258
#$pareto258 set packetSize_ 1000
#$pareto258 set rate_ 1000Kb
#set null258 [new Agent/Null]
#$ns attach-agent $n715 $null258
#$ns connect $udp258 $null258
#$ns at 0.61 "$pareto258 start"
#
##Background: 716 to 717
#set n716 [$ns node]
#$n716 set-position -34.6 154.1;
#set n717 [$ns node]
#$n717 set-position 24.2 -89.9;
##Add GSL links
#$n716 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n717 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp259 [new Agent/UDP]
#$ns attach-agent $n716 $udp259
#set pareto259 [new Application/Traffic/Pareto]
#$pareto259 attach-agent $udp259
#$pareto259 set packetSize_ 1000
#$pareto259 set rate_ 1000Kb
#set null259 [new Agent/Null]
#$ns attach-agent $n717 $null259
#$ns connect $udp259 $null259
#$ns at 0.38 "$pareto259 start"
#
##Background: 718 to 719
#set n718 [$ns node]
#$n718 set-position -27.9 126.4;
#set n719 [$ns node]
#$n719 set-position 46.5 -81.2;
##Add GSL links
#$n718 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n719 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp260 [new Agent/UDP]
#$ns attach-agent $n718 $udp260
#set pareto260 [new Application/Traffic/Pareto]
#$pareto260 attach-agent $udp260
#$pareto260 set packetSize_ 1000
#$pareto260 set rate_ 1000Kb
#set null260 [new Agent/Null]
#$ns attach-agent $n719 $null260
#$ns connect $udp260 $null260
#$ns at 0.40 "$pareto260 start"
#
##Background: 720 to 721
#set n720 [$ns node]
#$n720 set-position -31.8 111.1;
#set n721 [$ns node]
#$n721 set-position 55.4 -105.0;
##Add GSL links
#$n720 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n721 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp261 [new Agent/UDP]
#$ns attach-agent $n720 $udp261
#set pareto261 [new Application/Traffic/Pareto]
#$pareto261 attach-agent $udp261
#$pareto261 set packetSize_ 1000
#$pareto261 set rate_ 1000Kb
#set null261 [new Agent/Null]
#$ns attach-agent $n721 $null261
#$ns connect $udp261 $null261
#$ns at 0.25 "$pareto261 start"
#
##Background: 722 to 723
#set n722 [$ns node]
#$n722 set-position -22.5 171.6;
#set n723 [$ns node]
#$n723 set-position 57.8 -109.8;
##Add GSL links
#$n722 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n723 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp262 [new Agent/UDP]
#$ns attach-agent $n722 $udp262
#set pareto262 [new Application/Traffic/Pareto]
#$pareto262 attach-agent $udp262
#$pareto262 set packetSize_ 1000
#$pareto262 set rate_ 1000Kb
#set null262 [new Agent/Null]
#$ns attach-agent $n723 $null262
#$ns connect $udp262 $null262
#$ns at 0.19 "$pareto262 start"
#
##Background: 724 to 725
#set n724 [$ns node]
#$n724 set-position -27.7 157.3;
#set n725 [$ns node]
#$n725 set-position 22.9 -132.3;
##Add GSL links
#$n724 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n725 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp263 [new Agent/UDP]
#$ns attach-agent $n724 $udp263
#set pareto263 [new Application/Traffic/Pareto]
#$pareto263 attach-agent $udp263
#$pareto263 set packetSize_ 1000
#$pareto263 set rate_ 1000Kb
#set null263 [new Agent/Null]
#$ns attach-agent $n725 $null263
#$ns connect $udp263 $null263
#$ns at 0.63 "$pareto263 start"
#
##Background: 726 to 727
#set n726 [$ns node]
#$n726 set-position -8.1 115.7;
#set n727 [$ns node]
#$n727 set-position 56.9 -124.0;
##Add GSL links
#$n726 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n727 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp264 [new Agent/UDP]
#$ns attach-agent $n726 $udp264
#set pareto264 [new Application/Traffic/Pareto]
#$pareto264 attach-agent $udp264
#$pareto264 set packetSize_ 1000
#$pareto264 set rate_ 1000Kb
#set null264 [new Agent/Null]
#$ns attach-agent $n727 $null264
#$ns connect $udp264 $null264
#$ns at 0.86 "$pareto264 start"
#
##Background: 728 to 729
#set n728 [$ns node]
#$n728 set-position -42.0 141.6;
#set n729 [$ns node]
#$n729 set-position 27.9 -92.5;
##Add GSL links
#$n728 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n729 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp265 [new Agent/UDP]
#$ns attach-agent $n728 $udp265
#set pareto265 [new Application/Traffic/Pareto]
#$pareto265 attach-agent $udp265
#$pareto265 set packetSize_ 1000
#$pareto265 set rate_ 1000Kb
#set null265 [new Agent/Null]
#$ns attach-agent $n729 $null265
#$ns connect $udp265 $null265
#$ns at 0.17 "$pareto265 start"
#
##Background: 730 to 731
#set n730 [$ns node]
#$n730 set-position -33.3 129.6;
#set n731 [$ns node]
#$n731 set-position 43.4 -101.6;
##Add GSL links
#$n730 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n731 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp266 [new Agent/UDP]
#$ns attach-agent $n730 $udp266
#set pareto266 [new Application/Traffic/Pareto]
#$pareto266 attach-agent $udp266
#$pareto266 set packetSize_ 1000
#$pareto266 set rate_ 1000Kb
#set null266 [new Agent/Null]
#$ns attach-agent $n731 $null266
#$ns connect $udp266 $null266
#$ns at 0.86 "$pareto266 start"
#
##Background: 732 to 733
#set n732 [$ns node]
#$n732 set-position -27.6 111.6;
#set n733 [$ns node]
#$n733 set-position -30.3 -52.0;
##Add GSL links
#$n732 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n733 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp267 [new Agent/UDP]
#$ns attach-agent $n732 $udp267
#set pareto267 [new Application/Traffic/Pareto]
#$pareto267 attach-agent $udp267
#$pareto267 set packetSize_ 1000
#$pareto267 set rate_ 1000Kb
#set null267 [new Agent/Null]
#$ns attach-agent $n733 $null267
#$ns connect $udp267 $null267
#$ns at 0.19 "$pareto267 start"
#
##Background: 734 to 735
#set n734 [$ns node]
#$n734 set-position -32.6 135.5;
#set n735 [$ns node]
#$n735 set-position 38.7 -9.7;
##Add GSL links
#$n734 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n735 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp268 [new Agent/UDP]
#$ns attach-agent $n734 $udp268
#set pareto268 [new Application/Traffic/Pareto]
#$pareto268 attach-agent $udp268
#$pareto268 set packetSize_ 1000
#$pareto268 set rate_ 1000Kb
#set null268 [new Agent/Null]
#$ns attach-agent $n735 $null268
#$ns connect $udp268 $null268
#$ns at 0.10 "$pareto268 start"
#
##Background: 736 to 737
#set n736 [$ns node]
#$n736 set-position -44.2 112.8;
#set n737 [$ns node]
#$n737 set-position 58.5 23.8;
##Add GSL links
#$n736 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n737 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp269 [new Agent/UDP]
#$ns attach-agent $n736 $udp269
#set pareto269 [new Application/Traffic/Pareto]
#$pareto269 attach-agent $udp269
#$pareto269 set packetSize_ 1000
#$pareto269 set rate_ 1000Kb
#set null269 [new Agent/Null]
#$ns attach-agent $n737 $null269
#$ns connect $udp269 $null269
#$ns at 0.07 "$pareto269 start"
#
##Background: 738 to 739
#set n738 [$ns node]
#$n738 set-position -40.0 115.7;
#set n739 [$ns node]
#$n739 set-position 56.4 -8.1;
##Add GSL links
#$n738 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n739 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp270 [new Agent/UDP]
#$ns attach-agent $n738 $udp270
#set pareto270 [new Application/Traffic/Pareto]
#$pareto270 attach-agent $udp270
#$pareto270 set packetSize_ 1000
#$pareto270 set rate_ 1000Kb
#set null270 [new Agent/Null]
#$ns attach-agent $n739 $null270
#$ns connect $udp270 $null270
#$ns at 0.17 "$pareto270 start"
#
##Background: 740 to 741
#set n740 [$ns node]
#$n740 set-position -39.8 110.0;
#set n741 [$ns node]
#$n741 set-position 48.4 13.1;
##Add GSL links
#$n740 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n741 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp271 [new Agent/UDP]
#$ns attach-agent $n740 $udp271
#set pareto271 [new Application/Traffic/Pareto]
#$pareto271 attach-agent $udp271
#$pareto271 set packetSize_ 1000
#$pareto271 set rate_ 1000Kb
#set null271 [new Agent/Null]
#$ns attach-agent $n741 $null271
#$ns connect $udp271 $null271
#$ns at 0.75 "$pareto271 start"
#
##Background: 742 to 743
#set n742 [$ns node]
#$n742 set-position -39.7 140.0;
#set n743 [$ns node]
#$n743 set-position 57.1 8.7;
##Add GSL links
#$n742 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n743 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp272 [new Agent/UDP]
#$ns attach-agent $n742 $udp272
#set pareto272 [new Application/Traffic/Pareto]
#$pareto272 attach-agent $udp272
#$pareto272 set packetSize_ 1000
#$pareto272 set rate_ 1000Kb
#set null272 [new Agent/Null]
#$ns attach-agent $n743 $null272
#$ns connect $udp272 $null272
#$ns at 0.34 "$pareto272 start"
#
##Background: 744 to 745
#set n744 [$ns node]
#$n744 set-position -34.0 166.4;
#set n745 [$ns node]
#$n745 set-position 0.3 10.7;
##Add GSL links
#$n744 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n745 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp273 [new Agent/UDP]
#$ns attach-agent $n744 $udp273
#set pareto273 [new Application/Traffic/Pareto]
#$pareto273 attach-agent $udp273
#$pareto273 set packetSize_ 1000
#$pareto273 set rate_ 1000Kb
#set null273 [new Agent/Null]
#$ns attach-agent $n745 $null273
#$ns connect $udp273 $null273
#$ns at 0.94 "$pareto273 start"
#
##Background: 746 to 747
#set n746 [$ns node]
#$n746 set-position -37.8 123.2;
#set n747 [$ns node]
#$n747 set-position 50.2 96.1;
##Add GSL links
#$n746 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n747 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp274 [new Agent/UDP]
#$ns attach-agent $n746 $udp274
#set pareto274 [new Application/Traffic/Pareto]
#$pareto274 attach-agent $udp274
#$pareto274 set packetSize_ 1000
#$pareto274 set rate_ 1000Kb
#set null274 [new Agent/Null]
#$ns attach-agent $n747 $null274
#$ns connect $udp274 $null274
#$ns at 0.37 "$pareto274 start"
#
##Background: 748 to 749
#set n748 [$ns node]
#$n748 set-position -38.8 122.0;
#set n749 [$ns node]
#$n749 set-position -3.5 99.9;
##Add GSL links
#$n748 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n749 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp275 [new Agent/UDP]
#$ns attach-agent $n748 $udp275
#set pareto275 [new Application/Traffic/Pareto]
#$pareto275 attach-agent $udp275
#$pareto275 set packetSize_ 1000
#$pareto275 set rate_ 1000Kb
#set null275 [new Agent/Null]
#$ns attach-agent $n749 $null275
#$ns connect $udp275 $null275
#$ns at 0.08 "$pareto275 start"
#
##Background: 750 to 751
#set n750 [$ns node]
#$n750 set-position -27.8 125.0;
#set n751 [$ns node]
#$n751 set-position 41.5 68.8;
##Add GSL links
#$n750 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n751 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp276 [new Agent/UDP]
#$ns attach-agent $n750 $udp276
#set pareto276 [new Application/Traffic/Pareto]
#$pareto276 attach-agent $udp276
#$pareto276 set packetSize_ 1000
#$pareto276 set rate_ 1000Kb
#set null276 [new Agent/Null]
#$ns attach-agent $n751 $null276
#$ns connect $udp276 $null276
#$ns at 0.19 "$pareto276 start"
#
##Background: 752 to 753
#set n752 [$ns node]
#$n752 set-position -6.6 169.0;
#set n753 [$ns node]
#$n753 set-position 26.9 91.8;
##Add GSL links
#$n752 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n753 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp277 [new Agent/UDP]
#$ns attach-agent $n752 $udp277
#set pareto277 [new Application/Traffic/Pareto]
#$pareto277 attach-agent $udp277
#$pareto277 set packetSize_ 1000
#$pareto277 set rate_ 1000Kb
#set null277 [new Agent/Null]
#$ns attach-agent $n753 $null277
#$ns connect $udp277 $null277
#$ns at 0.73 "$pareto277 start"
#
##Background: 754 to 755
#set n754 [$ns node]
#$n754 set-position -40.6 132.4;
#set n755 [$ns node]
#$n755 set-position -2.7 41.8;
##Add GSL links
#$n754 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n755 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp278 [new Agent/UDP]
#$ns attach-agent $n754 $udp278
#set pareto278 [new Application/Traffic/Pareto]
#$pareto278 attach-agent $udp278
#$pareto278 set packetSize_ 1000
#$pareto278 set rate_ 1000Kb
#set null278 [new Agent/Null]
#$ns attach-agent $n755 $null278
#$ns connect $udp278 $null278
#$ns at 0.13 "$pareto278 start"
#
##Background: 756 to 757
#set n756 [$ns node]
#$n756 set-position -44.3 148.0;
#set n757 [$ns node]
#$n757 set-position 27.7 106.2;
##Add GSL links
#$n756 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n757 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp279 [new Agent/UDP]
#$ns attach-agent $n756 $udp279
#set pareto279 [new Application/Traffic/Pareto]
#$pareto279 attach-agent $udp279
#$pareto279 set packetSize_ 1000
#$pareto279 set rate_ 1000Kb
#set null279 [new Agent/Null]
#$ns attach-agent $n757 $null279
#$ns connect $udp279 $null279
#$ns at 0.87 "$pareto279 start"
#
##Background: 758 to 759
#set n758 [$ns node]
#$n758 set-position -27.6 128.4;
#set n759 [$ns node]
#$n759 set-position -12.9 162.6;
##Add GSL links
#$n758 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n759 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp280 [new Agent/UDP]
#$ns attach-agent $n758 $udp280
#set pareto280 [new Application/Traffic/Pareto]
#$pareto280 attach-agent $udp280
#$pareto280 set packetSize_ 1000
#$pareto280 set rate_ 1000Kb
#set null280 [new Agent/Null]
#$ns attach-agent $n759 $null280
#$ns connect $udp280 $null280
#$ns at 0.98 "$pareto280 start"
#
##Background: 760 to 761
#set n760 [$ns node]
#$n760 set-position -44.0 119.0;
#set n761 [$ns node]
#$n761 set-position -18.2 122.5;
##Add GSL links
#$n760 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n761 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp281 [new Agent/UDP]
#$ns attach-agent $n760 $udp281
#set pareto281 [new Application/Traffic/Pareto]
#$pareto281 attach-agent $udp281
#$pareto281 set packetSize_ 1000
#$pareto281 set rate_ 1000Kb
#set null281 [new Agent/Null]
#$ns attach-agent $n761 $null281
#$ns connect $udp281 $null281
#$ns at 0.89 "$pareto281 start"
#
##Background: 762 to 763
#set n762 [$ns node]
#$n762 set-position -27.4 169.9;
#set n763 [$ns node]
#$n763 set-position -16.1 139.3;
##Add GSL links
#$n762 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n763 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp282 [new Agent/UDP]
#$ns attach-agent $n762 $udp282
#set pareto282 [new Application/Traffic/Pareto]
#$pareto282 attach-agent $udp282
#$pareto282 set packetSize_ 1000
#$pareto282 set rate_ 1000Kb
#set null282 [new Agent/Null]
#$ns attach-agent $n763 $null282
#$ns connect $udp282 $null282
#$ns at 0.37 "$pareto282 start"
#
##Background: 764 to 765
#set n764 [$ns node]
#$n764 set-position -24.1 117.7;
#set n765 [$ns node]
#$n765 set-position -7.1 167.8;
##Add GSL links
#$n764 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n765 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp283 [new Agent/UDP]
#$ns attach-agent $n764 $udp283
#set pareto283 [new Application/Traffic/Pareto]
#$pareto283 attach-agent $udp283
#$pareto283 set packetSize_ 1000
#$pareto283 set rate_ 1000Kb
#set null283 [new Agent/Null]
#$ns attach-agent $n765 $null283
#$ns connect $udp283 $null283
#$ns at 0.48 "$pareto283 start"
#
##Background: 766 to 767
#set n766 [$ns node]
#$n766 set-position -44.6 172.5;
#set n767 [$ns node]
#$n767 set-position -37.6 172.9;
##Add GSL links
#$n766 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n767 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp284 [new Agent/UDP]
#$ns attach-agent $n766 $udp284
#set pareto284 [new Application/Traffic/Pareto]
#$pareto284 attach-agent $udp284
#$pareto284 set packetSize_ 1000
#$pareto284 set rate_ 1000Kb
#set null284 [new Agent/Null]
#$ns attach-agent $n767 $null284
#$ns connect $udp284 $null284
#$ns at 0.95 "$pareto284 start"
#
##Background: 768 to 769
#set n768 [$ns node]
#$n768 set-position -26.3 158.7;
#set n769 [$ns node]
#$n769 set-position -12.5 156.5;
##Add GSL links
#$n768 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n769 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp285 [new Agent/UDP]
#$ns attach-agent $n768 $udp285
#set pareto285 [new Application/Traffic/Pareto]
#$pareto285 attach-agent $udp285
#$pareto285 set packetSize_ 1000
#$pareto285 set rate_ 1000Kb
#set null285 [new Agent/Null]
#$ns attach-agent $n769 $null285
#$ns connect $udp285 $null285
#$ns at 0.01 "$pareto285 start"
#
##Background: 770 to 771
#set n770 [$ns node]
#$n770 set-position -28.6 153.9;
#set n771 [$ns node]
#$n771 set-position -41.2 153.8;
##Add GSL links
#$n770 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n771 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp286 [new Agent/UDP]
#$ns attach-agent $n770 $udp286
#set pareto286 [new Application/Traffic/Pareto]
#$pareto286 attach-agent $udp286
#$pareto286 set packetSize_ 1000
#$pareto286 set rate_ 1000Kb
#set null286 [new Agent/Null]
#$ns attach-agent $n771 $null286
#$ns connect $udp286 $null286
#$ns at 0.67 "$pareto286 start"
#
##Background: 772 to 773
#set n772 [$ns node]
#$n772 set-position -41.4 164.8;
#set n773 [$ns node]
#$n773 set-position -14.3 150.4;
##Add GSL links
#$n772 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n773 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp287 [new Agent/UDP]
#$ns attach-agent $n772 $udp287
#set pareto287 [new Application/Traffic/Pareto]
#$pareto287 attach-agent $udp287
#$pareto287 set packetSize_ 1000
#$pareto287 set rate_ 1000Kb
#set null287 [new Agent/Null]
#$ns attach-agent $n773 $null287
#$ns connect $udp287 $null287
#$ns at 0.76 "$pareto287 start"
#
##Background: 774 to 775
#set n774 [$ns node]
#$n774 set-position -15.4 133.2;
#set n775 [$ns node]
#$n775 set-position -37.5 123.8;
##Add GSL links
#$n774 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n775 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp288 [new Agent/UDP]
#$ns attach-agent $n774 $udp288
#set pareto288 [new Application/Traffic/Pareto]
#$pareto288 attach-agent $udp288
#$pareto288 set packetSize_ 1000
#$pareto288 set rate_ 1000Kb
#set null288 [new Agent/Null]
#$ns attach-agent $n775 $null288
#$ns connect $udp288 $null288
#$ns at 0.27 "$pareto288 start"
#
##Background: 776 to 777
#set n776 [$ns node]
#$n776 set-position -38.5 149.7;
#set n777 [$ns node]
#$n777 set-position -39.6 159.6;
##Add GSL links
#$n776 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n777 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp289 [new Agent/UDP]
#$ns attach-agent $n776 $udp289
#set pareto289 [new Application/Traffic/Pareto]
#$pareto289 attach-agent $udp289
#$pareto289 set packetSize_ 1000
#$pareto289 set rate_ 1000Kb
#set null289 [new Agent/Null]
#$ns attach-agent $n777 $null289
#$ns connect $udp289 $null289
#$ns at 0.77 "$pareto289 start"
#
##Background: 778 to 779
#set n778 [$ns node]
#$n778 set-position -19.6 155.1;
#set n779 [$ns node]
#$n779 set-position -19.8 157.8;
##Add GSL links
#$n778 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n779 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp290 [new Agent/UDP]
#$ns attach-agent $n778 $udp290
#set pareto290 [new Application/Traffic/Pareto]
#$pareto290 attach-agent $udp290
#$pareto290 set packetSize_ 1000
#$pareto290 set rate_ 1000Kb
#set null290 [new Agent/Null]
#$ns attach-agent $n779 $null290
#$ns connect $udp290 $null290
#$ns at 0.30 "$pareto290 start"
#
##Background: 780 to 781
#set n780 [$ns node]
#$n780 set-position -25.1 171.6;
#set n781 [$ns node]
#$n781 set-position -43.1 167.4;
##Add GSL links
#$n780 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n781 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp291 [new Agent/UDP]
#$ns attach-agent $n780 $udp291
#set pareto291 [new Application/Traffic/Pareto]
#$pareto291 attach-agent $udp291
#$pareto291 set packetSize_ 1000
#$pareto291 set rate_ 1000Kb
#set null291 [new Agent/Null]
#$ns attach-agent $n781 $null291
#$ns connect $udp291 $null291
#$ns at 0.83 "$pareto291 start"
#
##Background: 782 to 783
#set n782 [$ns node]
#$n782 set-position -12.9 134.1;
#set n783 [$ns node]
#$n783 set-position -42.6 131.1;
##Add GSL links
#$n782 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n783 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp292 [new Agent/UDP]
#$ns attach-agent $n782 $udp292
#set pareto292 [new Application/Traffic/Pareto]
#$pareto292 attach-agent $udp292
#$pareto292 set packetSize_ 1000
#$pareto292 set rate_ 1000Kb
#set null292 [new Agent/Null]
#$ns attach-agent $n783 $null292
#$ns connect $udp292 $null292
#$ns at 0.79 "$pareto292 start"
#
##Background: 784 to 785
#set n784 [$ns node]
#$n784 set-position -25.9 164.7;
#set n785 [$ns node]
#$n785 set-position -17.1 139.8;
##Add GSL links
#$n784 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n785 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp293 [new Agent/UDP]
#$ns attach-agent $n784 $udp293
#set pareto293 [new Application/Traffic/Pareto]
#$pareto293 attach-agent $udp293
#$pareto293 set packetSize_ 1000
#$pareto293 set rate_ 1000Kb
#set null293 [new Agent/Null]
#$ns attach-agent $n785 $null293
#$ns connect $udp293 $null293
#$ns at 0.03 "$pareto293 start"
#
##Background: 786 to 787
#set n786 [$ns node]
#$n786 set-position -19.5 159.6;
#set n787 [$ns node]
#$n787 set-position -21.5 168.1;
##Add GSL links
#$n786 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n787 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp294 [new Agent/UDP]
#$ns attach-agent $n786 $udp294
#set pareto294 [new Application/Traffic/Pareto]
#$pareto294 attach-agent $udp294
#$pareto294 set packetSize_ 1000
#$pareto294 set rate_ 1000Kb
#set null294 [new Agent/Null]
#$ns attach-agent $n787 $null294
#$ns connect $udp294 $null294
#$ns at 0.84 "$pareto294 start"
#
##Background: 788 to 789
#set n788 [$ns node]
#$n788 set-position -18.8 129.8;
#set n789 [$ns node]
#$n789 set-position -6.7 146.8;
##Add GSL links
#$n788 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n789 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp295 [new Agent/UDP]
#$ns attach-agent $n788 $udp295
#set pareto295 [new Application/Traffic/Pareto]
#$pareto295 attach-agent $udp295
#$pareto295 set packetSize_ 1000
#$pareto295 set rate_ 1000Kb
#set null295 [new Agent/Null]
#$ns attach-agent $n789 $null295
#$ns connect $udp295 $null295
#$ns at 0.44 "$pareto295 start"
#
##Background: 790 to 791
#set n790 [$ns node]
#$n790 set-position -38.9 157.3;
#set n791 [$ns node]
#$n791 set-position -15.3 146.5;
##Add GSL links
#$n790 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
#$n791 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
#	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
## Trace all queues
#$ns trace-all-satlinks $outfile
#set udp296 [new Agent/UDP]
#$ns attach-agent $n790 $udp296
#set pareto296 [new Application/Traffic/Pareto]
#$pareto296 attach-agent $udp296
#$pareto296 set packetSize_ 1000
#$pareto296 set rate_ 1000Kb
#set null296 [new Agent/Null]
#$ns attach-agent $n791 $null296
#$ns connect $udp296 $null296
#$ns at 0.51 "$pareto296 start"
#
