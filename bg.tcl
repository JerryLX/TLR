  
if {![info exists ns]} {
	puts "Error:  sat-iridium-backgrounds.tcl is a supporting script for the "			
	puts "        sat-iridium.tcl script-- run 'sat-iridium.tcl' instead"			
	exit
}

$ns node-config -satNodeType terminal

#Background: 200 to 201
set n200 [$ns node]
$n200 set-position 46.1 -84.5;
set n201 [$ns node]
$n201 set-position 40.0 -102.5;
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
$pareto1 set rate_ 224Kb
set null1 [new Agent/Null]
$ns attach-agent $n201 $null1
$ns connect $udp1 $null1
$ns at 0.81 "$pareto1 start"

#Background: 202 to 203
set n202 [$ns node]
$n202 set-position 48.2 -128.4;
set n203 [$ns node]
$n203 set-position 47.2 -58.8;
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
$pareto2 set rate_ 224Kb
set null2 [new Agent/Null]
$ns attach-agent $n203 $null2
$ns connect $udp2 $null2
$ns at 0.44 "$pareto2 start"

#Background: 204 to 205
set n204 [$ns node]
$n204 set-position 43.1 -58.3;
set n205 [$ns node]
$n205 set-position 48.2 -133.8;
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
$pareto3 set rate_ 224Kb
set null3 [new Agent/Null]
$ns attach-agent $n205 $null3
$ns connect $udp3 $null3
$ns at 0.27 "$pareto3 start"

#Background: 206 to 207
set n206 [$ns node]
$n206 set-position 44.5 -116.3;
set n207 [$ns node]
$n207 set-position 47.6 -124.3;
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
$pareto4 set rate_ 224Kb
set null4 [new Agent/Null]
$ns attach-agent $n207 $null4
$ns connect $udp4 $null4
$ns at 0.76 "$pareto4 start"

#Background: 208 to 209
set n208 [$ns node]
$n208 set-position 22.3 -100.6;
set n209 [$ns node]
$n209 set-position 25.1 -68.6;
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
$pareto5 set rate_ 224Kb
set null5 [new Agent/Null]
$ns attach-agent $n209 $null5
$ns connect $udp5 $null5
$ns at 0.42 "$pareto5 start"

#Background: 210 to 211
set n210 [$ns node]
$n210 set-position 42.3 -125.3;
set n211 [$ns node]
$n211 set-position 29.4 -102.7;
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
$pareto6 set rate_ 224Kb
set null6 [new Agent/Null]
$ns attach-agent $n211 $null6
$ns connect $udp6 $null6
$ns at 0.77 "$pareto6 start"

#Background: 212 to 213
set n212 [$ns node]
$n212 set-position 27.5 -69.0;
set n213 [$ns node]
$n213 set-position 46.3 -81.6;
#Add GSL links
$n212 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n213 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp7 [new Agent/UDP]
$ns attach-agent $n212 $udp7
set pareto7 [new Application/Traffic/Pareto]
$pareto7 attach-agent $udp7
$pareto7 set packetSize_ 1000
$pareto7 set rate_ 224Kb
set null7 [new Agent/Null]
$ns attach-agent $n213 $null7
$ns connect $udp7 $null7
$ns at 0.78 "$pareto7 start"

#Background: 214 to 215
set n214 [$ns node]
$n214 set-position 25.2 -83.7;
set n215 [$ns node]
$n215 set-position 58.4 -70.0;
#Add GSL links
$n214 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n215 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp8 [new Agent/UDP]
$ns attach-agent $n214 $udp8
set pareto8 [new Application/Traffic/Pareto]
$pareto8 attach-agent $udp8
$pareto8 set packetSize_ 1000
$pareto8 set rate_ 224Kb
set null8 [new Agent/Null]
$ns attach-agent $n215 $null8
$ns connect $udp8 $null8
$ns at 0.91 "$pareto8 start"

#Background: 216 to 217
set n216 [$ns node]
$n216 set-position 47.6 -124.3;
set n217 [$ns node]
$n217 set-position 57.8 -64.1;
#Add GSL links
$n216 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n217 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp9 [new Agent/UDP]
$ns attach-agent $n216 $udp9
set pareto9 [new Application/Traffic/Pareto]
$pareto9 attach-agent $udp9
$pareto9 set packetSize_ 1000
$pareto9 set rate_ 224Kb
set null9 [new Agent/Null]
$ns attach-agent $n217 $null9
$ns connect $udp9 $null9
$ns at 0.05 "$pareto9 start"

#Background: 218 to 219
set n218 [$ns node]
$n218 set-position 47.6 -124.3;
set n219 [$ns node]
$n219 set-position 41.4 -122.2;
#Add GSL links
$n218 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n219 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp10 [new Agent/UDP]
$ns attach-agent $n218 $udp10
set pareto10 [new Application/Traffic/Pareto]
$pareto10 attach-agent $udp10
$pareto10 set packetSize_ 1000
$pareto10 set rate_ 224Kb
set null10 [new Agent/Null]
$ns attach-agent $n219 $null10
$ns connect $udp10 $null10
$ns at 0.67 "$pareto10 start"

#Background: 220 to 221
set n220 [$ns node]
$n220 set-position 55.2 -120.3;
set n221 [$ns node]
$n221 set-position 37.6 -116.8;
#Add GSL links
$n220 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n221 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp11 [new Agent/UDP]
$ns attach-agent $n220 $udp11
set pareto11 [new Application/Traffic/Pareto]
$pareto11 attach-agent $udp11
$pareto11 set packetSize_ 1000
$pareto11 set rate_ 224Kb
set null11 [new Agent/Null]
$ns attach-agent $n221 $null11
$ns connect $udp11 $null11
$ns at 0.11 "$pareto11 start"

#Background: 222 to 223
set n222 [$ns node]
$n222 set-position 43.1 -58.3;
set n223 [$ns node]
$n223 set-position 40.5 -122.2;
#Add GSL links
$n222 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n223 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp12 [new Agent/UDP]
$ns attach-agent $n222 $udp12
set pareto12 [new Application/Traffic/Pareto]
$pareto12 attach-agent $udp12
$pareto12 set packetSize_ 1000
$pareto12 set rate_ 224Kb
set null12 [new Agent/Null]
$ns attach-agent $n223 $null12
$ns connect $udp12 $null12
$ns at 0.16 "$pareto12 start"

#Background: 224 to 225
set n224 [$ns node]
$n224 set-position 23.1 -112.1;
set n225 [$ns node]
$n225 set-position 31.8 -127.1;
#Add GSL links
$n224 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n225 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp13 [new Agent/UDP]
$ns attach-agent $n224 $udp13
set pareto13 [new Application/Traffic/Pareto]
$pareto13 attach-agent $udp13
$pareto13 set packetSize_ 1000
$pareto13 set rate_ 224Kb
set null13 [new Agent/Null]
$ns attach-agent $n225 $null13
$ns connect $udp13 $null13
$ns at 0.95 "$pareto13 start"

#Background: 226 to 227
set n226 [$ns node]
$n226 set-position 37.0 -110.9;
set n227 [$ns node]
$n227 set-position 42.1 -83.0;
#Add GSL links
$n226 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n227 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp14 [new Agent/UDP]
$ns attach-agent $n226 $udp14
set pareto14 [new Application/Traffic/Pareto]
$pareto14 attach-agent $udp14
$pareto14 set packetSize_ 1000
$pareto14 set rate_ 224Kb
set null14 [new Agent/Null]
$ns attach-agent $n227 $null14
$ns connect $udp14 $null14
$ns at 0.60 "$pareto14 start"

#Background: 228 to 229
set n228 [$ns node]
$n228 set-position 29.4 -96.4;
set n229 [$ns node]
$n229 set-position 31.0 -97.9;
#Add GSL links
$n228 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n229 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp15 [new Agent/UDP]
$ns attach-agent $n228 $udp15
set pareto15 [new Application/Traffic/Pareto]
$pareto15 attach-agent $udp15
$pareto15 set packetSize_ 1000
$pareto15 set rate_ 224Kb
set null15 [new Agent/Null]
$ns attach-agent $n229 $null15
$ns connect $udp15 $null15
$ns at 0.83 "$pareto15 start"

#Background: 230 to 231
set n230 [$ns node]
$n230 set-position 56.9 -75.0;
set n231 [$ns node]
$n231 set-position 36.5 -67.9;
#Add GSL links
$n230 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n231 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp16 [new Agent/UDP]
$ns attach-agent $n230 $udp16
set pareto16 [new Application/Traffic/Pareto]
$pareto16 attach-agent $udp16
$pareto16 set packetSize_ 1000
$pareto16 set rate_ 224Kb
set null16 [new Agent/Null]
$ns attach-agent $n231 $null16
$ns connect $udp16 $null16
$ns at 0.26 "$pareto16 start"

#Background: 232 to 233
set n232 [$ns node]
$n232 set-position 56.0 -95.6;
set n233 [$ns node]
$n233 set-position 40.0 -102.5;
#Add GSL links
$n232 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n233 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp17 [new Agent/UDP]
$ns attach-agent $n232 $udp17
set pareto17 [new Application/Traffic/Pareto]
$pareto17 attach-agent $udp17
$pareto17 set packetSize_ 1000
$pareto17 set rate_ 224Kb
set null17 [new Agent/Null]
$ns attach-agent $n233 $null17
$ns connect $udp17 $null17
$ns at 0.66 "$pareto17 start"

#Background: 234 to 235
set n234 [$ns node]
$n234 set-position 47.6 -124.3;
set n235 [$ns node]
$n235 set-position 48.2 -133.8;
#Add GSL links
$n234 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n235 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp18 [new Agent/UDP]
$ns attach-agent $n234 $udp18
set pareto18 [new Application/Traffic/Pareto]
$pareto18 attach-agent $udp18
$pareto18 set packetSize_ 1000
$pareto18 set rate_ 224Kb
set null18 [new Agent/Null]
$ns attach-agent $n235 $null18
$ns connect $udp18 $null18
$ns at 0.14 "$pareto18 start"

#Background: 236 to 237
set n236 [$ns node]
$n236 set-position 57.6 -113.0;
set n237 [$ns node]
$n237 set-position 58.2 -115.5;
#Add GSL links
$n236 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n237 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp19 [new Agent/UDP]
$ns attach-agent $n236 $udp19
set pareto19 [new Application/Traffic/Pareto]
$pareto19 attach-agent $udp19
$pareto19 set packetSize_ 1000
$pareto19 set rate_ 224Kb
set null19 [new Agent/Null]
$ns attach-agent $n237 $null19
$ns connect $udp19 $null19
$ns at 0.26 "$pareto19 start"

#Background: 238 to 239
set n238 [$ns node]
$n238 set-position 48.9 -111.3;
set n239 [$ns node]
$n239 set-position 35.3 -105.0;
#Add GSL links
$n238 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n239 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp20 [new Agent/UDP]
$ns attach-agent $n238 $udp20
set pareto20 [new Application/Traffic/Pareto]
$pareto20 attach-agent $udp20
$pareto20 set packetSize_ 1000
$pareto20 set rate_ 224Kb
set null20 [new Agent/Null]
$ns attach-agent $n239 $null20
$ns connect $udp20 $null20
$ns at 0.73 "$pareto20 start"

#Background: 240 to 241
set n240 [$ns node]
$n240 set-position 37.6 -116.8;
set n241 [$ns node]
$n241 set-position 54.0 -85.2;
#Add GSL links
$n240 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n241 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp21 [new Agent/UDP]
$ns attach-agent $n240 $udp21
set pareto21 [new Application/Traffic/Pareto]
$pareto21 attach-agent $udp21
$pareto21 set packetSize_ 1000
$pareto21 set rate_ 224Kb
set null21 [new Agent/Null]
$ns attach-agent $n241 $null21
$ns connect $udp21 $null21
$ns at 0.81 "$pareto21 start"

#Background: 242 to 243
set n242 [$ns node]
$n242 set-position 27.2 -107.7;
set n243 [$ns node]
$n243 set-position 41.1 -124.6;
#Add GSL links
$n242 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n243 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp22 [new Agent/UDP]
$ns attach-agent $n242 $udp22
set pareto22 [new Application/Traffic/Pareto]
$pareto22 attach-agent $udp22
$pareto22 set packetSize_ 1000
$pareto22 set rate_ 224Kb
set null22 [new Agent/Null]
$ns attach-agent $n243 $null22
$ns connect $udp22 $null22
$ns at 0.62 "$pareto22 start"

#Background: 244 to 245
set n244 [$ns node]
$n244 set-position 42.1 -83.0;
set n245 [$ns node]
$n245 set-position 54.2 -74.2;
#Add GSL links
$n244 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n245 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp23 [new Agent/UDP]
$ns attach-agent $n244 $udp23
set pareto23 [new Application/Traffic/Pareto]
$pareto23 attach-agent $udp23
$pareto23 set packetSize_ 1000
$pareto23 set rate_ 224Kb
set null23 [new Agent/Null]
$ns attach-agent $n245 $null23
$ns connect $udp23 $null23
$ns at 0.67 "$pareto23 start"

#Background: 246 to 247
set n246 [$ns node]
$n246 set-position 56.0 -95.6;
set n247 [$ns node]
$n247 set-position 52.8 -89.5;
#Add GSL links
$n246 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n247 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp24 [new Agent/UDP]
$ns attach-agent $n246 $udp24
set pareto24 [new Application/Traffic/Pareto]
$pareto24 attach-agent $udp24
$pareto24 set packetSize_ 1000
$pareto24 set rate_ 224Kb
set null24 [new Agent/Null]
$ns attach-agent $n247 $null24
$ns connect $udp24 $null24
$ns at 0.15 "$pareto24 start"

#Background: 248 to 249
set n248 [$ns node]
$n248 set-position 37.0 -110.9;
set n249 [$ns node]
$n249 set-position 31.0 -97.9;
#Add GSL links
$n248 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n249 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp25 [new Agent/UDP]
$ns attach-agent $n248 $udp25
set pareto25 [new Application/Traffic/Pareto]
$pareto25 attach-agent $udp25
$pareto25 set packetSize_ 1000
$pareto25 set rate_ 224Kb
set null25 [new Agent/Null]
$ns attach-agent $n249 $null25
$ns connect $udp25 $null25
$ns at 0.81 "$pareto25 start"

#Background: 250 to 251
set n250 [$ns node]
$n250 set-position 42.2 -135.0;
set n251 [$ns node]
$n251 set-position 58.2 -115.5;
#Add GSL links
$n250 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n251 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp26 [new Agent/UDP]
$ns attach-agent $n250 $udp26
set pareto26 [new Application/Traffic/Pareto]
$pareto26 attach-agent $udp26
$pareto26 set packetSize_ 1000
$pareto26 set rate_ 224Kb
set null26 [new Agent/Null]
$ns attach-agent $n251 $null26
$ns connect $udp26 $null26
$ns at 0.03 "$pareto26 start"

#Background: 252 to 253
set n252 [$ns node]
$n252 set-position 35.3 -105.0;
set n253 [$ns node]
$n253 set-position 31.8 -96.5;
#Add GSL links
$n252 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n253 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp27 [new Agent/UDP]
$ns attach-agent $n252 $udp27
set pareto27 [new Application/Traffic/Pareto]
$pareto27 attach-agent $udp27
$pareto27 set packetSize_ 1000
$pareto27 set rate_ 224Kb
set null27 [new Agent/Null]
$ns attach-agent $n253 $null27
$ns connect $udp27 $null27
$ns at 0.47 "$pareto27 start"

#Background: 254 to 255
set n254 [$ns node]
$n254 set-position 37.2 -63.5;
set n255 [$ns node]
$n255 set-position 57.8 -64.1;
#Add GSL links
$n254 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n255 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp28 [new Agent/UDP]
$ns attach-agent $n254 $udp28
set pareto28 [new Application/Traffic/Pareto]
$pareto28 attach-agent $udp28
$pareto28 set packetSize_ 1000
$pareto28 set rate_ 224Kb
set null28 [new Agent/Null]
$ns attach-agent $n255 $null28
$ns connect $udp28 $null28
$ns at 0.85 "$pareto28 start"

#Background: 256 to 257
set n256 [$ns node]
$n256 set-position 53.8 -126.9;
set n257 [$ns node]
$n257 set-position 42.3 -125.3;
#Add GSL links
$n256 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n257 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp29 [new Agent/UDP]
$ns attach-agent $n256 $udp29
set pareto29 [new Application/Traffic/Pareto]
$pareto29 attach-agent $udp29
$pareto29 set packetSize_ 1000
$pareto29 set rate_ 224Kb
set null29 [new Agent/Null]
$ns attach-agent $n257 $null29
$ns connect $udp29 $null29
$ns at 0.09 "$pareto29 start"

#Background: 258 to 259
set n258 [$ns node]
$n258 set-position 27.3 -82.0;
set n259 [$ns node]
$n259 set-position 42.6 -112.9;
#Add GSL links
$n258 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n259 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp30 [new Agent/UDP]
$ns attach-agent $n258 $udp30
set pareto30 [new Application/Traffic/Pareto]
$pareto30 attach-agent $udp30
$pareto30 set packetSize_ 1000
$pareto30 set rate_ 224Kb
set null30 [new Agent/Null]
$ns attach-agent $n259 $null30
$ns connect $udp30 $null30
$ns at 0.86 "$pareto30 start"

#Background: 260 to 261
set n260 [$ns node]
$n260 set-position 34.9 -56.0;
set n261 [$ns node]
$n261 set-position 43.8 -126.7;
#Add GSL links
$n260 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n261 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp31 [new Agent/UDP]
$ns attach-agent $n260 $udp31
set pareto31 [new Application/Traffic/Pareto]
$pareto31 attach-agent $udp31
$pareto31 set packetSize_ 1000
$pareto31 set rate_ 224Kb
set null31 [new Agent/Null]
$ns attach-agent $n261 $null31
$ns connect $udp31 $null31
$ns at 0.13 "$pareto31 start"

#Background: 262 to 263
set n262 [$ns node]
$n262 set-position 38.3 -90.9;
set n263 [$ns node]
$n263 set-position 42.2 -135.0;
#Add GSL links
$n262 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n263 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp32 [new Agent/UDP]
$ns attach-agent $n262 $udp32
set pareto32 [new Application/Traffic/Pareto]
$pareto32 attach-agent $udp32
$pareto32 set packetSize_ 1000
$pareto32 set rate_ 224Kb
set null32 [new Agent/Null]
$ns attach-agent $n263 $null32
$ns connect $udp32 $null32
$ns at 0.72 "$pareto32 start"

#Background: 264 to 265
set n264 [$ns node]
$n264 set-position 52.2 -117.7;
set n265 [$ns node]
$n265 set-position 26.4 -122.8;
#Add GSL links
$n264 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n265 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp33 [new Agent/UDP]
$ns attach-agent $n264 $udp33
set pareto33 [new Application/Traffic/Pareto]
$pareto33 attach-agent $udp33
$pareto33 set packetSize_ 1000
$pareto33 set rate_ 224Kb
set null33 [new Agent/Null]
$ns attach-agent $n265 $null33
$ns connect $udp33 $null33
$ns at 0.59 "$pareto33 start"

#Background: 266 to 267
set n266 [$ns node]
$n266 set-position 36.6 -102.0;
set n267 [$ns node]
$n267 set-position 37.2 -63.5;
#Add GSL links
$n266 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n267 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp34 [new Agent/UDP]
$ns attach-agent $n266 $udp34
set pareto34 [new Application/Traffic/Pareto]
$pareto34 attach-agent $udp34
$pareto34 set packetSize_ 1000
$pareto34 set rate_ 224Kb
set null34 [new Agent/Null]
$ns attach-agent $n267 $null34
$ns connect $udp34 $null34
$ns at 0.53 "$pareto34 start"

#Background: 268 to 269
set n268 [$ns node]
$n268 set-position 22.3 -56.5;
set n269 [$ns node]
$n269 set-position 55.8 -110.0;
#Add GSL links
$n268 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n269 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp35 [new Agent/UDP]
$ns attach-agent $n268 $udp35
set pareto35 [new Application/Traffic/Pareto]
$pareto35 attach-agent $udp35
$pareto35 set packetSize_ 1000
$pareto35 set rate_ 224Kb
set null35 [new Agent/Null]
$ns attach-agent $n269 $null35
$ns connect $udp35 $null35
$ns at 0.79 "$pareto35 start"

#Background: 270 to 271
set n270 [$ns node]
$n270 set-position 27.2 -107.7;
set n271 [$ns node]
$n271 set-position 30.1 -71.4;
#Add GSL links
$n270 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n271 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp36 [new Agent/UDP]
$ns attach-agent $n270 $udp36
set pareto36 [new Application/Traffic/Pareto]
$pareto36 attach-agent $udp36
$pareto36 set packetSize_ 1000
$pareto36 set rate_ 224Kb
set null36 [new Agent/Null]
$ns attach-agent $n271 $null36
$ns connect $udp36 $null36
$ns at 0.82 "$pareto36 start"

#Background: 272 to 273
set n272 [$ns node]
$n272 set-position 22.4 -66.4;
set n273 [$ns node]
$n273 set-position 21.7 -65.6;
#Add GSL links
$n272 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n273 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp37 [new Agent/UDP]
$ns attach-agent $n272 $udp37
set pareto37 [new Application/Traffic/Pareto]
$pareto37 attach-agent $udp37
$pareto37 set packetSize_ 1000
$pareto37 set rate_ 224Kb
set null37 [new Agent/Null]
$ns attach-agent $n273 $null37
$ns connect $udp37 $null37
$ns at 0.89 "$pareto37 start"

#Background: 274 to 275
set n274 [$ns node]
$n274 set-position 37.2 -63.5;
set n275 [$ns node]
$n275 set-position 32.1 -120.0;
#Add GSL links
$n274 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n275 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp38 [new Agent/UDP]
$ns attach-agent $n274 $udp38
set pareto38 [new Application/Traffic/Pareto]
$pareto38 attach-agent $udp38
$pareto38 set packetSize_ 1000
$pareto38 set rate_ 224Kb
set null38 [new Agent/Null]
$ns attach-agent $n275 $null38
$ns connect $udp38 $null38
$ns at 0.82 "$pareto38 start"

#Background: 276 to 277
set n276 [$ns node]
$n276 set-position 27.5 -69.0;
set n277 [$ns node]
$n277 set-position 26.4 -122.8;
#Add GSL links
$n276 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n277 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp39 [new Agent/UDP]
$ns attach-agent $n276 $udp39
set pareto39 [new Application/Traffic/Pareto]
$pareto39 attach-agent $udp39
$pareto39 set packetSize_ 1000
$pareto39 set rate_ 224Kb
set null39 [new Agent/Null]
$ns attach-agent $n277 $null39
$ns connect $udp39 $null39
$ns at 0.99 "$pareto39 start"

#Background: 278 to 279
set n278 [$ns node]
$n278 set-position 25.7 -87.8;
set n279 [$ns node]
$n279 set-position 58.2 -115.5;
#Add GSL links
$n278 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n279 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp40 [new Agent/UDP]
$ns attach-agent $n278 $udp40
set pareto40 [new Application/Traffic/Pareto]
$pareto40 attach-agent $udp40
$pareto40 set packetSize_ 1000
$pareto40 set rate_ 224Kb
set null40 [new Agent/Null]
$ns attach-agent $n279 $null40
$ns connect $udp40 $null40
$ns at 0.97 "$pareto40 start"

#Background: 280 to 281
set n280 [$ns node]
$n280 set-position 51.7 -60.4;
set n281 [$ns node]
$n281 set-position 22.3 -122.3;
#Add GSL links
$n280 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n281 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp41 [new Agent/UDP]
$ns attach-agent $n280 $udp41
set pareto41 [new Application/Traffic/Pareto]
$pareto41 attach-agent $udp41
$pareto41 set packetSize_ 1000
$pareto41 set rate_ 224Kb
set null41 [new Agent/Null]
$ns attach-agent $n281 $null41
$ns connect $udp41 $null41
$ns at 0.44 "$pareto41 start"

#Background: 282 to 283
set n282 [$ns node]
$n282 set-position 31.8 -127.1;
set n283 [$ns node]
$n283 set-position 45.5 -70.8;
#Add GSL links
$n282 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n283 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp42 [new Agent/UDP]
$ns attach-agent $n282 $udp42
set pareto42 [new Application/Traffic/Pareto]
$pareto42 attach-agent $udp42
$pareto42 set packetSize_ 1000
$pareto42 set rate_ 224Kb
set null42 [new Agent/Null]
$ns attach-agent $n283 $null42
$ns connect $udp42 $null42
$ns at 0.03 "$pareto42 start"

#Background: 284 to 285
set n284 [$ns node]
$n284 set-position 42.6 -112.9;
set n285 [$ns node]
$n285 set-position 43.6 -90.6;
#Add GSL links
$n284 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n285 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp43 [new Agent/UDP]
$ns attach-agent $n284 $udp43
set pareto43 [new Application/Traffic/Pareto]
$pareto43 attach-agent $udp43
$pareto43 set packetSize_ 1000
$pareto43 set rate_ 224Kb
set null43 [new Agent/Null]
$ns attach-agent $n285 $null43
$ns connect $udp43 $null43
$ns at 0.43 "$pareto43 start"

#Background: 286 to 287
set n286 [$ns node]
$n286 set-position 32.1 -120.0;
set n287 [$ns node]
$n287 set-position 38.3 -90.9;
#Add GSL links
$n286 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n287 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp44 [new Agent/UDP]
$ns attach-agent $n286 $udp44
set pareto44 [new Application/Traffic/Pareto]
$pareto44 attach-agent $udp44
$pareto44 set packetSize_ 1000
$pareto44 set rate_ 224Kb
set null44 [new Agent/Null]
$ns attach-agent $n287 $null44
$ns connect $udp44 $null44
$ns at 0.06 "$pareto44 start"

#Background: 288 to 289
set n288 [$ns node]
$n288 set-position 58.2 -115.5;
set n289 [$ns node]
$n289 set-position 36.5 -67.9;
#Add GSL links
$n288 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n289 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp45 [new Agent/UDP]
$ns attach-agent $n288 $udp45
set pareto45 [new Application/Traffic/Pareto]
$pareto45 attach-agent $udp45
$pareto45 set packetSize_ 1000
$pareto45 set rate_ 224Kb
set null45 [new Agent/Null]
$ns attach-agent $n289 $null45
$ns connect $udp45 $null45
$ns at 0.04 "$pareto45 start"

#Background: 290 to 291
set n290 [$ns node]
$n290 set-position 25.7 -87.8;
set n291 [$ns node]
$n291 set-position 25.2 -83.7;
#Add GSL links
$n290 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n291 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp46 [new Agent/UDP]
$ns attach-agent $n290 $udp46
set pareto46 [new Application/Traffic/Pareto]
$pareto46 attach-agent $udp46
$pareto46 set packetSize_ 1000
$pareto46 set rate_ 224Kb
set null46 [new Agent/Null]
$ns attach-agent $n291 $null46
$ns connect $udp46 $null46
$ns at 0.74 "$pareto46 start"

#Background: 292 to 293
set n292 [$ns node]
$n292 set-position 57.6 -113.0;
set n293 [$ns node]
$n293 set-position 54.2 -65.1;
#Add GSL links
$n292 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n293 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp47 [new Agent/UDP]
$ns attach-agent $n292 $udp47
set pareto47 [new Application/Traffic/Pareto]
$pareto47 attach-agent $udp47
$pareto47 set packetSize_ 1000
$pareto47 set rate_ 224Kb
set null47 [new Agent/Null]
$ns attach-agent $n293 $null47
$ns connect $udp47 $null47
$ns at 0.88 "$pareto47 start"

#Background: 294 to 295
set n294 [$ns node]
$n294 set-position 59.4 -83.2;
set n295 [$ns node]
$n295 set-position 58.0 -86.6;
#Add GSL links
$n294 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n295 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp48 [new Agent/UDP]
$ns attach-agent $n294 $udp48
set pareto48 [new Application/Traffic/Pareto]
$pareto48 attach-agent $udp48
$pareto48 set packetSize_ 1000
$pareto48 set rate_ 224Kb
set null48 [new Agent/Null]
$ns attach-agent $n295 $null48
$ns connect $udp48 $null48
$ns at 0.18 "$pareto48 start"

#Background: 296 to 297
set n296 [$ns node]
$n296 set-position 30.4 -75.1;
set n297 [$ns node]
$n297 set-position 43.8 -126.7;
#Add GSL links
$n296 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n297 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp49 [new Agent/UDP]
$ns attach-agent $n296 $udp49
set pareto49 [new Application/Traffic/Pareto]
$pareto49 attach-agent $udp49
$pareto49 set packetSize_ 1000
$pareto49 set rate_ 224Kb
set null49 [new Agent/Null]
$ns attach-agent $n297 $null49
$ns connect $udp49 $null49
$ns at 0.25 "$pareto49 start"

#Background: 298 to 299
set n298 [$ns node]
$n298 set-position 41.1 -124.6;
set n299 [$ns node]
$n299 set-position 46.1 -84.5;
#Add GSL links
$n298 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n299 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp50 [new Agent/UDP]
$ns attach-agent $n298 $udp50
set pareto50 [new Application/Traffic/Pareto]
$pareto50 attach-agent $udp50
$pareto50 set packetSize_ 1000
$pareto50 set rate_ 224Kb
set null50 [new Agent/Null]
$ns attach-agent $n299 $null50
$ns connect $udp50 $null50
$ns at 0.88 "$pareto50 start"

#Background: 300 to 301
set n300 [$ns node]
$n300 set-position 22.4 -66.4;
set n301 [$ns node]
$n301 set-position 29.2 -55.8;
#Add GSL links
$n300 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n301 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp51 [new Agent/UDP]
$ns attach-agent $n300 $udp51
set pareto51 [new Application/Traffic/Pareto]
$pareto51 attach-agent $udp51
$pareto51 set packetSize_ 1000
$pareto51 set rate_ 224Kb
set null51 [new Agent/Null]
$ns attach-agent $n301 $null51
$ns connect $udp51 $null51
$ns at 0.28 "$pareto51 start"

#Background: 302 to 303
set n302 [$ns node]
$n302 set-position 48.2 -128.4;
set n303 [$ns node]
$n303 set-position 52.8 -89.5;
#Add GSL links
$n302 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n303 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp52 [new Agent/UDP]
$ns attach-agent $n302 $udp52
set pareto52 [new Application/Traffic/Pareto]
$pareto52 attach-agent $udp52
$pareto52 set packetSize_ 1000
$pareto52 set rate_ 224Kb
set null52 [new Agent/Null]
$ns attach-agent $n303 $null52
$ns connect $udp52 $null52
$ns at 0.82 "$pareto52 start"

#Background: 304 to 305
set n304 [$ns node]
$n304 set-position 30.4 -75.1;
set n305 [$ns node]
$n305 set-position 55.5 -90.5;
#Add GSL links
$n304 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n305 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp53 [new Agent/UDP]
$ns attach-agent $n304 $udp53
set pareto53 [new Application/Traffic/Pareto]
$pareto53 attach-agent $udp53
$pareto53 set packetSize_ 1000
$pareto53 set rate_ 224Kb
set null53 [new Agent/Null]
$ns attach-agent $n305 $null53
$ns connect $udp53 $null53
$ns at 0.60 "$pareto53 start"

#Background: 306 to 307
set n306 [$ns node]
$n306 set-position 27.7 -105.5;
set n307 [$ns node]
$n307 set-position 55.2 -120.3;
#Add GSL links
$n306 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n307 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp54 [new Agent/UDP]
$ns attach-agent $n306 $udp54
set pareto54 [new Application/Traffic/Pareto]
$pareto54 attach-agent $udp54
$pareto54 set packetSize_ 1000
$pareto54 set rate_ 224Kb
set null54 [new Agent/Null]
$ns attach-agent $n307 $null54
$ns connect $udp54 $null54
$ns at 0.83 "$pareto54 start"

#Background: 308 to 309
set n308 [$ns node]
$n308 set-position 34.8 -106.8;
set n309 [$ns node]
$n309 set-position 40.5 -122.2;
#Add GSL links
$n308 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n309 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp55 [new Agent/UDP]
$ns attach-agent $n308 $udp55
set pareto55 [new Application/Traffic/Pareto]
$pareto55 attach-agent $udp55
$pareto55 set packetSize_ 1000
$pareto55 set rate_ 224Kb
set null55 [new Agent/Null]
$ns attach-agent $n309 $null55
$ns connect $udp55 $null55
$ns at 0.13 "$pareto55 start"

#Background: 310 to 311
set n310 [$ns node]
$n310 set-position 25.7 -87.8;
set n311 [$ns node]
$n311 set-position 56.0 -95.6;
#Add GSL links
$n310 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n311 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp56 [new Agent/UDP]
$ns attach-agent $n310 $udp56
set pareto56 [new Application/Traffic/Pareto]
$pareto56 attach-agent $udp56
$pareto56 set packetSize_ 1000
$pareto56 set rate_ 224Kb
set null56 [new Agent/Null]
$ns attach-agent $n311 $null56
$ns connect $udp56 $null56
$ns at 0.87 "$pareto56 start"

#Background: 312 to 313
set n312 [$ns node]
$n312 set-position 58.4 -70.0;
set n313 [$ns node]
$n313 set-position 42.2 -135.0;
#Add GSL links
$n312 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n313 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp57 [new Agent/UDP]
$ns attach-agent $n312 $udp57
set pareto57 [new Application/Traffic/Pareto]
$pareto57 attach-agent $udp57
$pareto57 set packetSize_ 1000
$pareto57 set rate_ 224Kb
set null57 [new Agent/Null]
$ns attach-agent $n313 $null57
$ns connect $udp57 $null57
$ns at 0.06 "$pareto57 start"

#Background: 314 to 315
set n314 [$ns node]
$n314 set-position 54.0 -111.2;
set n315 [$ns node]
$n315 set-position 31.0 -97.9;
#Add GSL links
$n314 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n315 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp58 [new Agent/UDP]
$ns attach-agent $n314 $udp58
set pareto58 [new Application/Traffic/Pareto]
$pareto58 attach-agent $udp58
$pareto58 set packetSize_ 1000
$pareto58 set rate_ 224Kb
set null58 [new Agent/Null]
$ns attach-agent $n315 $null58
$ns connect $udp58 $null58
$ns at 0.20 "$pareto58 start"

#Background: 316 to 317
set n316 [$ns node]
$n316 set-position 41.4 -122.2;
set n317 [$ns node]
$n317 set-position 29.9 -89.3;
#Add GSL links
$n316 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n317 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp59 [new Agent/UDP]
$ns attach-agent $n316 $udp59
set pareto59 [new Application/Traffic/Pareto]
$pareto59 attach-agent $udp59
$pareto59 set packetSize_ 1000
$pareto59 set rate_ 224Kb
set null59 [new Agent/Null]
$ns attach-agent $n317 $null59
$ns connect $udp59 $null59
$ns at 0.19 "$pareto59 start"

#Background: 318 to 319
set n318 [$ns node]
$n318 set-position 43.1 -58.3;
set n319 [$ns node]
$n319 set-position 45.4 -90.4;
#Add GSL links
$n318 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n319 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp60 [new Agent/UDP]
$ns attach-agent $n318 $udp60
set pareto60 [new Application/Traffic/Pareto]
$pareto60 attach-agent $udp60
$pareto60 set packetSize_ 1000
$pareto60 set rate_ 224Kb
set null60 [new Agent/Null]
$ns attach-agent $n319 $null60
$ns connect $udp60 $null60
$ns at 0.08 "$pareto60 start"

#Background: 320 to 321
set n320 [$ns node]
$n320 set-position 41.1 -124.6;
set n321 [$ns node]
$n321 set-position 43.0 -58.6;
#Add GSL links
$n320 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n321 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp61 [new Agent/UDP]
$ns attach-agent $n320 $udp61
set pareto61 [new Application/Traffic/Pareto]
$pareto61 attach-agent $udp61
$pareto61 set packetSize_ 1000
$pareto61 set rate_ 224Kb
set null61 [new Agent/Null]
$ns attach-agent $n321 $null61
$ns connect $udp61 $null61
$ns at 0.77 "$pareto61 start"

#Background: 322 to 323
set n322 [$ns node]
$n322 set-position 27.5 -111.8;
set n323 [$ns node]
$n323 set-position 56.9 -75.0;
#Add GSL links
$n322 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n323 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp62 [new Agent/UDP]
$ns attach-agent $n322 $udp62
set pareto62 [new Application/Traffic/Pareto]
$pareto62 attach-agent $udp62
$pareto62 set packetSize_ 1000
$pareto62 set rate_ 224Kb
set null62 [new Agent/Null]
$ns attach-agent $n323 $null62
$ns connect $udp62 $null62
$ns at 0.91 "$pareto62 start"

#Background: 324 to 325
set n324 [$ns node]
$n324 set-position 48.9 -111.3;
set n325 [$ns node]
$n325 set-position 21.7 -65.6;
#Add GSL links
$n324 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n325 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp63 [new Agent/UDP]
$ns attach-agent $n324 $udp63
set pareto63 [new Application/Traffic/Pareto]
$pareto63 attach-agent $udp63
$pareto63 set packetSize_ 1000
$pareto63 set rate_ 224Kb
set null63 [new Agent/Null]
$ns attach-agent $n325 $null63
$ns connect $udp63 $null63
$ns at 0.24 "$pareto63 start"

#Background: 326 to 327
set n326 [$ns node]
$n326 set-position 36.8 -90.5;
set n327 [$ns node]
$n327 set-position 42.6 -112.9;
#Add GSL links
$n326 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n327 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp64 [new Agent/UDP]
$ns attach-agent $n326 $udp64
set pareto64 [new Application/Traffic/Pareto]
$pareto64 attach-agent $udp64
$pareto64 set packetSize_ 1000
$pareto64 set rate_ 224Kb
set null64 [new Agent/Null]
$ns attach-agent $n327 $null64
$ns connect $udp64 $null64
$ns at 0.82 "$pareto64 start"

#Background: 328 to 329
set n328 [$ns node]
$n328 set-position 53.8 -126.9;
set n329 [$ns node]
$n329 set-position 38.9 -97.7;
#Add GSL links
$n328 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n329 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp65 [new Agent/UDP]
$ns attach-agent $n328 $udp65
set pareto65 [new Application/Traffic/Pareto]
$pareto65 attach-agent $udp65
$pareto65 set packetSize_ 1000
$pareto65 set rate_ 224Kb
set null65 [new Agent/Null]
$ns attach-agent $n329 $null65
$ns connect $udp65 $null65
$ns at 0.75 "$pareto65 start"

#Background: 330 to 331
set n330 [$ns node]
$n330 set-position 51.8 -120.5;
set n331 [$ns node]
$n331 set-position 38.2 -122.9;
#Add GSL links
$n330 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n331 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp66 [new Agent/UDP]
$ns attach-agent $n330 $udp66
set pareto66 [new Application/Traffic/Pareto]
$pareto66 attach-agent $udp66
$pareto66 set packetSize_ 1000
$pareto66 set rate_ 224Kb
set null66 [new Agent/Null]
$ns attach-agent $n331 $null66
$ns connect $udp66 $null66
$ns at 0.30 "$pareto66 start"

#Background: 332 to 333
set n332 [$ns node]
$n332 set-position 29.2 -55.8;
set n333 [$ns node]
$n333 set-position 30.1 -71.4;
#Add GSL links
$n332 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n333 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp67 [new Agent/UDP]
$ns attach-agent $n332 $udp67
set pareto67 [new Application/Traffic/Pareto]
$pareto67 attach-agent $udp67
$pareto67 set packetSize_ 1000
$pareto67 set rate_ 224Kb
set null67 [new Agent/Null]
$ns attach-agent $n333 $null67
$ns connect $udp67 $null67
$ns at 0.29 "$pareto67 start"

#Background: 334 to 335
set n334 [$ns node]
$n334 set-position 55.2 -129.3;
set n335 [$ns node]
$n335 set-position 32.3 -104.6;
#Add GSL links
$n334 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n335 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp68 [new Agent/UDP]
$ns attach-agent $n334 $udp68
set pareto68 [new Application/Traffic/Pareto]
$pareto68 attach-agent $udp68
$pareto68 set packetSize_ 1000
$pareto68 set rate_ 224Kb
set null68 [new Agent/Null]
$ns attach-agent $n335 $null68
$ns connect $udp68 $null68
$ns at 0.67 "$pareto68 start"

#Background: 336 to 337
set n336 [$ns node]
$n336 set-position 21.4 -122.5;
set n337 [$ns node]
$n337 set-position 36.6 -102.0;
#Add GSL links
$n336 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n337 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp69 [new Agent/UDP]
$ns attach-agent $n336 $udp69
set pareto69 [new Application/Traffic/Pareto]
$pareto69 attach-agent $udp69
$pareto69 set packetSize_ 1000
$pareto69 set rate_ 224Kb
set null69 [new Agent/Null]
$ns attach-agent $n337 $null69
$ns connect $udp69 $null69
$ns at 0.24 "$pareto69 start"

#Background: 338 to 339
set n338 [$ns node]
$n338 set-position 48.2 -133.8;
set n339 [$ns node]
$n339 set-position 45.4 -90.4;
#Add GSL links
$n338 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n339 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp70 [new Agent/UDP]
$ns attach-agent $n338 $udp70
set pareto70 [new Application/Traffic/Pareto]
$pareto70 attach-agent $udp70
$pareto70 set packetSize_ 1000
$pareto70 set rate_ 224Kb
set null70 [new Agent/Null]
$ns attach-agent $n339 $null70
$ns connect $udp70 $null70
$ns at 0.49 "$pareto70 start"

#Background: 340 to 341
set n340 [$ns node]
$n340 set-position 56.9 -75.0;
set n341 [$ns node]
$n341 set-position 54.0 -85.2;
#Add GSL links
$n340 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n341 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp71 [new Agent/UDP]
$ns attach-agent $n340 $udp71
set pareto71 [new Application/Traffic/Pareto]
$pareto71 attach-agent $udp71
$pareto71 set packetSize_ 1000
$pareto71 set rate_ 224Kb
set null71 [new Agent/Null]
$ns attach-agent $n341 $null71
$ns connect $udp71 $null71
$ns at 0.42 "$pareto71 start"

#Background: 342 to 343
set n342 [$ns node]
$n342 set-position 35.7 -76.4;
set n343 [$ns node]
$n343 set-position 37.0 -110.9;
#Add GSL links
$n342 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n343 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp72 [new Agent/UDP]
$ns attach-agent $n342 $udp72
set pareto72 [new Application/Traffic/Pareto]
$pareto72 attach-agent $udp72
$pareto72 set packetSize_ 1000
$pareto72 set rate_ 224Kb
set null72 [new Agent/Null]
$ns attach-agent $n343 $null72
$ns connect $udp72 $null72
$ns at 0.00 "$pareto72 start"

#Background: 344 to 345
set n344 [$ns node]
$n344 set-position 42.2 -135.0;
set n345 [$ns node]
$n345 set-position 58.4 -70.0;
#Add GSL links
$n344 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n345 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp73 [new Agent/UDP]
$ns attach-agent $n344 $udp73
set pareto73 [new Application/Traffic/Pareto]
$pareto73 attach-agent $udp73
$pareto73 set packetSize_ 1000
$pareto73 set rate_ 224Kb
set null73 [new Agent/Null]
$ns attach-agent $n345 $null73
$ns connect $udp73 $null73
$ns at 0.74 "$pareto73 start"

#Background: 346 to 347
set n346 [$ns node]
$n346 set-position 56.0 -95.6;
set n347 [$ns node]
$n347 set-position 36.8 -90.5;
#Add GSL links
$n346 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n347 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp74 [new Agent/UDP]
$ns attach-agent $n346 $udp74
set pareto74 [new Application/Traffic/Pareto]
$pareto74 attach-agent $udp74
$pareto74 set packetSize_ 1000
$pareto74 set rate_ 224Kb
set null74 [new Agent/Null]
$ns attach-agent $n347 $null74
$ns connect $udp74 $null74
$ns at 0.12 "$pareto74 start"

#Background: 348 to 349
set n348 [$ns node]
$n348 set-position 48.8 -111.2;
set n349 [$ns node]
$n349 set-position 27.7 -105.5;
#Add GSL links
$n348 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n349 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp75 [new Agent/UDP]
$ns attach-agent $n348 $udp75
set pareto75 [new Application/Traffic/Pareto]
$pareto75 attach-agent $udp75
$pareto75 set packetSize_ 1000
$pareto75 set rate_ 224Kb
set null75 [new Agent/Null]
$ns attach-agent $n349 $null75
$ns connect $udp75 $null75
$ns at 0.68 "$pareto75 start"

#Background: 350 to 351
set n350 [$ns node]
$n350 set-position 36.2 -128.1;
set n351 [$ns node]
$n351 set-position 48.2 -128.4;
#Add GSL links
$n350 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n351 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp76 [new Agent/UDP]
$ns attach-agent $n350 $udp76
set pareto76 [new Application/Traffic/Pareto]
$pareto76 attach-agent $udp76
$pareto76 set packetSize_ 1000
$pareto76 set rate_ 224Kb
set null76 [new Agent/Null]
$ns attach-agent $n351 $null76
$ns connect $udp76 $null76
$ns at 0.97 "$pareto76 start"

#Background: 352 to 353
set n352 [$ns node]
$n352 set-position 26.2 -56.4;
set n353 [$ns node]
$n353 set-position 35.7 -76.4;
#Add GSL links
$n352 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n353 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp77 [new Agent/UDP]
$ns attach-agent $n352 $udp77
set pareto77 [new Application/Traffic/Pareto]
$pareto77 attach-agent $udp77
$pareto77 set packetSize_ 1000
$pareto77 set rate_ 224Kb
set null77 [new Agent/Null]
$ns attach-agent $n353 $null77
$ns connect $udp77 $null77
$ns at 0.27 "$pareto77 start"

#Background: 354 to 355
set n354 [$ns node]
$n354 set-position 54.8 -112.2;
set n355 [$ns node]
$n355 set-position 25.2 -83.7;
#Add GSL links
$n354 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n355 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp78 [new Agent/UDP]
$ns attach-agent $n354 $udp78
set pareto78 [new Application/Traffic/Pareto]
$pareto78 attach-agent $udp78
$pareto78 set packetSize_ 1000
$pareto78 set rate_ 224Kb
set null78 [new Agent/Null]
$ns attach-agent $n355 $null78
$ns connect $udp78 $null78
$ns at 0.93 "$pareto78 start"

#Background: 356 to 357
set n356 [$ns node]
$n356 set-position 45.5 -70.8;
set n357 [$ns node]
$n357 set-position 21.7 -65.6;
#Add GSL links
$n356 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n357 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp79 [new Agent/UDP]
$ns attach-agent $n356 $udp79
set pareto79 [new Application/Traffic/Pareto]
$pareto79 attach-agent $udp79
$pareto79 set packetSize_ 1000
$pareto79 set rate_ 224Kb
set null79 [new Agent/Null]
$ns attach-agent $n357 $null79
$ns connect $udp79 $null79
$ns at 0.65 "$pareto79 start"

#Background: 358 to 359
set n358 [$ns node]
$n358 set-position 43.8 -126.7;
set n359 [$ns node]
$n359 set-position 36.6 -102.0;
#Add GSL links
$n358 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n359 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp80 [new Agent/UDP]
$ns attach-agent $n358 $udp80
set pareto80 [new Application/Traffic/Pareto]
$pareto80 attach-agent $udp80
$pareto80 set packetSize_ 1000
$pareto80 set rate_ 224Kb
set null80 [new Agent/Null]
$ns attach-agent $n359 $null80
$ns connect $udp80 $null80
$ns at 0.69 "$pareto80 start"

#Background: 360 to 361
set n360 [$ns node]
$n360 set-position 37.6 -116.8;
set n361 [$ns node]
$n361 set-position 58.2 -115.5;
#Add GSL links
$n360 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n361 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp81 [new Agent/UDP]
$ns attach-agent $n360 $udp81
set pareto81 [new Application/Traffic/Pareto]
$pareto81 attach-agent $udp81
$pareto81 set packetSize_ 1000
$pareto81 set rate_ 224Kb
set null81 [new Agent/Null]
$ns attach-agent $n361 $null81
$ns connect $udp81 $null81
$ns at 0.45 "$pareto81 start"

#Background: 362 to 363
set n362 [$ns node]
$n362 set-position 51.8 -120.5;
set n363 [$ns node]
$n363 set-position 55.2 -120.3;
#Add GSL links
$n362 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n363 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp82 [new Agent/UDP]
$ns attach-agent $n362 $udp82
set pareto82 [new Application/Traffic/Pareto]
$pareto82 attach-agent $udp82
$pareto82 set packetSize_ 1000
$pareto82 set rate_ 224Kb
set null82 [new Agent/Null]
$ns attach-agent $n363 $null82
$ns connect $udp82 $null82
$ns at 0.72 "$pareto82 start"

#Background: 364 to 365
set n364 [$ns node]
$n364 set-position 50.3 -100.4;
set n365 [$ns node]
$n365 set-position 46.1 -84.5;
#Add GSL links
$n364 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n365 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp83 [new Agent/UDP]
$ns attach-agent $n364 $udp83
set pareto83 [new Application/Traffic/Pareto]
$pareto83 attach-agent $udp83
$pareto83 set packetSize_ 1000
$pareto83 set rate_ 224Kb
set null83 [new Agent/Null]
$ns attach-agent $n365 $null83
$ns connect $udp83 $null83
$ns at 0.32 "$pareto83 start"

#Background: 366 to 367
set n366 [$ns node]
$n366 set-position 42.1 -83.0;
set n367 [$ns node]
$n367 set-position 22.7 -64.6;
#Add GSL links
$n366 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n367 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp84 [new Agent/UDP]
$ns attach-agent $n366 $udp84
set pareto84 [new Application/Traffic/Pareto]
$pareto84 attach-agent $udp84
$pareto84 set packetSize_ 1000
$pareto84 set rate_ 224Kb
set null84 [new Agent/Null]
$ns attach-agent $n367 $null84
$ns connect $udp84 $null84
$ns at 0.87 "$pareto84 start"

#Background: 368 to 369
set n368 [$ns node]
$n368 set-position 47.6 -124.3;
set n369 [$ns node]
$n369 set-position 38.2 -122.9;
#Add GSL links
$n368 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n369 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp85 [new Agent/UDP]
$ns attach-agent $n368 $udp85
set pareto85 [new Application/Traffic/Pareto]
$pareto85 attach-agent $udp85
$pareto85 set packetSize_ 1000
$pareto85 set rate_ 224Kb
set null85 [new Agent/Null]
$ns attach-agent $n369 $null85
$ns connect $udp85 $null85
$ns at 0.18 "$pareto85 start"

#Background: 370 to 371
set n370 [$ns node]
$n370 set-position 27.5 -69.0;
set n371 [$ns node]
$n371 set-position 47.6 -124.3;
#Add GSL links
$n370 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n371 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp86 [new Agent/UDP]
$ns attach-agent $n370 $udp86
set pareto86 [new Application/Traffic/Pareto]
$pareto86 attach-agent $udp86
$pareto86 set packetSize_ 1000
$pareto86 set rate_ 224Kb
set null86 [new Agent/Null]
$ns attach-agent $n371 $null86
$ns connect $udp86 $null86
$ns at 0.44 "$pareto86 start"

#Background: 372 to 373
set n372 [$ns node]
$n372 set-position 45.0 -96.6;
set n373 [$ns node]
$n373 set-position 42.2 -135.0;
#Add GSL links
$n372 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n373 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp87 [new Agent/UDP]
$ns attach-agent $n372 $udp87
set pareto87 [new Application/Traffic/Pareto]
$pareto87 attach-agent $udp87
$pareto87 set packetSize_ 1000
$pareto87 set rate_ 224Kb
set null87 [new Agent/Null]
$ns attach-agent $n373 $null87
$ns connect $udp87 $null87
$ns at 0.51 "$pareto87 start"

#Background: 374 to 375
set n374 [$ns node]
$n374 set-position 53.8 -126.9;
set n375 [$ns node]
$n375 set-position 54.0 -85.2;
#Add GSL links
$n374 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n375 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp88 [new Agent/UDP]
$ns attach-agent $n374 $udp88
set pareto88 [new Application/Traffic/Pareto]
$pareto88 attach-agent $udp88
$pareto88 set packetSize_ 1000
$pareto88 set rate_ 224Kb
set null88 [new Agent/Null]
$ns attach-agent $n375 $null88
$ns connect $udp88 $null88
$ns at 0.45 "$pareto88 start"

#Background: 376 to 377
set n376 [$ns node]
$n376 set-position 37.1 -104.0;
set n377 [$ns node]
$n377 set-position 30.1 -71.4;
#Add GSL links
$n376 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n377 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp89 [new Agent/UDP]
$ns attach-agent $n376 $udp89
set pareto89 [new Application/Traffic/Pareto]
$pareto89 attach-agent $udp89
$pareto89 set packetSize_ 1000
$pareto89 set rate_ 224Kb
set null89 [new Agent/Null]
$ns attach-agent $n377 $null89
$ns connect $udp89 $null89
$ns at 0.99 "$pareto89 start"

#Background: 378 to 379
set n378 [$ns node]
$n378 set-position 58.4 -70.0;
set n379 [$ns node]
$n379 set-position 54.0 -111.2;
#Add GSL links
$n378 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n379 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp90 [new Agent/UDP]
$ns attach-agent $n378 $udp90
set pareto90 [new Application/Traffic/Pareto]
$pareto90 attach-agent $udp90
$pareto90 set packetSize_ 1000
$pareto90 set rate_ 224Kb
set null90 [new Agent/Null]
$ns attach-agent $n379 $null90
$ns connect $udp90 $null90
$ns at 0.84 "$pareto90 start"

#Background: 380 to 381
set n380 [$ns node]
$n380 set-position 22.3 -100.6;
set n381 [$ns node]
$n381 set-position 45.4 -90.4;
#Add GSL links
$n380 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n381 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp91 [new Agent/UDP]
$ns attach-agent $n380 $udp91
set pareto91 [new Application/Traffic/Pareto]
$pareto91 attach-agent $udp91
$pareto91 set packetSize_ 1000
$pareto91 set rate_ 224Kb
set null91 [new Agent/Null]
$ns attach-agent $n381 $null91
$ns connect $udp91 $null91
$ns at 0.55 "$pareto91 start"

#Background: 382 to 383
set n382 [$ns node]
$n382 set-position 21.7 -65.6;
set n383 [$ns node]
$n383 set-position 43.6 -90.6;
#Add GSL links
$n382 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n383 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp92 [new Agent/UDP]
$ns attach-agent $n382 $udp92
set pareto92 [new Application/Traffic/Pareto]
$pareto92 attach-agent $udp92
$pareto92 set packetSize_ 1000
$pareto92 set rate_ 224Kb
set null92 [new Agent/Null]
$ns attach-agent $n383 $null92
$ns connect $udp92 $null92
$ns at 0.45 "$pareto92 start"

#Background: 384 to 385
set n384 [$ns node]
$n384 set-position 34.2 -134.4;
set n385 [$ns node]
$n385 set-position 55.5 -90.5;
#Add GSL links
$n384 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n385 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp93 [new Agent/UDP]
$ns attach-agent $n384 $udp93
set pareto93 [new Application/Traffic/Pareto]
$pareto93 attach-agent $udp93
$pareto93 set packetSize_ 1000
$pareto93 set rate_ 224Kb
set null93 [new Agent/Null]
$ns attach-agent $n385 $null93
$ns connect $udp93 $null93
$ns at 0.95 "$pareto93 start"

#Background: 386 to 387
set n386 [$ns node]
$n386 set-position 21.4 -122.5;
set n387 [$ns node]
$n387 set-position 35.3 -70.7;
#Add GSL links
$n386 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n387 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp94 [new Agent/UDP]
$ns attach-agent $n386 $udp94
set pareto94 [new Application/Traffic/Pareto]
$pareto94 attach-agent $udp94
$pareto94 set packetSize_ 1000
$pareto94 set rate_ 224Kb
set null94 [new Agent/Null]
$ns attach-agent $n387 $null94
$ns connect $udp94 $null94
$ns at 0.27 "$pareto94 start"

#Background: 388 to 389
set n388 [$ns node]
$n388 set-position 42.6 -112.9;
set n389 [$ns node]
$n389 set-position 52.8 -89.5;
#Add GSL links
$n388 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n389 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp95 [new Agent/UDP]
$ns attach-agent $n388 $udp95
set pareto95 [new Application/Traffic/Pareto]
$pareto95 attach-agent $udp95
$pareto95 set packetSize_ 1000
$pareto95 set rate_ 224Kb
set null95 [new Agent/Null]
$ns attach-agent $n389 $null95
$ns connect $udp95 $null95
$ns at 0.29 "$pareto95 start"

#Background: 390 to 391
set n390 [$ns node]
$n390 set-position 22.4 -66.4;
set n391 [$ns node]
$n391 set-position 54.0 -85.2;
#Add GSL links
$n390 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n391 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp96 [new Agent/UDP]
$ns attach-agent $n390 $udp96
set pareto96 [new Application/Traffic/Pareto]
$pareto96 attach-agent $udp96
$pareto96 set packetSize_ 1000
$pareto96 set rate_ 224Kb
set null96 [new Agent/Null]
$ns attach-agent $n391 $null96
$ns connect $udp96 $null96
$ns at 0.74 "$pareto96 start"

#Background: 392 to 393
set n392 [$ns node]
$n392 set-position 36.6 -102.0;
set n393 [$ns node]
$n393 set-position 34.8 -106.8;
#Add GSL links
$n392 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n393 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp97 [new Agent/UDP]
$ns attach-agent $n392 $udp97
set pareto97 [new Application/Traffic/Pareto]
$pareto97 attach-agent $udp97
$pareto97 set packetSize_ 1000
$pareto97 set rate_ 224Kb
set null97 [new Agent/Null]
$ns attach-agent $n393 $null97
$ns connect $udp97 $null97
$ns at 0.94 "$pareto97 start"

#Background: 394 to 395
set n394 [$ns node]
$n394 set-position 56.0 -95.6;
set n395 [$ns node]
$n395 set-position 55.2 -129.3;
#Add GSL links
$n394 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n395 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp98 [new Agent/UDP]
$ns attach-agent $n394 $udp98
set pareto98 [new Application/Traffic/Pareto]
$pareto98 attach-agent $udp98
$pareto98 set packetSize_ 1000
$pareto98 set rate_ 224Kb
set null98 [new Agent/Null]
$ns attach-agent $n395 $null98
$ns connect $udp98 $null98
$ns at 0.21 "$pareto98 start"

#Background: 396 to 397
set n396 [$ns node]
$n396 set-position 22.1 -111.1;
set n397 [$ns node]
$n397 set-position 29.2 -55.8;
#Add GSL links
$n396 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n397 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp99 [new Agent/UDP]
$ns attach-agent $n396 $udp99
set pareto99 [new Application/Traffic/Pareto]
$pareto99 attach-agent $udp99
$pareto99 set packetSize_ 1000
$pareto99 set rate_ 224Kb
set null99 [new Agent/Null]
$ns attach-agent $n397 $null99
$ns connect $udp99 $null99
$ns at 0.18 "$pareto99 start"

#Background: 398 to 399
set n398 [$ns node]
$n398 set-position 34.1 -79.6;
set n399 [$ns node]
$n399 set-position 22.3 -100.6;
#Add GSL links
$n398 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n399 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp100 [new Agent/UDP]
$ns attach-agent $n398 $udp100
set pareto100 [new Application/Traffic/Pareto]
$pareto100 attach-agent $udp100
$pareto100 set packetSize_ 1000
$pareto100 set rate_ 224Kb
set null100 [new Agent/Null]
$ns attach-agent $n399 $null100
$ns connect $udp100 $null100
$ns at 0.15 "$pareto100 start"

#Background: 400 to 401
set n400 [$ns node]
$n400 set-position 27.3 -82.0;
set n401 [$ns node]
$n401 set-position 35.7 -76.4;
#Add GSL links
$n400 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n401 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp101 [new Agent/UDP]
$ns attach-agent $n400 $udp101
set pareto101 [new Application/Traffic/Pareto]
$pareto101 attach-agent $udp101
$pareto101 set packetSize_ 1000
$pareto101 set rate_ 224Kb
set null101 [new Agent/Null]
$ns attach-agent $n401 $null101
$ns connect $udp101 $null101
$ns at 0.11 "$pareto101 start"

#Background: 402 to 403
set n402 [$ns node]
$n402 set-position 24.2 -111.7;
set n403 [$ns node]
$n403 set-position 52.7 -58.3;
#Add GSL links
$n402 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n403 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp102 [new Agent/UDP]
$ns attach-agent $n402 $udp102
set pareto102 [new Application/Traffic/Pareto]
$pareto102 attach-agent $udp102
$pareto102 set packetSize_ 1000
$pareto102 set rate_ 224Kb
set null102 [new Agent/Null]
$ns attach-agent $n403 $null102
$ns connect $udp102 $null102
$ns at 0.98 "$pareto102 start"

#Background: 404 to 405
set n404 [$ns node]
$n404 set-position 30.1 -71.4;
set n405 [$ns node]
$n405 set-position 37.6 -116.8;
#Add GSL links
$n404 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n405 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp103 [new Agent/UDP]
$ns attach-agent $n404 $udp103
set pareto103 [new Application/Traffic/Pareto]
$pareto103 attach-agent $udp103
$pareto103 set packetSize_ 1000
$pareto103 set rate_ 224Kb
set null103 [new Agent/Null]
$ns attach-agent $n405 $null103
$ns connect $udp103 $null103
$ns at 0.78 "$pareto103 start"

#Background: 406 to 407
set n406 [$ns node]
$n406 set-position 27.3 -82.0;
set n407 [$ns node]
$n407 set-position 27.5 -111.8;
#Add GSL links
$n406 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n407 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp104 [new Agent/UDP]
$ns attach-agent $n406 $udp104
set pareto104 [new Application/Traffic/Pareto]
$pareto104 attach-agent $udp104
$pareto104 set packetSize_ 1000
$pareto104 set rate_ 224Kb
set null104 [new Agent/Null]
$ns attach-agent $n407 $null104
$ns connect $udp104 $null104
$ns at 0.79 "$pareto104 start"

#Background: 408 to 409
set n408 [$ns node]
$n408 set-position 24.2 -111.7;
set n409 [$ns node]
$n409 set-position 34.8 -106.8;
#Add GSL links
$n408 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n409 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp105 [new Agent/UDP]
$ns attach-agent $n408 $udp105
set pareto105 [new Application/Traffic/Pareto]
$pareto105 attach-agent $udp105
$pareto105 set packetSize_ 1000
$pareto105 set rate_ 224Kb
set null105 [new Agent/Null]
$ns attach-agent $n409 $null105
$ns connect $udp105 $null105
$ns at 0.61 "$pareto105 start"

#Background: 410 to 411
set n410 [$ns node]
$n410 set-position 36.2 -128.1;
set n411 [$ns node]
$n411 set-position 29.9 -89.3;
#Add GSL links
$n410 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n411 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp106 [new Agent/UDP]
$ns attach-agent $n410 $udp106
set pareto106 [new Application/Traffic/Pareto]
$pareto106 attach-agent $udp106
$pareto106 set packetSize_ 1000
$pareto106 set rate_ 224Kb
set null106 [new Agent/Null]
$ns attach-agent $n411 $null106
$ns connect $udp106 $null106
$ns at 0.48 "$pareto106 start"

#Background: 412 to 413
set n412 [$ns node]
$n412 set-position 27.5 -111.8;
set n413 [$ns node]
$n413 set-position 54.2 -65.1;
#Add GSL links
$n412 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n413 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp107 [new Agent/UDP]
$ns attach-agent $n412 $udp107
set pareto107 [new Application/Traffic/Pareto]
$pareto107 attach-agent $udp107
$pareto107 set packetSize_ 1000
$pareto107 set rate_ 224Kb
set null107 [new Agent/Null]
$ns attach-agent $n413 $null107
$ns connect $udp107 $null107
$ns at 0.86 "$pareto107 start"

#Background: 414 to 415
set n414 [$ns node]
$n414 set-position 42.3 -125.3;
set n415 [$ns node]
$n415 set-position 40.5 -122.2;
#Add GSL links
$n414 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n415 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp108 [new Agent/UDP]
$ns attach-agent $n414 $udp108
set pareto108 [new Application/Traffic/Pareto]
$pareto108 attach-agent $udp108
$pareto108 set packetSize_ 1000
$pareto108 set rate_ 224Kb
set null108 [new Agent/Null]
$ns attach-agent $n415 $null108
$ns connect $udp108 $null108
$ns at 0.05 "$pareto108 start"

#Background: 416 to 417
set n416 [$ns node]
$n416 set-position 56.9 -75.0;
set n417 [$ns node]
$n417 set-position 25.7 -87.8;
#Add GSL links
$n416 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n417 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp109 [new Agent/UDP]
$ns attach-agent $n416 $udp109
set pareto109 [new Application/Traffic/Pareto]
$pareto109 attach-agent $udp109
$pareto109 set packetSize_ 1000
$pareto109 set rate_ 224Kb
set null109 [new Agent/Null]
$ns attach-agent $n417 $null109
$ns connect $udp109 $null109
$ns at 0.94 "$pareto109 start"

#Background: 418 to 419
set n418 [$ns node]
$n418 set-position 44.7 -84.5;
set n419 [$ns node]
$n419 set-position 25.1 -68.6;
#Add GSL links
$n418 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n419 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp110 [new Agent/UDP]
$ns attach-agent $n418 $udp110
set pareto110 [new Application/Traffic/Pareto]
$pareto110 attach-agent $udp110
$pareto110 set packetSize_ 1000
$pareto110 set rate_ 224Kb
set null110 [new Agent/Null]
$ns attach-agent $n419 $null110
$ns connect $udp110 $null110
$ns at 0.72 "$pareto110 start"

#Background: 420 to 421
set n420 [$ns node]
$n420 set-position 25.1 -68.6;
set n421 [$ns node]
$n421 set-position 51.4 -126.1;
#Add GSL links
$n420 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n421 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp111 [new Agent/UDP]
$ns attach-agent $n420 $udp111
set pareto111 [new Application/Traffic/Pareto]
$pareto111 attach-agent $udp111
$pareto111 set packetSize_ 1000
$pareto111 set rate_ 224Kb
set null111 [new Agent/Null]
$ns attach-agent $n421 $null111
$ns connect $udp111 $null111
$ns at 0.59 "$pareto111 start"

#Background: 422 to 423
set n422 [$ns node]
$n422 set-position 37.0 -110.9;
set n423 [$ns node]
$n423 set-position 24.2 -111.7;
#Add GSL links
$n422 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n423 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp112 [new Agent/UDP]
$ns attach-agent $n422 $udp112
set pareto112 [new Application/Traffic/Pareto]
$pareto112 attach-agent $udp112
$pareto112 set packetSize_ 1000
$pareto112 set rate_ 224Kb
set null112 [new Agent/Null]
$ns attach-agent $n423 $null112
$ns connect $udp112 $null112
$ns at 0.00 "$pareto112 start"

#Background: 424 to 425
set n424 [$ns node]
$n424 set-position 22.1 -89.8;
set n425 [$ns node]
$n425 set-position 46.3 -81.6;
#Add GSL links
$n424 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n425 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp113 [new Agent/UDP]
$ns attach-agent $n424 $udp113
set pareto113 [new Application/Traffic/Pareto]
$pareto113 attach-agent $udp113
$pareto113 set packetSize_ 1000
$pareto113 set rate_ 224Kb
set null113 [new Agent/Null]
$ns attach-agent $n425 $null113
$ns connect $udp113 $null113
$ns at 0.20 "$pareto113 start"

#Background: 426 to 427
set n426 [$ns node]
$n426 set-position 37.0 -110.9;
set n427 [$ns node]
$n427 set-position 39.7 -107.8;
#Add GSL links
$n426 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n427 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp114 [new Agent/UDP]
$ns attach-agent $n426 $udp114
set pareto114 [new Application/Traffic/Pareto]
$pareto114 attach-agent $udp114
$pareto114 set packetSize_ 1000
$pareto114 set rate_ 224Kb
set null114 [new Agent/Null]
$ns attach-agent $n427 $null114
$ns connect $udp114 $null114
$ns at 0.51 "$pareto114 start"

#Background: 428 to 429
set n428 [$ns node]
$n428 set-position 54.8 -112.2;
set n429 [$ns node]
$n429 set-position 54.8 -112.2;
#Add GSL links
$n428 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n429 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp115 [new Agent/UDP]
$ns attach-agent $n428 $udp115
set pareto115 [new Application/Traffic/Pareto]
$pareto115 attach-agent $udp115
$pareto115 set packetSize_ 1000
$pareto115 set rate_ 224Kb
set null115 [new Agent/Null]
$ns attach-agent $n429 $null115
$ns connect $udp115 $null115
$ns at 0.80 "$pareto115 start"

#Background: 430 to 431
set n430 [$ns node]
$n430 set-position 42.1 -83.0;
set n431 [$ns node]
$n431 set-position 27.2 -107.7;
#Add GSL links
$n430 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n431 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp116 [new Agent/UDP]
$ns attach-agent $n430 $udp116
set pareto116 [new Application/Traffic/Pareto]
$pareto116 attach-agent $udp116
$pareto116 set packetSize_ 1000
$pareto116 set rate_ 224Kb
set null116 [new Agent/Null]
$ns attach-agent $n431 $null116
$ns connect $udp116 $null116
$ns at 0.26 "$pareto116 start"

#Background: 432 to 433
set n432 [$ns node]
$n432 set-position 22.1 -111.1;
set n433 [$ns node]
$n433 set-position 38.3 -126.6;
#Add GSL links
$n432 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n433 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp117 [new Agent/UDP]
$ns attach-agent $n432 $udp117
set pareto117 [new Application/Traffic/Pareto]
$pareto117 attach-agent $udp117
$pareto117 set packetSize_ 1000
$pareto117 set rate_ 224Kb
set null117 [new Agent/Null]
$ns attach-agent $n433 $null117
$ns connect $udp117 $null117
$ns at 0.84 "$pareto117 start"

#Background: 434 to 435
set n434 [$ns node]
$n434 set-position 38.9 -97.7;
set n435 [$ns node]
$n435 set-position 22.4 -66.4;
#Add GSL links
$n434 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n435 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp118 [new Agent/UDP]
$ns attach-agent $n434 $udp118
set pareto118 [new Application/Traffic/Pareto]
$pareto118 attach-agent $udp118
$pareto118 set packetSize_ 1000
$pareto118 set rate_ 224Kb
set null118 [new Agent/Null]
$ns attach-agent $n435 $null118
$ns connect $udp118 $null118
$ns at 0.57 "$pareto118 start"

#Background: 436 to 437
set n436 [$ns node]
$n436 set-position 40.6 -96.3;
set n437 [$ns node]
$n437 set-position 26.2 -56.4;
#Add GSL links
$n436 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n437 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp119 [new Agent/UDP]
$ns attach-agent $n436 $udp119
set pareto119 [new Application/Traffic/Pareto]
$pareto119 attach-agent $udp119
$pareto119 set packetSize_ 1000
$pareto119 set rate_ 224Kb
set null119 [new Agent/Null]
$ns attach-agent $n437 $null119
$ns connect $udp119 $null119
$ns at 0.92 "$pareto119 start"

#Background: 438 to 439
set n438 [$ns node]
$n438 set-position 41.4 -122.2;
set n439 [$ns node]
$n439 set-position 32.0 -102.8;
#Add GSL links
$n438 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n439 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp120 [new Agent/UDP]
$ns attach-agent $n438 $udp120
set pareto120 [new Application/Traffic/Pareto]
$pareto120 attach-agent $udp120
$pareto120 set packetSize_ 1000
$pareto120 set rate_ 224Kb
set null120 [new Agent/Null]
$ns attach-agent $n439 $null120
$ns connect $udp120 $null120
$ns at 0.35 "$pareto120 start"

#Background: 440 to 441
set n440 [$ns node]
$n440 set-position 36.5 -67.9;
set n441 [$ns node]
$n441 set-position 41.4 -122.2;
#Add GSL links
$n440 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n441 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp121 [new Agent/UDP]
$ns attach-agent $n440 $udp121
set pareto121 [new Application/Traffic/Pareto]
$pareto121 attach-agent $udp121
$pareto121 set packetSize_ 1000
$pareto121 set rate_ 224Kb
set null121 [new Agent/Null]
$ns attach-agent $n441 $null121
$ns connect $udp121 $null121
$ns at 0.74 "$pareto121 start"

#Background: 442 to 443
set n442 [$ns node]
$n442 set-position 34.9 -56.0;
set n443 [$ns node]
$n443 set-position 40.5 -122.2;
#Add GSL links
$n442 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n443 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp122 [new Agent/UDP]
$ns attach-agent $n442 $udp122
set pareto122 [new Application/Traffic/Pareto]
$pareto122 attach-agent $udp122
$pareto122 set packetSize_ 1000
$pareto122 set rate_ 224Kb
set null122 [new Agent/Null]
$ns attach-agent $n443 $null122
$ns connect $udp122 $null122
$ns at 0.17 "$pareto122 start"

#Background: 444 to 445
set n444 [$ns node]
$n444 set-position 51.8 -120.5;
set n445 [$ns node]
$n445 set-position 48.2 -133.8;
#Add GSL links
$n444 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n445 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp123 [new Agent/UDP]
$ns attach-agent $n444 $udp123
set pareto123 [new Application/Traffic/Pareto]
$pareto123 attach-agent $udp123
$pareto123 set packetSize_ 1000
$pareto123 set rate_ 224Kb
set null123 [new Agent/Null]
$ns attach-agent $n445 $null123
$ns connect $udp123 $null123
$ns at 0.05 "$pareto123 start"

#Background: 446 to 447
set n446 [$ns node]
$n446 set-position 21.7 -65.6;
set n447 [$ns node]
$n447 set-position 48.2 -128.4;
#Add GSL links
$n446 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n447 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp124 [new Agent/UDP]
$ns attach-agent $n446 $udp124
set pareto124 [new Application/Traffic/Pareto]
$pareto124 attach-agent $udp124
$pareto124 set packetSize_ 1000
$pareto124 set rate_ 224Kb
set null124 [new Agent/Null]
$ns attach-agent $n447 $null124
$ns connect $udp124 $null124
$ns at 0.89 "$pareto124 start"

#Background: 448 to 449
set n448 [$ns node]
$n448 set-position 56.9 -75.0;
set n449 [$ns node]
$n449 set-position 27.2 -107.7;
#Add GSL links
$n448 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n449 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp125 [new Agent/UDP]
$ns attach-agent $n448 $udp125
set pareto125 [new Application/Traffic/Pareto]
$pareto125 attach-agent $udp125
$pareto125 set packetSize_ 1000
$pareto125 set rate_ 224Kb
set null125 [new Agent/Null]
$ns attach-agent $n449 $null125
$ns connect $udp125 $null125
$ns at 0.97 "$pareto125 start"

#Background: 450 to 451
set n450 [$ns node]
$n450 set-position 48.2 -133.8;
set n451 [$ns node]
$n451 set-position 29.2 -55.8;
#Add GSL links
$n450 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n451 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp126 [new Agent/UDP]
$ns attach-agent $n450 $udp126
set pareto126 [new Application/Traffic/Pareto]
$pareto126 attach-agent $udp126
$pareto126 set packetSize_ 1000
$pareto126 set rate_ 224Kb
set null126 [new Agent/Null]
$ns attach-agent $n451 $null126
$ns connect $udp126 $null126
$ns at 0.09 "$pareto126 start"

#Background: 452 to 453
set n452 [$ns node]
$n452 set-position 57.6 -113.0;
set n453 [$ns node]
$n453 set-position 29.4 -102.7;
#Add GSL links
$n452 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n453 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp127 [new Agent/UDP]
$ns attach-agent $n452 $udp127
set pareto127 [new Application/Traffic/Pareto]
$pareto127 attach-agent $udp127
$pareto127 set packetSize_ 1000
$pareto127 set rate_ 224Kb
set null127 [new Agent/Null]
$ns attach-agent $n453 $null127
$ns connect $udp127 $null127
$ns at 0.00 "$pareto127 start"

#Background: 454 to 455
set n454 [$ns node]
$n454 set-position 55.5 -90.5;
set n455 [$ns node]
$n455 set-position 42.3 -125.3;
#Add GSL links
$n454 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n455 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp128 [new Agent/UDP]
$ns attach-agent $n454 $udp128
set pareto128 [new Application/Traffic/Pareto]
$pareto128 attach-agent $udp128
$pareto128 set packetSize_ 1000
$pareto128 set rate_ 224Kb
set null128 [new Agent/Null]
$ns attach-agent $n455 $null128
$ns connect $udp128 $null128
$ns at 0.68 "$pareto128 start"

#Background: 456 to 457
set n456 [$ns node]
$n456 set-position 45.0 -96.6;
set n457 [$ns node]
$n457 set-position 48.8 -111.2;
#Add GSL links
$n456 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n457 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp129 [new Agent/UDP]
$ns attach-agent $n456 $udp129
set pareto129 [new Application/Traffic/Pareto]
$pareto129 attach-agent $udp129
$pareto129 set packetSize_ 1000
$pareto129 set rate_ 224Kb
set null129 [new Agent/Null]
$ns attach-agent $n457 $null129
$ns connect $udp129 $null129
$ns at 0.34 "$pareto129 start"

#Background: 458 to 459
set n458 [$ns node]
$n458 set-position 52.8 -89.5;
set n459 [$ns node]
$n459 set-position 38.9 -97.7;
#Add GSL links
$n458 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n459 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp130 [new Agent/UDP]
$ns attach-agent $n458 $udp130
set pareto130 [new Application/Traffic/Pareto]
$pareto130 attach-agent $udp130
$pareto130 set packetSize_ 1000
$pareto130 set rate_ 224Kb
set null130 [new Agent/Null]
$ns attach-agent $n459 $null130
$ns connect $udp130 $null130
$ns at 0.16 "$pareto130 start"

#Background: 460 to 461
set n460 [$ns node]
$n460 set-position 46.1 -84.5;
set n461 [$ns node]
$n461 set-position 43.6 -90.6;
#Add GSL links
$n460 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n461 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp131 [new Agent/UDP]
$ns attach-agent $n460 $udp131
set pareto131 [new Application/Traffic/Pareto]
$pareto131 attach-agent $udp131
$pareto131 set packetSize_ 1000
$pareto131 set rate_ 224Kb
set null131 [new Agent/Null]
$ns attach-agent $n461 $null131
$ns connect $udp131 $null131
$ns at 0.82 "$pareto131 start"

#Background: 462 to 463
set n462 [$ns node]
$n462 set-position 35.7 -76.4;
set n463 [$ns node]
$n463 set-position 54.0 -85.2;
#Add GSL links
$n462 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n463 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp132 [new Agent/UDP]
$ns attach-agent $n462 $udp132
set pareto132 [new Application/Traffic/Pareto]
$pareto132 attach-agent $udp132
$pareto132 set packetSize_ 1000
$pareto132 set rate_ 224Kb
set null132 [new Agent/Null]
$ns attach-agent $n463 $null132
$ns connect $udp132 $null132
$ns at 0.43 "$pareto132 start"

#Background: 464 to 465
set n464 [$ns node]
$n464 set-position 43.0 -58.6;
set n465 [$ns node]
$n465 set-position 46.1 -84.5;
#Add GSL links
$n464 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n465 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp133 [new Agent/UDP]
$ns attach-agent $n464 $udp133
set pareto133 [new Application/Traffic/Pareto]
$pareto133 attach-agent $udp133
$pareto133 set packetSize_ 1000
$pareto133 set rate_ 224Kb
set null133 [new Agent/Null]
$ns attach-agent $n465 $null133
$ns connect $udp133 $null133
$ns at 0.53 "$pareto133 start"

#Background: 466 to 467
set n466 [$ns node]
$n466 set-position 32.0 -102.8;
set n467 [$ns node]
$n467 set-position 29.1 -106.0;
#Add GSL links
$n466 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n467 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp134 [new Agent/UDP]
$ns attach-agent $n466 $udp134
set pareto134 [new Application/Traffic/Pareto]
$pareto134 attach-agent $udp134
$pareto134 set packetSize_ 1000
$pareto134 set rate_ 224Kb
set null134 [new Agent/Null]
$ns attach-agent $n467 $null134
$ns connect $udp134 $null134
$ns at 0.87 "$pareto134 start"

#Background: 468 to 469
set n468 [$ns node]
$n468 set-position 34.1 -79.6;
set n469 [$ns node]
$n469 set-position 25.2 -83.7;
#Add GSL links
$n468 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n469 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp135 [new Agent/UDP]
$ns attach-agent $n468 $udp135
set pareto135 [new Application/Traffic/Pareto]
$pareto135 attach-agent $udp135
$pareto135 set packetSize_ 1000
$pareto135 set rate_ 224Kb
set null135 [new Agent/Null]
$ns attach-agent $n469 $null135
$ns connect $udp135 $null135
$ns at 0.27 "$pareto135 start"

#Background: 470 to 471
set n470 [$ns node]
$n470 set-position 22.1 -111.1;
set n471 [$ns node]
$n471 set-position 55.5 -90.5;
#Add GSL links
$n470 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n471 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp136 [new Agent/UDP]
$ns attach-agent $n470 $udp136
set pareto136 [new Application/Traffic/Pareto]
$pareto136 attach-agent $udp136
$pareto136 set packetSize_ 1000
$pareto136 set rate_ 224Kb
set null136 [new Agent/Null]
$ns attach-agent $n471 $null136
$ns connect $udp136 $null136
$ns at 0.88 "$pareto136 start"

#Background: 472 to 473
set n472 [$ns node]
$n472 set-position 32.0 -102.8;
set n473 [$ns node]
$n473 set-position 30.1 -71.4;
#Add GSL links
$n472 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n473 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp137 [new Agent/UDP]
$ns attach-agent $n472 $udp137
set pareto137 [new Application/Traffic/Pareto]
$pareto137 attach-agent $udp137
$pareto137 set packetSize_ 1000
$pareto137 set rate_ 224Kb
set null137 [new Agent/Null]
$ns attach-agent $n473 $null137
$ns connect $udp137 $null137
$ns at 0.18 "$pareto137 start"

#Background: 474 to 475
set n474 [$ns node]
$n474 set-position 25.7 -87.8;
set n475 [$ns node]
$n475 set-position 53.8 -126.9;
#Add GSL links
$n474 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n475 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp138 [new Agent/UDP]
$ns attach-agent $n474 $udp138
set pareto138 [new Application/Traffic/Pareto]
$pareto138 attach-agent $udp138
$pareto138 set packetSize_ 1000
$pareto138 set rate_ 224Kb
set null138 [new Agent/Null]
$ns attach-agent $n475 $null138
$ns connect $udp138 $null138
$ns at 0.55 "$pareto138 start"

#Background: 476 to 477
set n476 [$ns node]
$n476 set-position 45.5 -70.8;
set n477 [$ns node]
$n477 set-position 22.3 -56.5;
#Add GSL links
$n476 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n477 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp139 [new Agent/UDP]
$ns attach-agent $n476 $udp139
set pareto139 [new Application/Traffic/Pareto]
$pareto139 attach-agent $udp139
$pareto139 set packetSize_ 1000
$pareto139 set rate_ 224Kb
set null139 [new Agent/Null]
$ns attach-agent $n477 $null139
$ns connect $udp139 $null139
$ns at 0.04 "$pareto139 start"

#Background: 478 to 479
set n478 [$ns node]
$n478 set-position 54.0 -111.2;
set n479 [$ns node]
$n479 set-position 27.5 -69.0;
#Add GSL links
$n478 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n479 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp140 [new Agent/UDP]
$ns attach-agent $n478 $udp140
set pareto140 [new Application/Traffic/Pareto]
$pareto140 attach-agent $udp140
$pareto140 set packetSize_ 1000
$pareto140 set rate_ 224Kb
set null140 [new Agent/Null]
$ns attach-agent $n479 $null140
$ns connect $udp140 $null140
$ns at 0.60 "$pareto140 start"

#Background: 480 to 481
set n480 [$ns node]
$n480 set-position 49.1 -85.4;
set n481 [$ns node]
$n481 set-position 29.4 -102.7;
#Add GSL links
$n480 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n481 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp141 [new Agent/UDP]
$ns attach-agent $n480 $udp141
set pareto141 [new Application/Traffic/Pareto]
$pareto141 attach-agent $udp141
$pareto141 set packetSize_ 1000
$pareto141 set rate_ 224Kb
set null141 [new Agent/Null]
$ns attach-agent $n481 $null141
$ns connect $udp141 $null141
$ns at 0.46 "$pareto141 start"

#Background: 482 to 483
set n482 [$ns node]
$n482 set-position 37.5 -95.8;
set n483 [$ns node]
$n483 set-position 59.4 -83.2;
#Add GSL links
$n482 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n483 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp142 [new Agent/UDP]
$ns attach-agent $n482 $udp142
set pareto142 [new Application/Traffic/Pareto]
$pareto142 attach-agent $udp142
$pareto142 set packetSize_ 1000
$pareto142 set rate_ 224Kb
set null142 [new Agent/Null]
$ns attach-agent $n483 $null142
$ns connect $udp142 $null142
$ns at 0.73 "$pareto142 start"

#Background: 484 to 485
set n484 [$ns node]
$n484 set-position 45.5 -70.8;
set n485 [$ns node]
$n485 set-position 21.4 -122.5;
#Add GSL links
$n484 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n485 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp143 [new Agent/UDP]
$ns attach-agent $n484 $udp143
set pareto143 [new Application/Traffic/Pareto]
$pareto143 attach-agent $udp143
$pareto143 set packetSize_ 1000
$pareto143 set rate_ 224Kb
set null143 [new Agent/Null]
$ns attach-agent $n485 $null143
$ns connect $udp143 $null143
$ns at 0.95 "$pareto143 start"

#Background: 486 to 487
set n486 [$ns node]
$n486 set-position 55.4 -72.3;
set n487 [$ns node]
$n487 set-position 48.9 -111.3;
#Add GSL links
$n486 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n487 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp144 [new Agent/UDP]
$ns attach-agent $n486 $udp144
set pareto144 [new Application/Traffic/Pareto]
$pareto144 attach-agent $udp144
$pareto144 set packetSize_ 1000
$pareto144 set rate_ 224Kb
set null144 [new Agent/Null]
$ns attach-agent $n487 $null144
$ns connect $udp144 $null144
$ns at 0.31 "$pareto144 start"

#Background: 488 to 489
set n488 [$ns node]
$n488 set-position 44.7 -91.8;
set n489 [$ns node]
$n489 set-position 43.0 -58.6;
#Add GSL links
$n488 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n489 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp145 [new Agent/UDP]
$ns attach-agent $n488 $udp145
set pareto145 [new Application/Traffic/Pareto]
$pareto145 attach-agent $udp145
$pareto145 set packetSize_ 1000
$pareto145 set rate_ 224Kb
set null145 [new Agent/Null]
$ns attach-agent $n489 $null145
$ns connect $udp145 $null145
$ns at 0.33 "$pareto145 start"

#Background: 490 to 491
set n490 [$ns node]
$n490 set-position 45.5 -70.8;
set n491 [$ns node]
$n491 set-position 45.5 -70.8;
#Add GSL links
$n490 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n491 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp146 [new Agent/UDP]
$ns attach-agent $n490 $udp146
set pareto146 [new Application/Traffic/Pareto]
$pareto146 attach-agent $udp146
$pareto146 set packetSize_ 1000
$pareto146 set rate_ 224Kb
set null146 [new Agent/Null]
$ns attach-agent $n491 $null146
$ns connect $udp146 $null146
$ns at 0.85 "$pareto146 start"

#Background: 492 to 493
set n492 [$ns node]
$n492 set-position 51.2 -91.8;
set n493 [$ns node]
$n493 set-position 36.6 -102.0;
#Add GSL links
$n492 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n493 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp147 [new Agent/UDP]
$ns attach-agent $n492 $udp147
set pareto147 [new Application/Traffic/Pareto]
$pareto147 attach-agent $udp147
$pareto147 set packetSize_ 1000
$pareto147 set rate_ 224Kb
set null147 [new Agent/Null]
$ns attach-agent $n493 $null147
$ns connect $udp147 $null147
$ns at 0.62 "$pareto147 start"

#Background: 494 to 495
set n494 [$ns node]
$n494 set-position 43.0 -58.6;
set n495 [$ns node]
$n495 set-position 42.6 -112.9;
#Add GSL links
$n494 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n495 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp148 [new Agent/UDP]
$ns attach-agent $n494 $udp148
set pareto148 [new Application/Traffic/Pareto]
$pareto148 attach-agent $udp148
$pareto148 set packetSize_ 1000
$pareto148 set rate_ 224Kb
set null148 [new Agent/Null]
$ns attach-agent $n495 $null148
$ns connect $udp148 $null148
$ns at 0.52 "$pareto148 start"

#Background: 496 to 497
set n496 [$ns node]
$n496 set-position 38.2 -122.9;
set n497 [$ns node]
$n497 set-position 58.4 -70.0;
#Add GSL links
$n496 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n497 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp149 [new Agent/UDP]
$ns attach-agent $n496 $udp149
set pareto149 [new Application/Traffic/Pareto]
$pareto149 attach-agent $udp149
$pareto149 set packetSize_ 1000
$pareto149 set rate_ 224Kb
set null149 [new Agent/Null]
$ns attach-agent $n497 $null149
$ns connect $udp149 $null149
$ns at 0.11 "$pareto149 start"

#Background: 498 to 499
set n498 [$ns node]
$n498 set-position 37.9 -100.8;
set n499 [$ns node]
$n499 set-position 29.1 -106.0;
#Add GSL links
$n498 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n499 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp150 [new Agent/UDP]
$ns attach-agent $n498 $udp150
set pareto150 [new Application/Traffic/Pareto]
$pareto150 attach-agent $udp150
$pareto150 set packetSize_ 1000
$pareto150 set rate_ 224Kb
set null150 [new Agent/Null]
$ns attach-agent $n499 $null150
$ns connect $udp150 $null150
$ns at 0.85 "$pareto150 start"

#Background: 500 to 501
set n500 [$ns node]
$n500 set-position 42.3 -125.3;
set n501 [$ns node]
$n501 set-position 38.2 -122.9;
#Add GSL links
$n500 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n501 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp151 [new Agent/UDP]
$ns attach-agent $n500 $udp151
set pareto151 [new Application/Traffic/Pareto]
$pareto151 attach-agent $udp151
$pareto151 set packetSize_ 1000
$pareto151 set rate_ 224Kb
set null151 [new Agent/Null]
$ns attach-agent $n501 $null151
$ns connect $udp151 $null151
$ns at 0.07 "$pareto151 start"

#Background: 502 to 503
set n502 [$ns node]
$n502 set-position 37.2 -63.5;
set n503 [$ns node]
$n503 set-position 23.1 -112.1;
#Add GSL links
$n502 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n503 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp152 [new Agent/UDP]
$ns attach-agent $n502 $udp152
set pareto152 [new Application/Traffic/Pareto]
$pareto152 attach-agent $udp152
$pareto152 set packetSize_ 1000
$pareto152 set rate_ 224Kb
set null152 [new Agent/Null]
$ns attach-agent $n503 $null152
$ns connect $udp152 $null152
$ns at 0.53 "$pareto152 start"

#Background: 504 to 505
set n504 [$ns node]
$n504 set-position 46.1 -84.5;
set n505 [$ns node]
$n505 set-position 29.4 -102.7;
#Add GSL links
$n504 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n505 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp153 [new Agent/UDP]
$ns attach-agent $n504 $udp153
set pareto153 [new Application/Traffic/Pareto]
$pareto153 attach-agent $udp153
$pareto153 set packetSize_ 1000
$pareto153 set rate_ 224Kb
set null153 [new Agent/Null]
$ns attach-agent $n505 $null153
$ns connect $udp153 $null153
$ns at 0.44 "$pareto153 start"

#Background: 506 to 507
set n506 [$ns node]
$n506 set-position 54.0 -111.2;
set n507 [$ns node]
$n507 set-position 42.6 -112.9;
#Add GSL links
$n506 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n507 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp154 [new Agent/UDP]
$ns attach-agent $n506 $udp154
set pareto154 [new Application/Traffic/Pareto]
$pareto154 attach-agent $udp154
$pareto154 set packetSize_ 1000
$pareto154 set rate_ 224Kb
set null154 [new Agent/Null]
$ns attach-agent $n507 $null154
$ns connect $udp154 $null154
$ns at 0.86 "$pareto154 start"

#Background: 508 to 509
set n508 [$ns node]
$n508 set-position 43.8 -126.7;
set n509 [$ns node]
$n509 set-position 46.1 -84.5;
#Add GSL links
$n508 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n509 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp155 [new Agent/UDP]
$ns attach-agent $n508 $udp155
set pareto155 [new Application/Traffic/Pareto]
$pareto155 attach-agent $udp155
$pareto155 set packetSize_ 1000
$pareto155 set rate_ 224Kb
set null155 [new Agent/Null]
$ns attach-agent $n509 $null155
$ns connect $udp155 $null155
$ns at 0.19 "$pareto155 start"

#Background: 510 to 511
set n510 [$ns node]
$n510 set-position 36.6 -102.0;
set n511 [$ns node]
$n511 set-position 57.6 -113.0;
#Add GSL links
$n510 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n511 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp156 [new Agent/UDP]
$ns attach-agent $n510 $udp156
set pareto156 [new Application/Traffic/Pareto]
$pareto156 attach-agent $udp156
$pareto156 set packetSize_ 1000
$pareto156 set rate_ 224Kb
set null156 [new Agent/Null]
$ns attach-agent $n511 $null156
$ns connect $udp156 $null156
$ns at 0.94 "$pareto156 start"

#Background: 512 to 513
set n512 [$ns node]
$n512 set-position 30.1 -71.4;
set n513 [$ns node]
$n513 set-position 55.2 -129.3;
#Add GSL links
$n512 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n513 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp157 [new Agent/UDP]
$ns attach-agent $n512 $udp157
set pareto157 [new Application/Traffic/Pareto]
$pareto157 attach-agent $udp157
$pareto157 set packetSize_ 1000
$pareto157 set rate_ 224Kb
set null157 [new Agent/Null]
$ns attach-agent $n513 $null157
$ns connect $udp157 $null157
$ns at 0.18 "$pareto157 start"

#Background: 514 to 515
set n514 [$ns node]
$n514 set-position 36.2 -128.1;
set n515 [$ns node]
$n515 set-position 22.3 -122.3;
#Add GSL links
$n514 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n515 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp158 [new Agent/UDP]
$ns attach-agent $n514 $udp158
set pareto158 [new Application/Traffic/Pareto]
$pareto158 attach-agent $udp158
$pareto158 set packetSize_ 1000
$pareto158 set rate_ 224Kb
set null158 [new Agent/Null]
$ns attach-agent $n515 $null158
$ns connect $udp158 $null158
$ns at 0.45 "$pareto158 start"

#Background: 516 to 517
set n516 [$ns node]
$n516 set-position 55.4 -72.3;
set n517 [$ns node]
$n517 set-position 40.5 -122.2;
#Add GSL links
$n516 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n517 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp159 [new Agent/UDP]
$ns attach-agent $n516 $udp159
set pareto159 [new Application/Traffic/Pareto]
$pareto159 attach-agent $udp159
$pareto159 set packetSize_ 1000
$pareto159 set rate_ 224Kb
set null159 [new Agent/Null]
$ns attach-agent $n517 $null159
$ns connect $udp159 $null159
$ns at 0.45 "$pareto159 start"

#Background: 518 to 519
set n518 [$ns node]
$n518 set-position 51.4 -126.1;
set n519 [$ns node]
$n519 set-position 37.5 -95.8;
#Add GSL links
$n518 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n519 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp160 [new Agent/UDP]
$ns attach-agent $n518 $udp160
set pareto160 [new Application/Traffic/Pareto]
$pareto160 attach-agent $udp160
$pareto160 set packetSize_ 1000
$pareto160 set rate_ 224Kb
set null160 [new Agent/Null]
$ns attach-agent $n519 $null160
$ns connect $udp160 $null160
$ns at 0.50 "$pareto160 start"

#Background: 520 to 521
set n520 [$ns node]
$n520 set-position 29.1 -106.0;
set n521 [$ns node]
$n521 set-position 27.3 -82.0;
#Add GSL links
$n520 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n521 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp161 [new Agent/UDP]
$ns attach-agent $n520 $udp161
set pareto161 [new Application/Traffic/Pareto]
$pareto161 attach-agent $udp161
$pareto161 set packetSize_ 1000
$pareto161 set rate_ 224Kb
set null161 [new Agent/Null]
$ns attach-agent $n521 $null161
$ns connect $udp161 $null161
$ns at 0.31 "$pareto161 start"

#Background: 522 to 523
set n522 [$ns node]
$n522 set-position 49.1 -85.4;
set n523 [$ns node]
$n523 set-position 55.5 -90.5;
#Add GSL links
$n522 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n523 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp162 [new Agent/UDP]
$ns attach-agent $n522 $udp162
set pareto162 [new Application/Traffic/Pareto]
$pareto162 attach-agent $udp162
$pareto162 set packetSize_ 1000
$pareto162 set rate_ 224Kb
set null162 [new Agent/Null]
$ns attach-agent $n523 $null162
$ns connect $udp162 $null162
$ns at 0.19 "$pareto162 start"

#Background: 524 to 525
set n524 [$ns node]
$n524 set-position 48.8 -111.2;
set n525 [$ns node]
$n525 set-position -30.9 -72.3;
#Add GSL links
$n524 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n525 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp163 [new Agent/UDP]
$ns attach-agent $n524 $udp163
set pareto163 [new Application/Traffic/Pareto]
$pareto163 attach-agent $udp163
$pareto163 set packetSize_ 1000
$pareto163 set rate_ 224Kb
set null163 [new Agent/Null]
$ns attach-agent $n525 $null163
$ns connect $udp163 $null163
$ns at 0.09 "$pareto163 start"

#Background: 526 to 527
set n526 [$ns node]
$n526 set-position 33.5 -70.2;
set n527 [$ns node]
$n527 set-position 2.2 -52.4;
#Add GSL links
$n526 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n527 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp164 [new Agent/UDP]
$ns attach-agent $n526 $udp164
set pareto164 [new Application/Traffic/Pareto]
$pareto164 attach-agent $udp164
$pareto164 set packetSize_ 1000
$pareto164 set rate_ 224Kb
set null164 [new Agent/Null]
$ns attach-agent $n527 $null164
$ns connect $udp164 $null164
$ns at 0.56 "$pareto164 start"

#Background: 528 to 529
set n528 [$ns node]
$n528 set-position 36.2 -128.1;
set n529 [$ns node]
$n529 set-position -17.2 -50.0;
#Add GSL links
$n528 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n529 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp165 [new Agent/UDP]
$ns attach-agent $n528 $udp165
set pareto165 [new Application/Traffic/Pareto]
$pareto165 attach-agent $udp165
$pareto165 set packetSize_ 1000
$pareto165 set rate_ 224Kb
set null165 [new Agent/Null]
$ns attach-agent $n529 $null165
$ns connect $udp165 $null165
$ns at 0.97 "$pareto165 start"

#Background: 530 to 531
set n530 [$ns node]
$n530 set-position 44.5 -116.3;
set n531 [$ns node]
$n531 set-position -29.5 -57.4;
#Add GSL links
$n530 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n531 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp166 [new Agent/UDP]
$ns attach-agent $n530 $udp166
set pareto166 [new Application/Traffic/Pareto]
$pareto166 attach-agent $udp166
$pareto166 set packetSize_ 1000
$pareto166 set rate_ 224Kb
set null166 [new Agent/Null]
$ns attach-agent $n531 $null166
$ns connect $udp166 $null166
$ns at 0.61 "$pareto166 start"

#Background: 532 to 533
set n532 [$ns node]
$n532 set-position 34.9 -56.0;
set n533 [$ns node]
$n533 set-position -9.6 -69.6;
#Add GSL links
$n532 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n533 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp167 [new Agent/UDP]
$ns attach-agent $n532 $udp167
set pareto167 [new Application/Traffic/Pareto]
$pareto167 attach-agent $udp167
$pareto167 set packetSize_ 1000
$pareto167 set rate_ 224Kb
set null167 [new Agent/Null]
$ns attach-agent $n533 $null167
$ns connect $udp167 $null167
$ns at 0.40 "$pareto167 start"

#Background: 534 to 535
set n534 [$ns node]
$n534 set-position 30.4 -75.1;
set n535 [$ns node]
$n535 set-position -30.9 -72.3;
#Add GSL links
$n534 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n535 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp168 [new Agent/UDP]
$ns attach-agent $n534 $udp168
set pareto168 [new Application/Traffic/Pareto]
$pareto168 attach-agent $udp168
$pareto168 set packetSize_ 1000
$pareto168 set rate_ 224Kb
set null168 [new Agent/Null]
$ns attach-agent $n535 $null168
$ns connect $udp168 $null168
$ns at 0.53 "$pareto168 start"

#Background: 536 to 537
set n536 [$ns node]
$n536 set-position 29.9 -89.3;
set n537 [$ns node]
$n537 set-position -27.9 -45.6;
#Add GSL links
$n536 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n537 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp169 [new Agent/UDP]
$ns attach-agent $n536 $udp169
set pareto169 [new Application/Traffic/Pareto]
$pareto169 attach-agent $udp169
$pareto169 set packetSize_ 1000
$pareto169 set rate_ 224Kb
set null169 [new Agent/Null]
$ns attach-agent $n537 $null169
$ns connect $udp169 $null169
$ns at 0.54 "$pareto169 start"

#Background: 538 to 539
set n538 [$ns node]
$n538 set-position 29.4 -102.7;
set n539 [$ns node]
$n539 set-position -27.9 -45.6;
#Add GSL links
$n538 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n539 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp170 [new Agent/UDP]
$ns attach-agent $n538 $udp170
set pareto170 [new Application/Traffic/Pareto]
$pareto170 attach-agent $udp170
$pareto170 set packetSize_ 1000
$pareto170 set rate_ 224Kb
set null170 [new Agent/Null]
$ns attach-agent $n539 $null170
$ns connect $udp170 $null170
$ns at 0.53 "$pareto170 start"

#Background: 540 to 541
set n540 [$ns node]
$n540 set-position 26.8 -111.4;
set n541 [$ns node]
$n541 set-position -21.5 -68.2;
#Add GSL links
$n540 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n541 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp171 [new Agent/UDP]
$ns attach-agent $n540 $udp171
set pareto171 [new Application/Traffic/Pareto]
$pareto171 attach-agent $udp171
$pareto171 set packetSize_ 1000
$pareto171 set rate_ 224Kb
set null171 [new Agent/Null]
$ns attach-agent $n541 $null171
$ns connect $udp171 $null171
$ns at 0.58 "$pareto171 start"

#Background: 542 to 543
set n542 [$ns node]
$n542 set-position 51.2 -91.8;
set n543 [$ns node]
$n543 set-position -3.1 -60.8;
#Add GSL links
$n542 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n543 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp172 [new Agent/UDP]
$ns attach-agent $n542 $udp172
set pareto172 [new Application/Traffic/Pareto]
$pareto172 attach-agent $udp172
$pareto172 set packetSize_ 1000
$pareto172 set rate_ 224Kb
set null172 [new Agent/Null]
$ns attach-agent $n543 $null172
$ns connect $udp172 $null172
$ns at 0.70 "$pareto172 start"

#Background: 544 to 545
set n544 [$ns node]
$n544 set-position 25.7 -87.8;
set n545 [$ns node]
$n545 set-position -9.6 -69.6;
#Add GSL links
$n544 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n545 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp173 [new Agent/UDP]
$ns attach-agent $n544 $udp173
set pareto173 [new Application/Traffic/Pareto]
$pareto173 attach-agent $udp173
$pareto173 set packetSize_ 1000
$pareto173 set rate_ 224Kb
set null173 [new Agent/Null]
$ns attach-agent $n545 $null173
$ns connect $udp173 $null173
$ns at 0.11 "$pareto173 start"

#Background: 546 to 547
set n546 [$ns node]
$n546 set-position 22.7 -64.6;
set n547 [$ns node]
$n547 set-position -51.0 -61.8;
#Add GSL links
$n546 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n547 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp174 [new Agent/UDP]
$ns attach-agent $n546 $udp174
set pareto174 [new Application/Traffic/Pareto]
$pareto174 attach-agent $udp174
$pareto174 set packetSize_ 1000
$pareto174 set rate_ 224Kb
set null174 [new Agent/Null]
$ns attach-agent $n547 $null174
$ns connect $udp174 $null174
$ns at 0.80 "$pareto174 start"

#Background: 548 to 549
set n548 [$ns node]
$n548 set-position 57.8 -64.1;
set n549 [$ns node]
$n549 set-position 7.7 -77.7;
#Add GSL links
$n548 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n549 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp175 [new Agent/UDP]
$ns attach-agent $n548 $udp175
set pareto175 [new Application/Traffic/Pareto]
$pareto175 attach-agent $udp175
$pareto175 set packetSize_ 1000
$pareto175 set rate_ 224Kb
set null175 [new Agent/Null]
$ns attach-agent $n549 $null175
$ns connect $udp175 $null175
$ns at 0.56 "$pareto175 start"

#Background: 550 to 551
set n550 [$ns node]
$n550 set-position 30.1 -71.4;
set n551 [$ns node]
$n551 set-position 46.8 7.8;
#Add GSL links
$n550 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n551 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp176 [new Agent/UDP]
$ns attach-agent $n550 $udp176
set pareto176 [new Application/Traffic/Pareto]
$pareto176 attach-agent $udp176
$pareto176 set packetSize_ 1000
$pareto176 set rate_ 224Kb
set null176 [new Agent/Null]
$ns attach-agent $n551 $null176
$ns connect $udp176 $null176
$ns at 0.76 "$pareto176 start"

#Background: 552 to 553
set n552 [$ns node]
$n552 set-position 38.3 -126.6;
set n553 [$ns node]
$n553 set-position 59.2 8.9;
#Add GSL links
$n552 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n553 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp177 [new Agent/UDP]
$ns attach-agent $n552 $udp177
set pareto177 [new Application/Traffic/Pareto]
$pareto177 attach-agent $udp177
$pareto177 set packetSize_ 1000
$pareto177 set rate_ 224Kb
set null177 [new Agent/Null]
$ns attach-agent $n553 $null177
$ns connect $udp177 $null177
$ns at 0.73 "$pareto177 start"

#Background: 554 to 555
set n554 [$ns node]
$n554 set-position 43.1 -58.3;
set n555 [$ns node]
$n555 set-position 53.9 15.2;
#Add GSL links
$n554 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n555 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp178 [new Agent/UDP]
$ns attach-agent $n554 $udp178
set pareto178 [new Application/Traffic/Pareto]
$pareto178 attach-agent $udp178
$pareto178 set packetSize_ 1000
$pareto178 set rate_ 224Kb
set null178 [new Agent/Null]
$ns attach-agent $n555 $null178
$ns connect $udp178 $null178
$ns at 0.67 "$pareto178 start"

#Background: 556 to 557
set n556 [$ns node]
$n556 set-position 51.8 -115.3;
set n557 [$ns node]
$n557 set-position 58.4 11.1;
#Add GSL links
$n556 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n557 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp179 [new Agent/UDP]
$ns attach-agent $n556 $udp179
set pareto179 [new Application/Traffic/Pareto]
$pareto179 attach-agent $udp179
$pareto179 set packetSize_ 1000
$pareto179 set rate_ 224Kb
set null179 [new Agent/Null]
$ns attach-agent $n557 $null179
$ns connect $udp179 $null179
$ns at 0.56 "$pareto179 start"

#Background: 558 to 559
set n558 [$ns node]
$n558 set-position 58.2 -115.5;
set n559 [$ns node]
$n559 set-position 59.0 30.7;
#Add GSL links
$n558 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n559 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp180 [new Agent/UDP]
$ns attach-agent $n558 $udp180
set pareto180 [new Application/Traffic/Pareto]
$pareto180 attach-agent $udp180
$pareto180 set packetSize_ 1000
$pareto180 set rate_ 224Kb
set null180 [new Agent/Null]
$ns attach-agent $n559 $null180
$ns connect $udp180 $null180
$ns at 0.05 "$pareto180 start"

#Background: 560 to 561
set n560 [$ns node]
$n560 set-position 54.0 -111.2;
set n561 [$ns node]
$n561 set-position 59.2 8.9;
#Add GSL links
$n560 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n561 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp181 [new Agent/UDP]
$ns attach-agent $n560 $udp181
set pareto181 [new Application/Traffic/Pareto]
$pareto181 attach-agent $udp181
$pareto181 set packetSize_ 1000
$pareto181 set rate_ 224Kb
set null181 [new Agent/Null]
$ns attach-agent $n561 $null181
$ns connect $udp181 $null181
$ns at 0.03 "$pareto181 start"

#Background: 562 to 563
set n562 [$ns node]
$n562 set-position 56.9 -75.0;
set n563 [$ns node]
$n563 set-position 58.1 0.9;
#Add GSL links
$n562 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n563 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp182 [new Agent/UDP]
$ns attach-agent $n562 $udp182
set pareto182 [new Application/Traffic/Pareto]
$pareto182 attach-agent $udp182
$pareto182 set packetSize_ 1000
$pareto182 set rate_ 224Kb
set null182 [new Agent/Null]
$ns attach-agent $n563 $null182
$ns connect $udp182 $null182
$ns at 0.52 "$pareto182 start"

#Background: 564 to 565
set n564 [$ns node]
$n564 set-position 54.0 -111.2;
set n565 [$ns node]
$n565 set-position 35.1 24.4;
#Add GSL links
$n564 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n565 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp183 [new Agent/UDP]
$ns attach-agent $n564 $udp183
set pareto183 [new Application/Traffic/Pareto]
$pareto183 attach-agent $udp183
$pareto183 set packetSize_ 1000
$pareto183 set rate_ 224Kb
set null183 [new Agent/Null]
$ns attach-agent $n565 $null183
$ns connect $udp183 $null183
$ns at 0.11 "$pareto183 start"

#Background: 566 to 567
set n566 [$ns node]
$n566 set-position 22.3 -56.5;
set n567 [$ns node]
$n567 set-position 58.6 32.8;
#Add GSL links
$n566 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n567 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp184 [new Agent/UDP]
$ns attach-agent $n566 $udp184
set pareto184 [new Application/Traffic/Pareto]
$pareto184 attach-agent $udp184
$pareto184 set packetSize_ 1000
$pareto184 set rate_ 224Kb
set null184 [new Agent/Null]
$ns attach-agent $n567 $null184
$ns connect $udp184 $null184
$ns at 0.24 "$pareto184 start"

#Background: 568 to 569
set n568 [$ns node]
$n568 set-position 27.7 -105.5;
set n569 [$ns node]
$n569 set-position 58.6 32.8;
#Add GSL links
$n568 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n569 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp185 [new Agent/UDP]
$ns attach-agent $n568 $udp185
set pareto185 [new Application/Traffic/Pareto]
$pareto185 attach-agent $udp185
$pareto185 set packetSize_ 1000
$pareto185 set rate_ 224Kb
set null185 [new Agent/Null]
$ns attach-agent $n569 $null185
$ns connect $udp185 $null185
$ns at 0.81 "$pareto185 start"

#Background: 570 to 571
set n570 [$ns node]
$n570 set-position 26.4 -122.8;
set n571 [$ns node]
$n571 set-position 48.4 -8.7;
#Add GSL links
$n570 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n571 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp186 [new Agent/UDP]
$ns attach-agent $n570 $udp186
set pareto186 [new Application/Traffic/Pareto]
$pareto186 attach-agent $udp186
$pareto186 set packetSize_ 1000
$pareto186 set rate_ 224Kb
set null186 [new Agent/Null]
$ns attach-agent $n571 $null186
$ns connect $udp186 $null186
$ns at 0.02 "$pareto186 start"

#Background: 572 to 573
set n572 [$ns node]
$n572 set-position 56.0 -95.6;
set n573 [$ns node]
$n573 set-position 46.1 10.3;
#Add GSL links
$n572 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n573 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp187 [new Agent/UDP]
$ns attach-agent $n572 $udp187
set pareto187 [new Application/Traffic/Pareto]
$pareto187 attach-agent $udp187
$pareto187 set packetSize_ 1000
$pareto187 set rate_ 224Kb
set null187 [new Agent/Null]
$ns attach-agent $n573 $null187
$ns connect $udp187 $null187
$ns at 0.32 "$pareto187 start"

#Background: 574 to 575
set n574 [$ns node]
$n574 set-position 22.1 -111.1;
set n575 [$ns node]
$n575 set-position 51.6 20.0;
#Add GSL links
$n574 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n575 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp188 [new Agent/UDP]
$ns attach-agent $n574 $udp188
set pareto188 [new Application/Traffic/Pareto]
$pareto188 attach-agent $udp188
$pareto188 set packetSize_ 1000
$pareto188 set rate_ 224Kb
set null188 [new Agent/Null]
$ns attach-agent $n575 $null188
$ns connect $udp188 $null188
$ns at 0.42 "$pareto188 start"

#Background: 576 to 577
set n576 [$ns node]
$n576 set-position 22.4 -66.4;
set n577 [$ns node]
$n577 set-position 46.1 10.3;
#Add GSL links
$n576 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n577 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp189 [new Agent/UDP]
$ns attach-agent $n576 $udp189
set pareto189 [new Application/Traffic/Pareto]
$pareto189 attach-agent $udp189
$pareto189 set packetSize_ 1000
$pareto189 set rate_ 224Kb
set null189 [new Agent/Null]
$ns attach-agent $n577 $null189
$ns connect $udp189 $null189
$ns at 0.29 "$pareto189 start"

#Background: 578 to 579
set n578 [$ns node]
$n578 set-position 22.7 -64.6;
set n579 [$ns node]
$n579 set-position 43.5 0.3;
#Add GSL links
$n578 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n579 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp190 [new Agent/UDP]
$ns attach-agent $n578 $udp190
set pareto190 [new Application/Traffic/Pareto]
$pareto190 attach-agent $udp190
$pareto190 set packetSize_ 1000
$pareto190 set rate_ 224Kb
set null190 [new Agent/Null]
$ns attach-agent $n579 $null190
$ns connect $udp190 $null190
$ns at 0.86 "$pareto190 start"

#Background: 580 to 581
set n580 [$ns node]
$n580 set-position 38.3 -90.9;
set n581 [$ns node]
$n581 set-position 46.1 10.3;
#Add GSL links
$n580 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n581 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp191 [new Agent/UDP]
$ns attach-agent $n580 $udp191
set pareto191 [new Application/Traffic/Pareto]
$pareto191 attach-agent $udp191
$pareto191 set packetSize_ 1000
$pareto191 set rate_ 224Kb
set null191 [new Agent/Null]
$ns attach-agent $n581 $null191
$ns connect $udp191 $null191
$ns at 0.68 "$pareto191 start"

#Background: 582 to 583
set n582 [$ns node]
$n582 set-position 42.3 -125.3;
set n583 [$ns node]
$n583 set-position 53.9 15.2;
#Add GSL links
$n582 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n583 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp192 [new Agent/UDP]
$ns attach-agent $n582 $udp192
set pareto192 [new Application/Traffic/Pareto]
$pareto192 attach-agent $udp192
$pareto192 set packetSize_ 1000
$pareto192 set rate_ 224Kb
set null192 [new Agent/Null]
$ns attach-agent $n583 $null192
$ns connect $udp192 $null192
$ns at 0.06 "$pareto192 start"

#Background: 584 to 585
set n584 [$ns node]
$n584 set-position 53.8 -126.9;
set n585 [$ns node]
$n585 set-position 55.3 -1.7;
#Add GSL links
$n584 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n585 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp193 [new Agent/UDP]
$ns attach-agent $n584 $udp193
set pareto193 [new Application/Traffic/Pareto]
$pareto193 attach-agent $udp193
$pareto193 set packetSize_ 1000
$pareto193 set rate_ 224Kb
set null193 [new Agent/Null]
$ns attach-agent $n585 $null193
$ns connect $udp193 $null193
$ns at 0.66 "$pareto193 start"

#Background: 586 to 587
set n586 [$ns node]
$n586 set-position 22.1 -111.1;
set n587 [$ns node]
$n587 set-position 43.2 14.3;
#Add GSL links
$n586 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n587 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp194 [new Agent/UDP]
$ns attach-agent $n586 $udp194
set pareto194 [new Application/Traffic/Pareto]
$pareto194 attach-agent $udp194
$pareto194 set packetSize_ 1000
$pareto194 set rate_ 224Kb
set null194 [new Agent/Null]
$ns attach-agent $n587 $null194
$ns connect $udp194 $null194
$ns at 0.10 "$pareto194 start"

#Background: 588 to 589
set n588 [$ns node]
$n588 set-position 22.1 -89.8;
set n589 [$ns node]
$n589 set-position 53.9 15.2;
#Add GSL links
$n588 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n589 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp195 [new Agent/UDP]
$ns attach-agent $n588 $udp195
set pareto195 [new Application/Traffic/Pareto]
$pareto195 attach-agent $udp195
$pareto195 set packetSize_ 1000
$pareto195 set rate_ 224Kb
set null195 [new Agent/Null]
$ns attach-agent $n589 $null195
$ns connect $udp195 $null195
$ns at 0.94 "$pareto195 start"

#Background: 590 to 591
set n590 [$ns node]
$n590 set-position 31.8 -96.5;
set n591 [$ns node]
$n591 set-position 45.3 9.6;
#Add GSL links
$n590 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n591 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp196 [new Agent/UDP]
$ns attach-agent $n590 $udp196
set pareto196 [new Application/Traffic/Pareto]
$pareto196 attach-agent $udp196
$pareto196 set packetSize_ 1000
$pareto196 set rate_ 224Kb
set null196 [new Agent/Null]
$ns attach-agent $n591 $null196
$ns connect $udp196 $null196
$ns at 0.67 "$pareto196 start"

#Background: 592 to 593
set n592 [$ns node]
$n592 set-position 35.3 -70.7;
set n593 [$ns node]
$n593 set-position 46.1 37.9;
#Add GSL links
$n592 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n593 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp197 [new Agent/UDP]
$ns attach-agent $n592 $udp197
set pareto197 [new Application/Traffic/Pareto]
$pareto197 attach-agent $udp197
$pareto197 set packetSize_ 1000
$pareto197 set rate_ 224Kb
set null197 [new Agent/Null]
$ns attach-agent $n593 $null197
$ns connect $udp197 $null197
$ns at 0.92 "$pareto197 start"

#Background: 594 to 595
set n594 [$ns node]
$n594 set-position 47.6 -124.3;
set n595 [$ns node]
$n595 set-position 51.0 -5.5;
#Add GSL links
$n594 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n595 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp198 [new Agent/UDP]
$ns attach-agent $n594 $udp198
set pareto198 [new Application/Traffic/Pareto]
$pareto198 attach-agent $udp198
$pareto198 set packetSize_ 1000
$pareto198 set rate_ 224Kb
set null198 [new Agent/Null]
$ns attach-agent $n595 $null198
$ns connect $udp198 $null198
$ns at 0.60 "$pareto198 start"

#Background: 596 to 597
set n596 [$ns node]
$n596 set-position 54.0 -85.2;
set n597 [$ns node]
$n597 set-position 42.6 -5.2;
#Add GSL links
$n596 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n597 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp199 [new Agent/UDP]
$ns attach-agent $n596 $udp199
set pareto199 [new Application/Traffic/Pareto]
$pareto199 attach-agent $udp199
$pareto199 set packetSize_ 1000
$pareto199 set rate_ 224Kb
set null199 [new Agent/Null]
$ns attach-agent $n597 $null199
$ns connect $udp199 $null199
$ns at 0.24 "$pareto199 start"

#Background: 598 to 599
set n598 [$ns node]
$n598 set-position 23.1 -112.1;
set n599 [$ns node]
$n599 set-position 51.0 -5.5;
#Add GSL links
$n598 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n599 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp200 [new Agent/UDP]
$ns attach-agent $n598 $udp200
set pareto200 [new Application/Traffic/Pareto]
$pareto200 attach-agent $udp200
$pareto200 set packetSize_ 1000
$pareto200 set rate_ 224Kb
set null200 [new Agent/Null]
$ns attach-agent $n599 $null200
$ns connect $udp200 $null200
$ns at 0.92 "$pareto200 start"

#Background: 600 to 601
set n600 [$ns node]
$n600 set-position 45.5 -70.8;
set n601 [$ns node]
$n601 set-position 46.3 38.5;
#Add GSL links
$n600 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n601 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp201 [new Agent/UDP]
$ns attach-agent $n600 $udp201
set pareto201 [new Application/Traffic/Pareto]
$pareto201 attach-agent $udp201
$pareto201 set packetSize_ 1000
$pareto201 set rate_ 224Kb
set null201 [new Agent/Null]
$ns attach-agent $n601 $null201
$ns connect $udp201 $null201
$ns at 0.16 "$pareto201 start"

#Background: 602 to 603
set n602 [$ns node]
$n602 set-position 51.2 -91.8;
set n603 [$ns node]
$n603 set-position 56.6 13.6;
#Add GSL links
$n602 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n603 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp202 [new Agent/UDP]
$ns attach-agent $n602 $udp202
set pareto202 [new Application/Traffic/Pareto]
$pareto202 attach-agent $udp202
$pareto202 set packetSize_ 1000
$pareto202 set rate_ 224Kb
set null202 [new Agent/Null]
$ns attach-agent $n603 $null202
$ns connect $udp202 $null202
$ns at 0.58 "$pareto202 start"

#Background: 604 to 605
set n604 [$ns node]
$n604 set-position 34.9 -56.0;
set n605 [$ns node]
$n605 set-position 50.1 25.4;
#Add GSL links
$n604 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n605 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp203 [new Agent/UDP]
$ns attach-agent $n604 $udp203
set pareto203 [new Application/Traffic/Pareto]
$pareto203 attach-agent $udp203
$pareto203 set packetSize_ 1000
$pareto203 set rate_ 224Kb
set null203 [new Agent/Null]
$ns attach-agent $n605 $null203
$ns connect $udp203 $null203
$ns at 0.37 "$pareto203 start"

#Background: 606 to 607
set n606 [$ns node]
$n606 set-position 38.9 -97.7;
set n607 [$ns node]
$n607 set-position 58.6 32.8;
#Add GSL links
$n606 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n607 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp204 [new Agent/UDP]
$ns attach-agent $n606 $udp204
set pareto204 [new Application/Traffic/Pareto]
$pareto204 attach-agent $udp204
$pareto204 set packetSize_ 1000
$pareto204 set rate_ 224Kb
set null204 [new Agent/Null]
$ns attach-agent $n607 $null204
$ns connect $udp204 $null204
$ns at 0.68 "$pareto204 start"

#Background: 608 to 609
set n608 [$ns node]
$n608 set-position 32.1 -120.0;
set n609 [$ns node]
$n609 set-position 46.1 -0.4;
#Add GSL links
$n608 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n609 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp205 [new Agent/UDP]
$ns attach-agent $n608 $udp205
set pareto205 [new Application/Traffic/Pareto]
$pareto205 attach-agent $udp205
$pareto205 set packetSize_ 1000
$pareto205 set rate_ 224Kb
set null205 [new Agent/Null]
$ns attach-agent $n609 $null205
$ns connect $udp205 $null205
$ns at 0.30 "$pareto205 start"

#Background: 610 to 611
set n610 [$ns node]
$n610 set-position 24.2 -111.7;
set n611 [$ns node]
$n611 set-position 44.4 26.7;
#Add GSL links
$n610 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n611 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp206 [new Agent/UDP]
$ns attach-agent $n610 $udp206
set pareto206 [new Application/Traffic/Pareto]
$pareto206 attach-agent $udp206
$pareto206 set packetSize_ 1000
$pareto206 set rate_ 224Kb
set null206 [new Agent/Null]
$ns attach-agent $n611 $null206
$ns connect $udp206 $null206
$ns at 0.31 "$pareto206 start"

#Background: 612 to 613
set n612 [$ns node]
$n612 set-position 45.0 -96.6;
set n613 [$ns node]
$n613 set-position 45.3 9.6;
#Add GSL links
$n612 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n613 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp207 [new Agent/UDP]
$ns attach-agent $n612 $udp207
set pareto207 [new Application/Traffic/Pareto]
$pareto207 attach-agent $udp207
$pareto207 set packetSize_ 1000
$pareto207 set rate_ 224Kb
set null207 [new Agent/Null]
$ns attach-agent $n613 $null207
$ns connect $udp207 $null207
$ns at 0.96 "$pareto207 start"

#Background: 614 to 615
set n614 [$ns node]
$n614 set-position 26.2 -56.4;
set n615 [$ns node]
$n615 set-position 45.8 30.6;
#Add GSL links
$n614 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n615 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp208 [new Agent/UDP]
$ns attach-agent $n614 $udp208
set pareto208 [new Application/Traffic/Pareto]
$pareto208 attach-agent $udp208
$pareto208 set packetSize_ 1000
$pareto208 set rate_ 224Kb
set null208 [new Agent/Null]
$ns attach-agent $n615 $null208
$ns connect $udp208 $null208
$ns at 0.02 "$pareto208 start"

#Background: 616 to 617
set n616 [$ns node]
$n616 set-position 32.3 -104.6;
set n617 [$ns node]
$n617 set-position 55.1 10.5;
#Add GSL links
$n616 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n617 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp209 [new Agent/UDP]
$ns attach-agent $n616 $udp209
set pareto209 [new Application/Traffic/Pareto]
$pareto209 attach-agent $udp209
$pareto209 set packetSize_ 1000
$pareto209 set rate_ 224Kb
set null209 [new Agent/Null]
$ns attach-agent $n617 $null209
$ns connect $udp209 $null209
$ns at 0.16 "$pareto209 start"

#Background: 618 to 619
set n618 [$ns node]
$n618 set-position 43.1 -58.3;
set n619 [$ns node]
$n619 set-position 55.0 -6.2;
#Add GSL links
$n618 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n619 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp210 [new Agent/UDP]
$ns attach-agent $n618 $udp210
set pareto210 [new Application/Traffic/Pareto]
$pareto210 attach-agent $udp210
$pareto210 set packetSize_ 1000
$pareto210 set rate_ 224Kb
set null210 [new Agent/Null]
$ns attach-agent $n619 $null210
$ns connect $udp210 $null210
$ns at 0.95 "$pareto210 start"

#Background: 620 to 621
set n620 [$ns node]
$n620 set-position 25.1 -68.6;
set n621 [$ns node]
$n621 set-position 46.8 7.8;
#Add GSL links
$n620 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n621 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp211 [new Agent/UDP]
$ns attach-agent $n620 $udp211
set pareto211 [new Application/Traffic/Pareto]
$pareto211 attach-agent $udp211
$pareto211 set packetSize_ 1000
$pareto211 set rate_ 224Kb
set null211 [new Agent/Null]
$ns attach-agent $n621 $null211
$ns connect $udp211 $null211
$ns at 0.95 "$pareto211 start"

#Background: 622 to 623
set n622 [$ns node]
$n622 set-position 43.1 -58.3;
set n623 [$ns node]
$n623 set-position 58.4 11.1;
#Add GSL links
$n622 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n623 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp212 [new Agent/UDP]
$ns attach-agent $n622 $udp212
set pareto212 [new Application/Traffic/Pareto]
$pareto212 attach-agent $udp212
$pareto212 set packetSize_ 1000
$pareto212 set rate_ 224Kb
set null212 [new Agent/Null]
$ns attach-agent $n623 $null212
$ns connect $udp212 $null212
$ns at 0.21 "$pareto212 start"

#Background: 624 to 625
set n624 [$ns node]
$n624 set-position 34.9 -56.0;
set n625 [$ns node]
$n625 set-position 46.1 10.3;
#Add GSL links
$n624 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n625 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp213 [new Agent/UDP]
$ns attach-agent $n624 $udp213
set pareto213 [new Application/Traffic/Pareto]
$pareto213 attach-agent $udp213
$pareto213 set packetSize_ 1000
$pareto213 set rate_ 224Kb
set null213 [new Agent/Null]
$ns attach-agent $n625 $null213
$ns connect $udp213 $null213
$ns at 0.76 "$pareto213 start"

#Background: 626 to 627
set n626 [$ns node]
$n626 set-position 42.2 -135.0;
set n627 [$ns node]
$n627 set-position 46.3 7.3;
#Add GSL links
$n626 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n627 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp214 [new Agent/UDP]
$ns attach-agent $n626 $udp214
set pareto214 [new Application/Traffic/Pareto]
$pareto214 attach-agent $udp214
$pareto214 set packetSize_ 1000
$pareto214 set rate_ 224Kb
set null214 [new Agent/Null]
$ns attach-agent $n627 $null214
$ns connect $udp214 $null214
$ns at 0.20 "$pareto214 start"

#Background: 628 to 629
set n628 [$ns node]
$n628 set-position 43.8 -126.7;
set n629 [$ns node]
$n629 set-position 58.6 -1.4;
#Add GSL links
$n628 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n629 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp215 [new Agent/UDP]
$ns attach-agent $n628 $udp215
set pareto215 [new Application/Traffic/Pareto]
$pareto215 attach-agent $udp215
$pareto215 set packetSize_ 1000
$pareto215 set rate_ 224Kb
set null215 [new Agent/Null]
$ns attach-agent $n629 $null215
$ns connect $udp215 $null215
$ns at 0.81 "$pareto215 start"

#Background: 630 to 631
set n630 [$ns node]
$n630 set-position 46.1 -84.5;
set n631 [$ns node]
$n631 set-position -3.6 27.1;
#Add GSL links
$n630 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n631 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp216 [new Agent/UDP]
$ns attach-agent $n630 $udp216
set pareto216 [new Application/Traffic/Pareto]
$pareto216 attach-agent $udp216
$pareto216 set packetSize_ 1000
$pareto216 set rate_ 224Kb
set null216 [new Agent/Null]
$ns attach-agent $n631 $null216
$ns connect $udp216 $null216
$ns at 0.42 "$pareto216 start"

#Background: 632 to 633
set n632 [$ns node]
$n632 set-position 55.5 -90.5;
set n633 [$ns node]
$n633 set-position -32.3 25.4;
#Add GSL links
$n632 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n633 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp217 [new Agent/UDP]
$ns attach-agent $n632 $udp217
set pareto217 [new Application/Traffic/Pareto]
$pareto217 attach-agent $udp217
$pareto217 set packetSize_ 1000
$pareto217 set rate_ 224Kb
set null217 [new Agent/Null]
$ns attach-agent $n633 $null217
$ns connect $udp217 $null217
$ns at 0.03 "$pareto217 start"

#Background: 634 to 635
set n634 [$ns node]
$n634 set-position 22.1 -111.1;
set n635 [$ns node]
$n635 set-position -32.3 25.4;
#Add GSL links
$n634 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n635 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp218 [new Agent/UDP]
$ns attach-agent $n634 $udp218
set pareto218 [new Application/Traffic/Pareto]
$pareto218 attach-agent $udp218
$pareto218 set packetSize_ 1000
$pareto218 set rate_ 224Kb
set null218 [new Agent/Null]
$ns attach-agent $n635 $null218
$ns connect $udp218 $null218
$ns at 0.98 "$pareto218 start"

#Background: 636 to 637
set n636 [$ns node]
$n636 set-position 37.2 -63.5;
set n637 [$ns node]
$n637 set-position 23.6 32.7;
#Add GSL links
$n636 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n637 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp219 [new Agent/UDP]
$ns attach-agent $n636 $udp219
set pareto219 [new Application/Traffic/Pareto]
$pareto219 attach-agent $udp219
$pareto219 set packetSize_ 1000
$pareto219 set rate_ 224Kb
set null219 [new Agent/Null]
$ns attach-agent $n637 $null219
$ns connect $udp219 $null219
$ns at 0.19 "$pareto219 start"

#Background: 638 to 639
set n638 [$ns node]
$n638 set-position 36.6 -102.0;
set n639 [$ns node]
$n639 set-position -25.8 13.3;
#Add GSL links
$n638 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n639 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp220 [new Agent/UDP]
$ns attach-agent $n638 $udp220
set pareto220 [new Application/Traffic/Pareto]
$pareto220 attach-agent $udp220
$pareto220 set packetSize_ 1000
$pareto220 set rate_ 224Kb
set null220 [new Agent/Null]
$ns attach-agent $n639 $null220
$ns connect $udp220 $null220
$ns at 0.49 "$pareto220 start"

#Background: 640 to 641
set n640 [$ns node]
$n640 set-position 41.1 -124.6;
set n641 [$ns node]
$n641 set-position -26.1 46.1;
#Add GSL links
$n640 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n641 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp221 [new Agent/UDP]
$ns attach-agent $n640 $udp221
set pareto221 [new Application/Traffic/Pareto]
$pareto221 attach-agent $udp221
$pareto221 set packetSize_ 1000
$pareto221 set rate_ 224Kb
set null221 [new Agent/Null]
$ns attach-agent $n641 $null221
$ns connect $udp221 $null221
$ns at 0.69 "$pareto221 start"

#Background: 642 to 643
set n642 [$ns node]
$n642 set-position 36.8 -90.5;
set n643 [$ns node]
$n643 set-position -10.2 -12.8;
#Add GSL links
$n642 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n643 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp222 [new Agent/UDP]
$ns attach-agent $n642 $udp222
set pareto222 [new Application/Traffic/Pareto]
$pareto222 attach-agent $udp222
$pareto222 set packetSize_ 1000
$pareto222 set rate_ 224Kb
set null222 [new Agent/Null]
$ns attach-agent $n643 $null222
$ns connect $udp222 $null222
$ns at 0.04 "$pareto222 start"

#Background: 644 to 645
set n644 [$ns node]
$n644 set-position 55.2 -129.3;
set n645 [$ns node]
$n645 set-position 15.7 -10.1;
#Add GSL links
$n644 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n645 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp223 [new Agent/UDP]
$ns attach-agent $n644 $udp223
set pareto223 [new Application/Traffic/Pareto]
$pareto223 attach-agent $udp223
$pareto223 set packetSize_ 1000
$pareto223 set rate_ 224Kb
set null223 [new Agent/Null]
$ns attach-agent $n645 $null223
$ns connect $udp223 $null223
$ns at 0.60 "$pareto223 start"

#Background: 646 to 647
set n646 [$ns node]
$n646 set-position 44.7 -91.8;
set n647 [$ns node]
$n647 set-position 23.6 32.7;
#Add GSL links
$n646 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n647 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp224 [new Agent/UDP]
$ns attach-agent $n646 $udp224
set pareto224 [new Application/Traffic/Pareto]
$pareto224 attach-agent $udp224
$pareto224 set packetSize_ 1000
$pareto224 set rate_ 224Kb
set null224 [new Agent/Null]
$ns attach-agent $n647 $null224
$ns connect $udp224 $null224
$ns at 0.51 "$pareto224 start"

#Background: 648 to 649
set n648 [$ns node]
$n648 set-position 35.7 -76.4;
set n649 [$ns node]
$n649 set-position 15.7 -10.1;
#Add GSL links
$n648 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n649 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp225 [new Agent/UDP]
$ns attach-agent $n648 $udp225
set pareto225 [new Application/Traffic/Pareto]
$pareto225 attach-agent $udp225
$pareto225 set packetSize_ 1000
$pareto225 set rate_ 224Kb
set null225 [new Agent/Null]
$ns attach-agent $n649 $null225
$ns connect $udp225 $null225
$ns at 0.39 "$pareto225 start"

#Background: 650 to 651
set n650 [$ns node]
$n650 set-position 46.1 -84.5;
set n651 [$ns node]
$n651 set-position -24.8 26.4;
#Add GSL links
$n650 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n651 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp226 [new Agent/UDP]
$ns attach-agent $n650 $udp226
set pareto226 [new Application/Traffic/Pareto]
$pareto226 attach-agent $udp226
$pareto226 set packetSize_ 1000
$pareto226 set rate_ 224Kb
set null226 [new Agent/Null]
$ns attach-agent $n651 $null226
$ns connect $udp226 $null226
$ns at 0.70 "$pareto226 start"

#Background: 652 to 653
set n652 [$ns node]
$n652 set-position 56.0 -95.6;
set n653 [$ns node]
$n653 set-position 14.5 16.1;
#Add GSL links
$n652 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n653 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp227 [new Agent/UDP]
$ns attach-agent $n652 $udp227
set pareto227 [new Application/Traffic/Pareto]
$pareto227 attach-agent $udp227
$pareto227 set packetSize_ 1000
$pareto227 set rate_ 224Kb
set null227 [new Agent/Null]
$ns attach-agent $n653 $null227
$ns connect $udp227 $null227
$ns at 0.11 "$pareto227 start"

#Background: 654 to 655
set n654 [$ns node]
$n654 set-position 48.2 -133.8;
set n655 [$ns node]
$n655 set-position 15.7 -10.1;
#Add GSL links
$n654 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n655 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp228 [new Agent/UDP]
$ns attach-agent $n654 $udp228
set pareto228 [new Application/Traffic/Pareto]
$pareto228 attach-agent $udp228
$pareto228 set packetSize_ 1000
$pareto228 set rate_ 224Kb
set null228 [new Agent/Null]
$ns attach-agent $n655 $null228
$ns connect $udp228 $null228
$ns at 0.59 "$pareto228 start"

#Background: 656 to 657
set n656 [$ns node]
$n656 set-position 55.4 -72.3;
set n657 [$ns node]
$n657 set-position 38.6 120.5;
#Add GSL links
$n656 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n657 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp229 [new Agent/UDP]
$ns attach-agent $n656 $udp229
set pareto229 [new Application/Traffic/Pareto]
$pareto229 attach-agent $udp229
$pareto229 set packetSize_ 1000
$pareto229 set rate_ 224Kb
set null229 [new Agent/Null]
$ns attach-agent $n657 $null229
$ns connect $udp229 $null229
$ns at 0.22 "$pareto229 start"

#Background: 658 to 659
set n658 [$ns node]
$n658 set-position 46.3 -81.6;
set n659 [$ns node]
$n659 set-position 20.2 71.0;
#Add GSL links
$n658 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n659 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp230 [new Agent/UDP]
$ns attach-agent $n658 $udp230
set pareto230 [new Application/Traffic/Pareto]
$pareto230 attach-agent $udp230
$pareto230 set packetSize_ 1000
$pareto230 set rate_ 224Kb
set null230 [new Agent/Null]
$ns attach-agent $n659 $null230
$ns connect $udp230 $null230
$ns at 0.27 "$pareto230 start"

#Background: 660 to 661
set n660 [$ns node]
$n660 set-position 30.1 -71.4;
set n661 [$ns node]
$n661 set-position 1.9 95.1;
#Add GSL links
$n660 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n661 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp231 [new Agent/UDP]
$ns attach-agent $n660 $udp231
set pareto231 [new Application/Traffic/Pareto]
$pareto231 attach-agent $udp231
$pareto231 set packetSize_ 1000
$pareto231 set rate_ 224Kb
set null231 [new Agent/Null]
$ns attach-agent $n661 $null231
$ns connect $udp231 $null231
$ns at 0.68 "$pareto231 start"

#Background: 662 to 663
set n662 [$ns node]
$n662 set-position 22.3 -121.5;
set n663 [$ns node]
$n663 set-position 14.6 93.9;
#Add GSL links
$n662 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n663 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp232 [new Agent/UDP]
$ns attach-agent $n662 $udp232
set pareto232 [new Application/Traffic/Pareto]
$pareto232 attach-agent $udp232
$pareto232 set packetSize_ 1000
$pareto232 set rate_ 224Kb
set null232 [new Agent/Null]
$ns attach-agent $n663 $null232
$ns connect $udp232 $null232
$ns at 0.07 "$pareto232 start"

#Background: 664 to 665
set n664 [$ns node]
$n664 set-position 58.0 -86.6;
set n665 [$ns node]
$n665 set-position 35.7 97.0;
#Add GSL links
$n664 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n665 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp233 [new Agent/UDP]
$ns attach-agent $n664 $udp233
set pareto233 [new Application/Traffic/Pareto]
$pareto233 attach-agent $udp233
$pareto233 set packetSize_ 1000
$pareto233 set rate_ 224Kb
set null233 [new Agent/Null]
$ns attach-agent $n665 $null233
$ns connect $udp233 $null233
$ns at 0.60 "$pareto233 start"

#Background: 666 to 667
set n666 [$ns node]
$n666 set-position 26.2 -56.4;
set n667 [$ns node]
$n667 set-position 23.3 64.0;
#Add GSL links
$n666 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n667 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp234 [new Agent/UDP]
$ns attach-agent $n666 $udp234
set pareto234 [new Application/Traffic/Pareto]
$pareto234 attach-agent $udp234
$pareto234 set packetSize_ 1000
$pareto234 set rate_ 224Kb
set null234 [new Agent/Null]
$ns attach-agent $n667 $null234
$ns connect $udp234 $null234
$ns at 0.64 "$pareto234 start"

#Background: 668 to 669
set n668 [$ns node]
$n668 set-position 31.0 -97.9;
set n669 [$ns node]
$n669 set-position 7.5 97.8;
#Add GSL links
$n668 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n669 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp235 [new Agent/UDP]
$ns attach-agent $n668 $udp235
set pareto235 [new Application/Traffic/Pareto]
$pareto235 attach-agent $udp235
$pareto235 set packetSize_ 1000
$pareto235 set rate_ 224Kb
set null235 [new Agent/Null]
$ns attach-agent $n669 $null235
$ns connect $udp235 $null235
$ns at 0.35 "$pareto235 start"

#Background: 670 to 671
set n670 [$ns node]
$n670 set-position 29.1 -106.0;
set n671 [$ns node]
$n671 set-position 26.5 65.4;
#Add GSL links
$n670 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n671 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp236 [new Agent/UDP]
$ns attach-agent $n670 $udp236
set pareto236 [new Application/Traffic/Pareto]
$pareto236 attach-agent $udp236
$pareto236 set packetSize_ 1000
$pareto236 set rate_ 224Kb
set null236 [new Agent/Null]
$ns attach-agent $n671 $null236
$ns connect $udp236 $null236
$ns at 0.55 "$pareto236 start"

#Background: 672 to 673
set n672 [$ns node]
$n672 set-position 26.2 -56.4;
set n673 [$ns node]
$n673 set-position 10.2 96.9;
#Add GSL links
$n672 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n673 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp237 [new Agent/UDP]
$ns attach-agent $n672 $udp237
set pareto237 [new Application/Traffic/Pareto]
$pareto237 attach-agent $udp237
$pareto237 set packetSize_ 1000
$pareto237 set rate_ 224Kb
set null237 [new Agent/Null]
$ns attach-agent $n673 $null237
$ns connect $udp237 $null237
$ns at 0.08 "$pareto237 start"

#Background: 674 to 675
set n674 [$ns node]
$n674 set-position 53.8 -126.9;
set n675 [$ns node]
$n675 set-position 18.0 94.1;
#Add GSL links
$n674 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n675 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp238 [new Agent/UDP]
$ns attach-agent $n674 $udp238
set pareto238 [new Application/Traffic/Pareto]
$pareto238 attach-agent $udp238
$pareto238 set packetSize_ 1000
$pareto238 set rate_ 224Kb
set null238 [new Agent/Null]
$ns attach-agent $n675 $null238
$ns connect $udp238 $null238
$ns at 0.41 "$pareto238 start"

#Background: 676 to 677
set n676 [$ns node]
$n676 set-position 35.3 -70.7;
set n677 [$ns node]
$n677 set-position 1.9 95.1;
#Add GSL links
$n676 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n677 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp239 [new Agent/UDP]
$ns attach-agent $n676 $udp239
set pareto239 [new Application/Traffic/Pareto]
$pareto239 attach-agent $udp239
$pareto239 set packetSize_ 1000
$pareto239 set rate_ 224Kb
set null239 [new Agent/Null]
$ns attach-agent $n677 $null239
$ns connect $udp239 $null239
$ns at 0.06 "$pareto239 start"

#Background: 678 to 679
set n678 [$ns node]
$n678 set-position 51.2 -91.8;
set n679 [$ns node]
$n679 set-position 46.4 137.8;
#Add GSL links
$n678 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n679 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp240 [new Agent/UDP]
$ns attach-agent $n678 $udp240
set pareto240 [new Application/Traffic/Pareto]
$pareto240 attach-agent $udp240
$pareto240 set packetSize_ 1000
$pareto240 set rate_ 224Kb
set null240 [new Agent/Null]
$ns attach-agent $n679 $null240
$ns connect $udp240 $null240
$ns at 0.75 "$pareto240 start"

#Background: 680 to 681
set n680 [$ns node]
$n680 set-position 36.5 -67.9;
set n681 [$ns node]
$n681 set-position 15.0 78.0;
#Add GSL links
$n680 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n681 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp241 [new Agent/UDP]
$ns attach-agent $n680 $udp241
set pareto241 [new Application/Traffic/Pareto]
$pareto241 attach-agent $udp241
$pareto241 set packetSize_ 1000
$pareto241 set rate_ 224Kb
set null241 [new Agent/Null]
$ns attach-agent $n681 $null241
$ns connect $udp241 $null241
$ns at 0.43 "$pareto241 start"

#Background: 682 to 683
set n682 [$ns node]
$n682 set-position 22.3 -121.5;
set n683 [$ns node]
$n683 set-position -3.9 46.0;
#Add GSL links
$n682 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n683 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp242 [new Agent/UDP]
$ns attach-agent $n682 $udp242
set pareto242 [new Application/Traffic/Pareto]
$pareto242 attach-agent $udp242
$pareto242 set packetSize_ 1000
$pareto242 set rate_ 224Kb
set null242 [new Agent/Null]
$ns attach-agent $n683 $null242
$ns connect $udp242 $null242
$ns at 0.58 "$pareto242 start"

#Background: 684 to 685
set n684 [$ns node]
$n684 set-position 54.2 -65.1;
set n685 [$ns node]
$n685 set-position -0.5 126.4;
#Add GSL links
$n684 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n685 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp243 [new Agent/UDP]
$ns attach-agent $n684 $udp243
set pareto243 [new Application/Traffic/Pareto]
$pareto243 attach-agent $udp243
$pareto243 set packetSize_ 1000
$pareto243 set rate_ 224Kb
set null243 [new Agent/Null]
$ns attach-agent $n685 $null243
$ns connect $udp243 $null243
$ns at 0.40 "$pareto243 start"

#Background: 686 to 687
set n686 [$ns node]
$n686 set-position 29.4 -102.7;
set n687 [$ns node]
$n687 set-position 21.9 94.9;
#Add GSL links
$n686 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n687 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp244 [new Agent/UDP]
$ns attach-agent $n686 $udp244
set pareto244 [new Application/Traffic/Pareto]
$pareto244 attach-agent $udp244
$pareto244 set packetSize_ 1000
$pareto244 set rate_ 224Kb
set null244 [new Agent/Null]
$ns attach-agent $n687 $null244
$ns connect $udp244 $null244
$ns at 0.17 "$pareto244 start"

#Background: 688 to 689
set n688 [$ns node]
$n688 set-position 37.0 -110.9;
set n689 [$ns node]
$n689 set-position 8.9 124.5;
#Add GSL links
$n688 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n689 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp245 [new Agent/UDP]
$ns attach-agent $n688 $udp245
set pareto245 [new Application/Traffic/Pareto]
$pareto245 attach-agent $udp245
$pareto245 set packetSize_ 1000
$pareto245 set rate_ 224Kb
set null245 [new Agent/Null]
$ns attach-agent $n689 $null245
$ns connect $udp245 $null245
$ns at 0.62 "$pareto245 start"

#Background: 690 to 691
set n690 [$ns node]
$n690 set-position 29.4 -102.7;
set n691 [$ns node]
$n691 set-position 17.1 97.3;
#Add GSL links
$n690 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n691 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp246 [new Agent/UDP]
$ns attach-agent $n690 $udp246
set pareto246 [new Application/Traffic/Pareto]
$pareto246 attach-agent $udp246
$pareto246 set packetSize_ 1000
$pareto246 set rate_ 224Kb
set null246 [new Agent/Null]
$ns attach-agent $n691 $null246
$ns connect $udp246 $null246
$ns at 0.08 "$pareto246 start"

#Background: 692 to 693
set n692 [$ns node]
$n692 set-position 55.2 -120.3;
set n693 [$ns node]
$n693 set-position 26.5 65.4;
#Add GSL links
$n692 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n693 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp247 [new Agent/UDP]
$ns attach-agent $n692 $udp247
set pareto247 [new Application/Traffic/Pareto]
$pareto247 attach-agent $udp247
$pareto247 set packetSize_ 1000
$pareto247 set rate_ 224Kb
set null247 [new Agent/Null]
$ns attach-agent $n693 $null247
$ns connect $udp247 $null247
$ns at 0.97 "$pareto247 start"

#Background: 694 to 695
set n694 [$ns node]
$n694 set-position 48.2 -133.8;
set n695 [$ns node]
$n695 set-position 11.2 74.7;
#Add GSL links
$n694 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n695 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp248 [new Agent/UDP]
$ns attach-agent $n694 $udp248
set pareto248 [new Application/Traffic/Pareto]
$pareto248 attach-agent $udp248
$pareto248 set packetSize_ 1000
$pareto248 set rate_ 224Kb
set null248 [new Agent/Null]
$ns attach-agent $n695 $null248
$ns connect $udp248 $null248
$ns at 0.37 "$pareto248 start"

#Background: 696 to 697
set n696 [$ns node]
$n696 set-position 51.4 -126.1;
set n697 [$ns node]
$n697 set-position 50.5 73.6;
#Add GSL links
$n696 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n697 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp249 [new Agent/UDP]
$ns attach-agent $n696 $udp249
set pareto249 [new Application/Traffic/Pareto]
$pareto249 attach-agent $udp249
$pareto249 set packetSize_ 1000
$pareto249 set rate_ 224Kb
set null249 [new Agent/Null]
$ns attach-agent $n697 $null249
$ns connect $udp249 $null249
$ns at 0.73 "$pareto249 start"

#Background: 698 to 699
set n698 [$ns node]
$n698 set-position 25.2 -122.6;
set n699 [$ns node]
$n699 set-position 31.1 99.5;
#Add GSL links
$n698 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n699 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp250 [new Agent/UDP]
$ns attach-agent $n698 $udp250
set pareto250 [new Application/Traffic/Pareto]
$pareto250 attach-agent $udp250
$pareto250 set packetSize_ 1000
$pareto250 set rate_ 224Kb
set null250 [new Agent/Null]
$ns attach-agent $n699 $null250
$ns connect $udp250 $null250
$ns at 0.29 "$pareto250 start"

#Background: 700 to 701
set n700 [$ns node]
$n700 set-position 22.1 -89.8;
set n701 [$ns node]
$n701 set-position 57.4 67.3;
#Add GSL links
$n700 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n701 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp251 [new Agent/UDP]
$ns attach-agent $n700 $udp251
set pareto251 [new Application/Traffic/Pareto]
$pareto251 attach-agent $udp251
$pareto251 set packetSize_ 1000
$pareto251 set rate_ 224Kb
set null251 [new Agent/Null]
$ns attach-agent $n701 $null251
$ns connect $udp251 $null251
$ns at 0.06 "$pareto251 start"

#Background: 702 to 703
set n702 [$ns node]
$n702 set-position 35.3 -70.7;
set n703 [$ns node]
$n703 set-position 46.4 137.8;
#Add GSL links
$n702 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n703 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp252 [new Agent/UDP]
$ns attach-agent $n702 $udp252
set pareto252 [new Application/Traffic/Pareto]
$pareto252 attach-agent $udp252
$pareto252 set packetSize_ 1000
$pareto252 set rate_ 224Kb
set null252 [new Agent/Null]
$ns attach-agent $n703 $null252
$ns connect $udp252 $null252
$ns at 0.21 "$pareto252 start"

#Background: 704 to 705
set n704 [$ns node]
$n704 set-position 22.3 -56.5;
set n705 [$ns node]
$n705 set-position 37.7 95.3;
#Add GSL links
$n704 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n705 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp253 [new Agent/UDP]
$ns attach-agent $n704 $udp253
set pareto253 [new Application/Traffic/Pareto]
$pareto253 attach-agent $udp253
$pareto253 set packetSize_ 1000
$pareto253 set rate_ 224Kb
set null253 [new Agent/Null]
$ns attach-agent $n705 $null253
$ns connect $udp253 $null253
$ns at 0.82 "$pareto253 start"

#Background: 706 to 707
set n706 [$ns node]
$n706 set-position 41.1 -124.6;
set n707 [$ns node]
$n707 set-position 20.2 71.0;
#Add GSL links
$n706 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n707 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp254 [new Agent/UDP]
$ns attach-agent $n706 $udp254
set pareto254 [new Application/Traffic/Pareto]
$pareto254 attach-agent $udp254
$pareto254 set packetSize_ 1000
$pareto254 set rate_ 224Kb
set null254 [new Agent/Null]
$ns attach-agent $n707 $null254
$ns connect $udp254 $null254
$ns at 0.97 "$pareto254 start"

#Background: 708 to 709
set n708 [$ns node]
$n708 set-position 58.4 -70.0;
set n709 [$ns node]
$n709 set-position 35.3 49.2;
#Add GSL links
$n708 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n709 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp255 [new Agent/UDP]
$ns attach-agent $n708 $udp255
set pareto255 [new Application/Traffic/Pareto]
$pareto255 attach-agent $udp255
$pareto255 set packetSize_ 1000
$pareto255 set rate_ 224Kb
set null255 [new Agent/Null]
$ns attach-agent $n709 $null255
$ns connect $udp255 $null255
$ns at 0.69 "$pareto255 start"

#Background: 710 to 711
set n710 [$ns node]
$n710 set-position 44.7 -91.8;
set n711 [$ns node]
$n711 set-position -7.9 123.2;
#Add GSL links
$n710 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n711 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp256 [new Agent/UDP]
$ns attach-agent $n710 $udp256
set pareto256 [new Application/Traffic/Pareto]
$pareto256 attach-agent $udp256
$pareto256 set packetSize_ 1000
$pareto256 set rate_ 224Kb
set null256 [new Agent/Null]
$ns attach-agent $n711 $null256
$ns connect $udp256 $null256
$ns at 0.37 "$pareto256 start"

#Background: 712 to 713
set n712 [$ns node]
$n712 set-position 37.2 -63.5;
set n713 [$ns node]
$n713 set-position -14.0 169.5;
#Add GSL links
$n712 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n713 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp257 [new Agent/UDP]
$ns attach-agent $n712 $udp257
set pareto257 [new Application/Traffic/Pareto]
$pareto257 attach-agent $udp257
$pareto257 set packetSize_ 1000
$pareto257 set rate_ 224Kb
set null257 [new Agent/Null]
$ns attach-agent $n713 $null257
$ns connect $udp257 $null257
$ns at 0.71 "$pareto257 start"

#Background: 714 to 715
set n714 [$ns node]
$n714 set-position 52.7 -58.3;
set n715 [$ns node]
$n715 set-position -13.9 171.4;
#Add GSL links
$n714 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n715 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp258 [new Agent/UDP]
$ns attach-agent $n714 $udp258
set pareto258 [new Application/Traffic/Pareto]
$pareto258 attach-agent $udp258
$pareto258 set packetSize_ 1000
$pareto258 set rate_ 224Kb
set null258 [new Agent/Null]
$ns attach-agent $n715 $null258
$ns connect $udp258 $null258
$ns at 0.34 "$pareto258 start"

#Background: 716 to 717
set n716 [$ns node]
$n716 set-position 25.2 -122.6;
set n717 [$ns node]
$n717 set-position -7.9 123.2;
#Add GSL links
$n716 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n717 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp259 [new Agent/UDP]
$ns attach-agent $n716 $udp259
set pareto259 [new Application/Traffic/Pareto]
$pareto259 attach-agent $udp259
$pareto259 set packetSize_ 1000
$pareto259 set rate_ 224Kb
set null259 [new Agent/Null]
$ns attach-agent $n717 $null259
$ns connect $udp259 $null259
$ns at 0.87 "$pareto259 start"

#Background: 718 to 719
set n718 [$ns node]
$n718 set-position 44.7 -91.8;
set n719 [$ns node]
$n719 set-position -14.0 169.5;
#Add GSL links
$n718 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n719 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp260 [new Agent/UDP]
$ns attach-agent $n718 $udp260
set pareto260 [new Application/Traffic/Pareto]
$pareto260 attach-agent $udp260
$pareto260 set packetSize_ 1000
$pareto260 set rate_ 224Kb
set null260 [new Agent/Null]
$ns attach-agent $n719 $null260
$ns connect $udp260 $null260
$ns at 0.02 "$pareto260 start"

#Background: 720 to 721
set n720 [$ns node]
$n720 set-position 45.4 -90.4;
set n721 [$ns node]
$n721 set-position -7.9 123.2;
#Add GSL links
$n720 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n721 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp261 [new Agent/UDP]
$ns attach-agent $n720 $udp261
set pareto261 [new Application/Traffic/Pareto]
$pareto261 attach-agent $udp261
$pareto261 set packetSize_ 1000
$pareto261 set rate_ 224Kb
set null261 [new Agent/Null]
$ns attach-agent $n721 $null261
$ns connect $udp261 $null261
$ns at 0.60 "$pareto261 start"

#Background: 722 to 723
set n722 [$ns node]
$n722 set-position 37.1 -104.0;
set n723 [$ns node]
$n723 set-position -36.8 163.6;
#Add GSL links
$n722 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n723 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp262 [new Agent/UDP]
$ns attach-agent $n722 $udp262
set pareto262 [new Application/Traffic/Pareto]
$pareto262 attach-agent $udp262
$pareto262 set packetSize_ 1000
$pareto262 set rate_ 224Kb
set null262 [new Agent/Null]
$ns attach-agent $n723 $null262
$ns connect $udp262 $null262
$ns at 0.77 "$pareto262 start"

#Background: 724 to 725
set n724 [$ns node]
$n724 set-position 44.7 -91.8;
set n725 [$ns node]
$n725 set-position -23.8 130.8;
#Add GSL links
$n724 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n725 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp263 [new Agent/UDP]
$ns attach-agent $n724 $udp263
set pareto263 [new Application/Traffic/Pareto]
$pareto263 attach-agent $udp263
$pareto263 set packetSize_ 1000
$pareto263 set rate_ 224Kb
set null263 [new Agent/Null]
$ns attach-agent $n725 $null263
$ns connect $udp263 $null263
$ns at 0.63 "$pareto263 start"

#Background: 726 to 727
set n726 [$ns node]
$n726 set-position 22.1 -89.8;
set n727 [$ns node]
$n727 set-position -13.9 171.4;
#Add GSL links
$n726 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n727 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp264 [new Agent/UDP]
$ns attach-agent $n726 $udp264
set pareto264 [new Application/Traffic/Pareto]
$pareto264 attach-agent $udp264
$pareto264 set packetSize_ 1000
$pareto264 set rate_ 224Kb
set null264 [new Agent/Null]
$ns attach-agent $n727 $null264
$ns connect $udp264 $null264
$ns at 0.80 "$pareto264 start"

#Background: 728 to 729
set n728 [$ns node]
$n728 set-position 25.2 -83.7;
set n729 [$ns node]
$n729 set-position -34.0 136.4;
#Add GSL links
$n728 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n729 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp265 [new Agent/UDP]
$ns attach-agent $n728 $udp265
set pareto265 [new Application/Traffic/Pareto]
$pareto265 attach-agent $udp265
$pareto265 set packetSize_ 1000
$pareto265 set rate_ 224Kb
set null265 [new Agent/Null]
$ns attach-agent $n729 $null265
$ns connect $udp265 $null265
$ns at 0.44 "$pareto265 start"

#Background: 730 to 731
set n730 [$ns node]
$n730 set-position 56.0 -95.6;
set n731 [$ns node]
$n731 set-position -8.9 158.9;
#Add GSL links
$n730 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n731 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp266 [new Agent/UDP]
$ns attach-agent $n730 $udp266
set pareto266 [new Application/Traffic/Pareto]
$pareto266 attach-agent $udp266
$pareto266 set packetSize_ 1000
$pareto266 set rate_ 224Kb
set null266 [new Agent/Null]
$ns attach-agent $n731 $null266
$ns connect $udp266 $null266
$ns at 0.39 "$pareto266 start"

#Background: 732 to 733
set n732 [$ns node]
$n732 set-position 36.2 -128.1;
set n733 [$ns node]
$n733 set-position -14.0 169.5;
#Add GSL links
$n732 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n733 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp267 [new Agent/UDP]
$ns attach-agent $n732 $udp267
set pareto267 [new Application/Traffic/Pareto]
$pareto267 attach-agent $udp267
$pareto267 set packetSize_ 1000
$pareto267 set rate_ 224Kb
set null267 [new Agent/Null]
$ns attach-agent $n733 $null267
$ns connect $udp267 $null267
$ns at 0.75 "$pareto267 start"

#Background: 734 to 735
set n734 [$ns node]
$n734 set-position 35.7 -76.4;
set n735 [$ns node]
$n735 set-position -13.9 119.8;
#Add GSL links
$n734 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n735 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp268 [new Agent/UDP]
$ns attach-agent $n734 $udp268
set pareto268 [new Application/Traffic/Pareto]
$pareto268 attach-agent $udp268
$pareto268 set packetSize_ 1000
$pareto268 set rate_ 224Kb
set null268 [new Agent/Null]
$ns attach-agent $n735 $null268
$ns connect $udp268 $null268
$ns at 0.10 "$pareto268 start"

#Background: 736 to 737
set n736 [$ns node]
$n736 set-position -3.1 -60.8;
set n737 [$ns node]
$n737 set-position 52.8 -89.5;
#Add GSL links
$n736 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n737 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp269 [new Agent/UDP]
$ns attach-agent $n736 $udp269
set pareto269 [new Application/Traffic/Pareto]
$pareto269 attach-agent $udp269
$pareto269 set packetSize_ 1000
$pareto269 set rate_ 224Kb
set null269 [new Agent/Null]
$ns attach-agent $n737 $null269
$ns connect $udp269 $null269
$ns at 0.84 "$pareto269 start"

#Background: 738 to 739
set n738 [$ns node]
$n738 set-position 9.3 -76.5;
set n739 [$ns node]
$n739 set-position 29.9 -89.3;
#Add GSL links
$n738 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n739 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp270 [new Agent/UDP]
$ns attach-agent $n738 $udp270
set pareto270 [new Application/Traffic/Pareto]
$pareto270 attach-agent $udp270
$pareto270 set packetSize_ 1000
$pareto270 set rate_ 224Kb
set null270 [new Agent/Null]
$ns attach-agent $n739 $null270
$ns connect $udp270 $null270
$ns at 0.60 "$pareto270 start"

#Background: 740 to 741
set n740 [$ns node]
$n740 set-position -51.0 -61.8;
set n741 [$ns node]
$n741 set-position 40.5 -122.2;
#Add GSL links
$n740 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n741 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp271 [new Agent/UDP]
$ns attach-agent $n740 $udp271
set pareto271 [new Application/Traffic/Pareto]
$pareto271 attach-agent $udp271
$pareto271 set packetSize_ 1000
$pareto271 set rate_ 224Kb
set null271 [new Agent/Null]
$ns attach-agent $n741 $null271
$ns connect $udp271 $null271
$ns at 0.61 "$pareto271 start"

#Background: 742 to 743
set n742 [$ns node]
$n742 set-position -38.7 -76.9;
set n743 [$ns node]
$n743 set-position 44.7 -91.8;
#Add GSL links
$n742 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n743 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp272 [new Agent/UDP]
$ns attach-agent $n742 $udp272
set pareto272 [new Application/Traffic/Pareto]
$pareto272 attach-agent $udp272
$pareto272 set packetSize_ 1000
$pareto272 set rate_ 224Kb
set null272 [new Agent/Null]
$ns attach-agent $n743 $null272
$ns connect $udp272 $null272
$ns at 0.84 "$pareto272 start"

#Background: 744 to 745
set n744 [$ns node]
$n744 set-position 7.6 -58.3;
set n745 [$ns node]
$n745 set-position 42.6 -112.9;
#Add GSL links
$n744 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n745 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp273 [new Agent/UDP]
$ns attach-agent $n744 $udp273
set pareto273 [new Application/Traffic/Pareto]
$pareto273 attach-agent $udp273
$pareto273 set packetSize_ 1000
$pareto273 set rate_ 224Kb
set null273 [new Agent/Null]
$ns attach-agent $n745 $null273
$ns connect $udp273 $null273
$ns at 0.85 "$pareto273 start"

#Background: 746 to 747
set n746 [$ns node]
$n746 set-position -41.5 -72.0;
set n747 [$ns node]
$n747 set-position 29.4 -96.4;
#Add GSL links
$n746 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n747 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp274 [new Agent/UDP]
$ns attach-agent $n746 $udp274
set pareto274 [new Application/Traffic/Pareto]
$pareto274 attach-agent $udp274
$pareto274 set packetSize_ 1000
$pareto274 set rate_ 224Kb
set null274 [new Agent/Null]
$ns attach-agent $n747 $null274
$ns connect $udp274 $null274
$ns at 0.58 "$pareto274 start"

#Background: 748 to 749
set n748 [$ns node]
$n748 set-position -14.8 -68.9;
set n749 [$ns node]
$n749 set-position 29.9 -89.3;
#Add GSL links
$n748 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n749 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp275 [new Agent/UDP]
$ns attach-agent $n748 $udp275
set pareto275 [new Application/Traffic/Pareto]
$pareto275 attach-agent $udp275
$pareto275 set packetSize_ 1000
$pareto275 set rate_ 224Kb
set null275 [new Agent/Null]
$ns attach-agent $n749 $null275
$ns connect $udp275 $null275
$ns at 0.71 "$pareto275 start"

#Background: 750 to 751
set n750 [$ns node]
$n750 set-position -30.9 -72.3;
set n751 [$ns node]
$n751 set-position 9.3 -76.5;
#Add GSL links
$n750 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n751 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp276 [new Agent/UDP]
$ns attach-agent $n750 $udp276
set pareto276 [new Application/Traffic/Pareto]
$pareto276 attach-agent $udp276
$pareto276 set packetSize_ 1000
$pareto276 set rate_ 224Kb
set null276 [new Agent/Null]
$ns attach-agent $n751 $null276
$ns connect $udp276 $null276
$ns at 0.87 "$pareto276 start"

#Background: 752 to 753
set n752 [$ns node]
$n752 set-position 9.6 -67.9;
set n753 [$ns node]
$n753 set-position -50.2 -69.3;
#Add GSL links
$n752 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n753 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp277 [new Agent/UDP]
$ns attach-agent $n752 $udp277
set pareto277 [new Application/Traffic/Pareto]
$pareto277 attach-agent $udp277
$pareto277 set packetSize_ 1000
$pareto277 set rate_ 224Kb
set null277 [new Agent/Null]
$ns attach-agent $n753 $null277
$ns connect $udp277 $null277
$ns at 0.18 "$pareto277 start"

#Background: 754 to 755
set n754 [$ns node]
$n754 set-position -9.6 -69.6;
set n755 [$ns node]
$n755 set-position 2.2 -52.4;
#Add GSL links
$n754 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n755 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp278 [new Agent/UDP]
$ns attach-agent $n754 $udp278
set pareto278 [new Application/Traffic/Pareto]
$pareto278 attach-agent $udp278
$pareto278 set packetSize_ 1000
$pareto278 set rate_ 224Kb
set null278 [new Agent/Null]
$ns attach-agent $n755 $null278
$ns connect $udp278 $null278
$ns at 0.11 "$pareto278 start"

#Background: 756 to 757
set n756 [$ns node]
$n756 set-position -9.6 -69.6;
set n757 [$ns node]
$n757 set-position -49.6 -42.5;
#Add GSL links
$n756 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n757 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp279 [new Agent/UDP]
$ns attach-agent $n756 $udp279
set pareto279 [new Application/Traffic/Pareto]
$pareto279 attach-agent $udp279
$pareto279 set packetSize_ 1000
$pareto279 set rate_ 224Kb
set null279 [new Agent/Null]
$ns attach-agent $n757 $null279
$ns connect $udp279 $null279
$ns at 0.53 "$pareto279 start"

#Background: 758 to 759
set n758 [$ns node]
$n758 set-position -13.9 -60.7;
set n759 [$ns node]
$n759 set-position -9.6 -69.6;
#Add GSL links
$n758 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n759 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp280 [new Agent/UDP]
$ns attach-agent $n758 $udp280
set pareto280 [new Application/Traffic/Pareto]
$pareto280 attach-agent $udp280
$pareto280 set packetSize_ 1000
$pareto280 set rate_ 224Kb
set null280 [new Agent/Null]
$ns attach-agent $n759 $null280
$ns connect $udp280 $null280
$ns at 0.71 "$pareto280 start"

#Background: 760 to 761
set n760 [$ns node]
$n760 set-position -38.7 -76.9;
set n761 [$ns node]
$n761 set-position -19.2 -53.0;
#Add GSL links
$n760 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n761 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp281 [new Agent/UDP]
$ns attach-agent $n760 $udp281
set pareto281 [new Application/Traffic/Pareto]
$pareto281 attach-agent $udp281
$pareto281 set packetSize_ 1000
$pareto281 set rate_ 224Kb
set null281 [new Agent/Null]
$ns attach-agent $n761 $null281
$ns connect $udp281 $null281
$ns at 0.92 "$pareto281 start"

#Background: 762 to 763
set n762 [$ns node]
$n762 set-position -49.6 -42.5;
set n763 [$ns node]
$n763 set-position -41.5 -72.0;
#Add GSL links
$n762 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n763 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp282 [new Agent/UDP]
$ns attach-agent $n762 $udp282
set pareto282 [new Application/Traffic/Pareto]
$pareto282 attach-agent $udp282
$pareto282 set packetSize_ 1000
$pareto282 set rate_ 224Kb
set null282 [new Agent/Null]
$ns attach-agent $n763 $null282
$ns connect $udp282 $null282
$ns at 0.76 "$pareto282 start"

#Background: 764 to 765
set n764 [$ns node]
$n764 set-position 7.3 -71.9;
set n765 [$ns node]
$n765 set-position -14.8 -68.9;
#Add GSL links
$n764 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n765 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp283 [new Agent/UDP]
$ns attach-agent $n764 $udp283
set pareto283 [new Application/Traffic/Pareto]
$pareto283 attach-agent $udp283
$pareto283 set packetSize_ 1000
$pareto283 set rate_ 224Kb
set null283 [new Agent/Null]
$ns attach-agent $n765 $null283
$ns connect $udp283 $null283
$ns at 0.42 "$pareto283 start"

#Background: 766 to 767
set n766 [$ns node]
$n766 set-position 9.3 -76.5;
set n767 [$ns node]
$n767 set-position 12.7 -63.2;
#Add GSL links
$n766 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n767 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp284 [new Agent/UDP]
$ns attach-agent $n766 $udp284
set pareto284 [new Application/Traffic/Pareto]
$pareto284 attach-agent $udp284
$pareto284 set packetSize_ 1000
$pareto284 set rate_ 224Kb
set null284 [new Agent/Null]
$ns attach-agent $n767 $null284
$ns connect $udp284 $null284
$ns at 0.26 "$pareto284 start"

#Background: 768 to 769
set n768 [$ns node]
$n768 set-position -14.8 -68.9;
set n769 [$ns node]
$n769 set-position -3.1 -60.8;
#Add GSL links
$n768 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n769 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp285 [new Agent/UDP]
$ns attach-agent $n768 $udp285
set pareto285 [new Application/Traffic/Pareto]
$pareto285 attach-agent $udp285
$pareto285 set packetSize_ 1000
$pareto285 set rate_ 224Kb
set null285 [new Agent/Null]
$ns attach-agent $n769 $null285
$ns connect $udp285 $null285
$ns at 0.71 "$pareto285 start"

#Background: 770 to 771
set n770 [$ns node]
$n770 set-position -27.9 -45.6;
set n771 [$ns node]
$n771 set-position 7.6 -58.3;
#Add GSL links
$n770 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n771 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp286 [new Agent/UDP]
$ns attach-agent $n770 $udp286
set pareto286 [new Application/Traffic/Pareto]
$pareto286 attach-agent $udp286
$pareto286 set packetSize_ 1000
$pareto286 set rate_ 224Kb
set null286 [new Agent/Null]
$ns attach-agent $n771 $null286
$ns connect $udp286 $null286
$ns at 0.52 "$pareto286 start"

#Background: 772 to 773
set n772 [$ns node]
$n772 set-position 9.3 -76.5;
set n773 [$ns node]
$n773 set-position -41.5 -72.0;
#Add GSL links
$n772 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n773 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp287 [new Agent/UDP]
$ns attach-agent $n772 $udp287
set pareto287 [new Application/Traffic/Pareto]
$pareto287 attach-agent $udp287
$pareto287 set packetSize_ 1000
$pareto287 set rate_ 224Kb
set null287 [new Agent/Null]
$ns attach-agent $n773 $null287
$ns connect $udp287 $null287
$ns at 0.04 "$pareto287 start"

#Background: 774 to 775
set n774 [$ns node]
$n774 set-position 2.2 -52.4;
set n775 [$ns node]
$n775 set-position 48.4 -8.7;
#Add GSL links
$n774 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n775 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp288 [new Agent/UDP]
$ns attach-agent $n774 $udp288
set pareto288 [new Application/Traffic/Pareto]
$pareto288 attach-agent $udp288
$pareto288 set packetSize_ 1000
$pareto288 set rate_ 224Kb
set null288 [new Agent/Null]
$ns attach-agent $n775 $null288
$ns connect $udp288 $null288
$ns at 0.52 "$pareto288 start"

#Background: 776 to 777
set n776 [$ns node]
$n776 set-position 9.3 -76.5;
set n777 [$ns node]
$n777 set-position 39.7 10.7;
#Add GSL links
$n776 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n777 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp289 [new Agent/UDP]
$ns attach-agent $n776 $udp289
set pareto289 [new Application/Traffic/Pareto]
$pareto289 attach-agent $udp289
$pareto289 set packetSize_ 1000
$pareto289 set rate_ 224Kb
set null289 [new Agent/Null]
$ns attach-agent $n777 $null289
$ns connect $udp289 $null289
$ns at 0.81 "$pareto289 start"

#Background: 778 to 779
set n778 [$ns node]
$n778 set-position -51.0 -61.8;
set n779 [$ns node]
$n779 set-position 51.5 2.5;
#Add GSL links
$n778 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n779 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp290 [new Agent/UDP]
$ns attach-agent $n778 $udp290
set pareto290 [new Application/Traffic/Pareto]
$pareto290 attach-agent $udp290
$pareto290 set packetSize_ 1000
$pareto290 set rate_ 224Kb
set null290 [new Agent/Null]
$ns attach-agent $n779 $null290
$ns connect $udp290 $null290
$ns at 0.78 "$pareto290 start"

#Background: 780 to 781
set n780 [$ns node]
$n780 set-position -15.6 -69.1;
set n781 [$ns node]
$n781 set-position 59.2 8.9;
#Add GSL links
$n780 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n781 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp291 [new Agent/UDP]
$ns attach-agent $n780 $udp291
set pareto291 [new Application/Traffic/Pareto]
$pareto291 attach-agent $udp291
$pareto291 set packetSize_ 1000
$pareto291 set rate_ 224Kb
set null291 [new Agent/Null]
$ns attach-agent $n781 $null291
$ns connect $udp291 $null291
$ns at 0.51 "$pareto291 start"

#Background: 782 to 783
set n782 [$ns node]
$n782 set-position -49.6 -42.5;
set n783 [$ns node]
$n783 set-position 40.3 92.8;
#Add GSL links
$n782 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n783 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp292 [new Agent/UDP]
$ns attach-agent $n782 $udp292
set pareto292 [new Application/Traffic/Pareto]
$pareto292 attach-agent $udp292
$pareto292 set packetSize_ 1000
$pareto292 set rate_ 224Kb
set null292 [new Agent/Null]
$ns attach-agent $n783 $null292
$ns connect $udp292 $null292
$ns at 0.55 "$pareto292 start"

#Background: 784 to 785
set n784 [$ns node]
$n784 set-position -21.5 -68.2;
set n785 [$ns node]
$n785 set-position 41.9 117.1;
#Add GSL links
$n784 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n785 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp293 [new Agent/UDP]
$ns attach-agent $n784 $udp293
set pareto293 [new Application/Traffic/Pareto]
$pareto293 attach-agent $udp293
$pareto293 set packetSize_ 1000
$pareto293 set rate_ 224Kb
set null293 [new Agent/Null]
$ns attach-agent $n785 $null293
$ns connect $udp293 $null293
$ns at 0.71 "$pareto293 start"

#Background: 786 to 787
set n786 [$ns node]
$n786 set-position -3.1 -60.8;
set n787 [$ns node]
$n787 set-position 1.9 95.1;
#Add GSL links
$n786 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n787 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp294 [new Agent/UDP]
$ns attach-agent $n786 $udp294
set pareto294 [new Application/Traffic/Pareto]
$pareto294 attach-agent $udp294
$pareto294 set packetSize_ 1000
$pareto294 set rate_ 224Kb
set null294 [new Agent/Null]
$ns attach-agent $n787 $null294
$ns connect $udp294 $null294
$ns at 0.64 "$pareto294 start"

#Background: 788 to 789
set n788 [$ns node]
$n788 set-position -48.0 -55.7;
set n789 [$ns node]
$n789 set-position 21.9 94.9;
#Add GSL links
$n788 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n789 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp295 [new Agent/UDP]
$ns attach-agent $n788 $udp295
set pareto295 [new Application/Traffic/Pareto]
$pareto295 attach-agent $udp295
$pareto295 set packetSize_ 1000
$pareto295 set rate_ 224Kb
set null295 [new Agent/Null]
$ns attach-agent $n789 $null295
$ns connect $udp295 $null295
$ns at 0.65 "$pareto295 start"

#Background: 790 to 791
set n790 [$ns node]
$n790 set-position 46.3 24.9;
set n791 [$ns node]
$n791 set-position 29.1 -106.0;
#Add GSL links
$n790 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n791 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp296 [new Agent/UDP]
$ns attach-agent $n790 $udp296
set pareto296 [new Application/Traffic/Pareto]
$pareto296 attach-agent $udp296
$pareto296 set packetSize_ 1000
$pareto296 set rate_ 224Kb
set null296 [new Agent/Null]
$ns attach-agent $n791 $null296
$ns connect $udp296 $null296
$ns at 0.67 "$pareto296 start"

#Background: 792 to 793
set n792 [$ns node]
$n792 set-position 39.7 10.7;
set n793 [$ns node]
$n793 set-position 27.2 -76.1;
#Add GSL links
$n792 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n793 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp297 [new Agent/UDP]
$ns attach-agent $n792 $udp297
set pareto297 [new Application/Traffic/Pareto]
$pareto297 attach-agent $udp297
$pareto297 set packetSize_ 1000
$pareto297 set rate_ 224Kb
set null297 [new Agent/Null]
$ns attach-agent $n793 $null297
$ns connect $udp297 $null297
$ns at 0.61 "$pareto297 start"

#Background: 794 to 795
set n794 [$ns node]
$n794 set-position 58.4 11.1;
set n795 [$ns node]
$n795 set-position 39.7 -107.8;
#Add GSL links
$n794 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n795 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp298 [new Agent/UDP]
$ns attach-agent $n794 $udp298
set pareto298 [new Application/Traffic/Pareto]
$pareto298 attach-agent $udp298
$pareto298 set packetSize_ 1000
$pareto298 set rate_ 224Kb
set null298 [new Agent/Null]
$ns attach-agent $n795 $null298
$ns connect $udp298 $null298
$ns at 0.74 "$pareto298 start"

#Background: 796 to 797
set n796 [$ns node]
$n796 set-position 46.3 7.3;
set n797 [$ns node]
$n797 set-position 38.3 -90.9;
#Add GSL links
$n796 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n797 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp299 [new Agent/UDP]
$ns attach-agent $n796 $udp299
set pareto299 [new Application/Traffic/Pareto]
$pareto299 attach-agent $udp299
$pareto299 set packetSize_ 1000
$pareto299 set rate_ 224Kb
set null299 [new Agent/Null]
$ns attach-agent $n797 $null299
$ns connect $udp299 $null299
$ns at 0.65 "$pareto299 start"

#Background: 798 to 799
set n798 [$ns node]
$n798 set-position 35.1 24.4;
set n799 [$ns node]
$n799 set-position 31.8 -127.1;
#Add GSL links
$n798 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n799 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp300 [new Agent/UDP]
$ns attach-agent $n798 $udp300
set pareto300 [new Application/Traffic/Pareto]
$pareto300 attach-agent $udp300
$pareto300 set packetSize_ 1000
$pareto300 set rate_ 224Kb
set null300 [new Agent/Null]
$ns attach-agent $n799 $null300
$ns connect $udp300 $null300
$ns at 0.70 "$pareto300 start"

#Background: 800 to 801
set n800 [$ns node]
$n800 set-position 39.7 10.7;
set n801 [$ns node]
$n801 set-position 40.6 -96.3;
#Add GSL links
$n800 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n801 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp301 [new Agent/UDP]
$ns attach-agent $n800 $udp301
set pareto301 [new Application/Traffic/Pareto]
$pareto301 attach-agent $udp301
$pareto301 set packetSize_ 1000
$pareto301 set rate_ 224Kb
set null301 [new Agent/Null]
$ns attach-agent $n801 $null301
$ns connect $udp301 $null301
$ns at 0.00 "$pareto301 start"

#Background: 802 to 803
set n802 [$ns node]
$n802 set-position 59.1 7.9;
set n803 [$ns node]
$n803 set-position 43.8 -126.7;
#Add GSL links
$n802 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n803 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp302 [new Agent/UDP]
$ns attach-agent $n802 $udp302
set pareto302 [new Application/Traffic/Pareto]
$pareto302 attach-agent $udp302
$pareto302 set packetSize_ 1000
$pareto302 set rate_ 224Kb
set null302 [new Agent/Null]
$ns attach-agent $n803 $null302
$ns connect $udp302 $null302
$ns at 0.17 "$pareto302 start"

#Background: 804 to 805
set n804 [$ns node]
$n804 set-position 45.3 9.6;
set n805 [$ns node]
$n805 set-position 21.7 -65.6;
#Add GSL links
$n804 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n805 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp303 [new Agent/UDP]
$ns attach-agent $n804 $udp303
set pareto303 [new Application/Traffic/Pareto]
$pareto303 attach-agent $udp303
$pareto303 set packetSize_ 1000
$pareto303 set rate_ 224Kb
set null303 [new Agent/Null]
$ns attach-agent $n805 $null303
$ns connect $udp303 $null303
$ns at 0.57 "$pareto303 start"

#Background: 806 to 807
set n806 [$ns node]
$n806 set-position 50.4 3.9;
set n807 [$ns node]
$n807 set-position 56.0 -95.6;
#Add GSL links
$n806 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n807 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp304 [new Agent/UDP]
$ns attach-agent $n806 $udp304
set pareto304 [new Application/Traffic/Pareto]
$pareto304 attach-agent $udp304
$pareto304 set packetSize_ 1000
$pareto304 set rate_ 224Kb
set null304 [new Agent/Null]
$ns attach-agent $n807 $null304
$ns connect $udp304 $null304
$ns at 0.53 "$pareto304 start"

#Background: 808 to 809
set n808 [$ns node]
$n808 set-position 46.3 38.5;
set n809 [$ns node]
$n809 set-position 43.1 -58.3;
#Add GSL links
$n808 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n809 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp305 [new Agent/UDP]
$ns attach-agent $n808 $udp305
set pareto305 [new Application/Traffic/Pareto]
$pareto305 attach-agent $udp305
$pareto305 set packetSize_ 1000
$pareto305 set rate_ 224Kb
set null305 [new Agent/Null]
$ns attach-agent $n809 $null305
$ns connect $udp305 $null305
$ns at 0.68 "$pareto305 start"

#Background: 810 to 811
set n810 [$ns node]
$n810 set-position 45.7 4.0;
set n811 [$ns node]
$n811 set-position 38.3 -90.9;
#Add GSL links
$n810 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n811 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp306 [new Agent/UDP]
$ns attach-agent $n810 $udp306
set pareto306 [new Application/Traffic/Pareto]
$pareto306 attach-agent $udp306
$pareto306 set packetSize_ 1000
$pareto306 set rate_ 224Kb
set null306 [new Agent/Null]
$ns attach-agent $n811 $null306
$ns connect $udp306 $null306
$ns at 0.25 "$pareto306 start"

#Background: 812 to 813
set n812 [$ns node]
$n812 set-position 35.1 32.8;
set n813 [$ns node]
$n813 set-position 47.2 -58.8;
#Add GSL links
$n812 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n813 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp307 [new Agent/UDP]
$ns attach-agent $n812 $udp307
set pareto307 [new Application/Traffic/Pareto]
$pareto307 attach-agent $udp307
$pareto307 set packetSize_ 1000
$pareto307 set rate_ 224Kb
set null307 [new Agent/Null]
$ns attach-agent $n813 $null307
$ns connect $udp307 $null307
$ns at 0.10 "$pareto307 start"

#Background: 814 to 815
set n814 [$ns node]
$n814 set-position 45.7 4.0;
set n815 [$ns node]
$n815 set-position 57.8 -64.1;
#Add GSL links
$n814 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n815 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp308 [new Agent/UDP]
$ns attach-agent $n814 $udp308
set pareto308 [new Application/Traffic/Pareto]
$pareto308 attach-agent $udp308
$pareto308 set packetSize_ 1000
$pareto308 set rate_ 224Kb
set null308 [new Agent/Null]
$ns attach-agent $n815 $null308
$ns connect $udp308 $null308
$ns at 0.42 "$pareto308 start"

#Background: 816 to 817
set n816 [$ns node]
$n816 set-position 58.6 -1.4;
set n817 [$ns node]
$n817 set-position 27.2 -107.7;
#Add GSL links
$n816 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n817 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp309 [new Agent/UDP]
$ns attach-agent $n816 $udp309
set pareto309 [new Application/Traffic/Pareto]
$pareto309 attach-agent $udp309
$pareto309 set packetSize_ 1000
$pareto309 set rate_ 224Kb
set null309 [new Agent/Null]
$ns attach-agent $n817 $null309
$ns connect $udp309 $null309
$ns at 0.84 "$pareto309 start"

#Background: 818 to 819
set n818 [$ns node]
$n818 set-position 49.8 27.4;
set n819 [$ns node]
$n819 set-position 22.7 -64.6;
#Add GSL links
$n818 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n819 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp310 [new Agent/UDP]
$ns attach-agent $n818 $udp310
set pareto310 [new Application/Traffic/Pareto]
$pareto310 attach-agent $udp310
$pareto310 set packetSize_ 1000
$pareto310 set rate_ 224Kb
set null310 [new Agent/Null]
$ns attach-agent $n819 $null310
$ns connect $udp310 $null310
$ns at 0.37 "$pareto310 start"

#Background: 820 to 821
set n820 [$ns node]
$n820 set-position 50.1 25.4;
set n821 [$ns node]
$n821 set-position 44.5 -116.3;
#Add GSL links
$n820 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n821 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp311 [new Agent/UDP]
$ns attach-agent $n820 $udp311
set pareto311 [new Application/Traffic/Pareto]
$pareto311 attach-agent $udp311
$pareto311 set packetSize_ 1000
$pareto311 set rate_ 224Kb
set null311 [new Agent/Null]
$ns attach-agent $n821 $null311
$ns connect $udp311 $null311
$ns at 0.29 "$pareto311 start"

#Background: 822 to 823
set n822 [$ns node]
$n822 set-position 43.5 0.3;
set n823 [$ns node]
$n823 set-position 30.1 -71.4;
#Add GSL links
$n822 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n823 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp312 [new Agent/UDP]
$ns attach-agent $n822 $udp312
set pareto312 [new Application/Traffic/Pareto]
$pareto312 attach-agent $udp312
$pareto312 set packetSize_ 1000
$pareto312 set rate_ 224Kb
set null312 [new Agent/Null]
$ns attach-agent $n823 $null312
$ns connect $udp312 $null312
$ns at 0.48 "$pareto312 start"

#Background: 824 to 825
set n824 [$ns node]
$n824 set-position 57.6 22.5;
set n825 [$ns node]
$n825 set-position 59.4 -83.2;
#Add GSL links
$n824 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n825 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp313 [new Agent/UDP]
$ns attach-agent $n824 $udp313
set pareto313 [new Application/Traffic/Pareto]
$pareto313 attach-agent $udp313
$pareto313 set packetSize_ 1000
$pareto313 set rate_ 224Kb
set null313 [new Agent/Null]
$ns attach-agent $n825 $null313
$ns connect $udp313 $null313
$ns at 0.22 "$pareto313 start"

#Background: 826 to 827
set n826 [$ns node]
$n826 set-position 47.2 25.9;
set n827 [$ns node]
$n827 set-position 38.3 -126.6;
#Add GSL links
$n826 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n827 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp314 [new Agent/UDP]
$ns attach-agent $n826 $udp314
set pareto314 [new Application/Traffic/Pareto]
$pareto314 attach-agent $udp314
$pareto314 set packetSize_ 1000
$pareto314 set rate_ 224Kb
set null314 [new Agent/Null]
$ns attach-agent $n827 $null314
$ns connect $udp314 $null314
$ns at 0.46 "$pareto314 start"

#Background: 828 to 829
set n828 [$ns node]
$n828 set-position 51.6 37.7;
set n829 [$ns node]
$n829 set-position 51.4 -126.1;
#Add GSL links
$n828 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n829 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp315 [new Agent/UDP]
$ns attach-agent $n828 $udp315
set pareto315 [new Application/Traffic/Pareto]
$pareto315 attach-agent $udp315
$pareto315 set packetSize_ 1000
$pareto315 set rate_ 224Kb
set null315 [new Agent/Null]
$ns attach-agent $n829 $null315
$ns connect $udp315 $null315
$ns at 0.97 "$pareto315 start"

#Background: 830 to 831
set n830 [$ns node]
$n830 set-position 51.6 37.7;
set n831 [$ns node]
$n831 set-position 29.9 -89.3;
#Add GSL links
$n830 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n831 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp316 [new Agent/UDP]
$ns attach-agent $n830 $udp316
set pareto316 [new Application/Traffic/Pareto]
$pareto316 attach-agent $udp316
$pareto316 set packetSize_ 1000
$pareto316 set rate_ 224Kb
set null316 [new Agent/Null]
$ns attach-agent $n831 $null316
$ns connect $udp316 $null316
$ns at 0.99 "$pareto316 start"

#Background: 832 to 833
set n832 [$ns node]
$n832 set-position 35.1 32.8;
set n833 [$ns node]
$n833 set-position 29.9 -89.3;
#Add GSL links
$n832 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n833 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp317 [new Agent/UDP]
$ns attach-agent $n832 $udp317
set pareto317 [new Application/Traffic/Pareto]
$pareto317 attach-agent $udp317
$pareto317 set packetSize_ 1000
$pareto317 set rate_ 224Kb
set null317 [new Agent/Null]
$ns attach-agent $n833 $null317
$ns connect $udp317 $null317
$ns at 0.52 "$pareto317 start"

#Background: 834 to 835
set n834 [$ns node]
$n834 set-position 59.1 7.9;
set n835 [$ns node]
$n835 set-position 58.2 -115.5;
#Add GSL links
$n834 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n835 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp318 [new Agent/UDP]
$ns attach-agent $n834 $udp318
set pareto318 [new Application/Traffic/Pareto]
$pareto318 attach-agent $udp318
$pareto318 set packetSize_ 1000
$pareto318 set rate_ 224Kb
set null318 [new Agent/Null]
$ns attach-agent $n835 $null318
$ns connect $udp318 $null318
$ns at 0.12 "$pareto318 start"

#Background: 836 to 837
set n836 [$ns node]
$n836 set-position 58.6 32.8;
set n837 [$ns node]
$n837 set-position 41.1 -124.6;
#Add GSL links
$n836 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n837 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp319 [new Agent/UDP]
$ns attach-agent $n836 $udp319
set pareto319 [new Application/Traffic/Pareto]
$pareto319 attach-agent $udp319
$pareto319 set packetSize_ 1000
$pareto319 set rate_ 224Kb
set null319 [new Agent/Null]
$ns attach-agent $n837 $null319
$ns connect $udp319 $null319
$ns at 0.32 "$pareto319 start"

#Background: 838 to 839
set n838 [$ns node]
$n838 set-position 46.3 38.5;
set n839 [$ns node]
$n839 set-position 12.2 -77.0;
#Add GSL links
$n838 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n839 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp320 [new Agent/UDP]
$ns attach-agent $n838 $udp320
set pareto320 [new Application/Traffic/Pareto]
$pareto320 attach-agent $udp320
$pareto320 set packetSize_ 1000
$pareto320 set rate_ 224Kb
set null320 [new Agent/Null]
$ns attach-agent $n839 $null320
$ns connect $udp320 $null320
$ns at 0.45 "$pareto320 start"

#Background: 840 to 841
set n840 [$ns node]
$n840 set-position 44.7 7.3;
set n841 [$ns node]
$n841 set-position 9.3 -76.5;
#Add GSL links
$n840 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n841 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp321 [new Agent/UDP]
$ns attach-agent $n840 $udp321
set pareto321 [new Application/Traffic/Pareto]
$pareto321 attach-agent $udp321
$pareto321 set packetSize_ 1000
$pareto321 set rate_ 224Kb
set null321 [new Agent/Null]
$ns attach-agent $n841 $null321
$ns connect $udp321 $null321
$ns at 0.80 "$pareto321 start"

#Background: 842 to 843
set n842 [$ns node]
$n842 set-position 39.5 28.7;
set n843 [$ns node]
$n843 set-position -38.7 -76.9;
#Add GSL links
$n842 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n843 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp322 [new Agent/UDP]
$ns attach-agent $n842 $udp322
set pareto322 [new Application/Traffic/Pareto]
$pareto322 attach-agent $udp322
$pareto322 set packetSize_ 1000
$pareto322 set rate_ 224Kb
set null322 [new Agent/Null]
$ns attach-agent $n843 $null322
$ns connect $udp322 $null322
$ns at 0.38 "$pareto322 start"

#Background: 844 to 845
set n844 [$ns node]
$n844 set-position 45.9 -5.2;
set n845 [$ns node]
$n845 set-position -29.5 -57.4;
#Add GSL links
$n844 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n845 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp323 [new Agent/UDP]
$ns attach-agent $n844 $udp323
set pareto323 [new Application/Traffic/Pareto]
$pareto323 attach-agent $udp323
$pareto323 set packetSize_ 1000
$pareto323 set rate_ 224Kb
set null323 [new Agent/Null]
$ns attach-agent $n845 $null323
$ns connect $udp323 $null323
$ns at 0.76 "$pareto323 start"

#Background: 846 to 847
set n846 [$ns node]
$n846 set-position 44.7 7.3;
set n847 [$ns node]
$n847 set-position 2.2 -52.4;
#Add GSL links
$n846 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n847 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp324 [new Agent/UDP]
$ns attach-agent $n846 $udp324
set pareto324 [new Application/Traffic/Pareto]
$pareto324 attach-agent $udp324
$pareto324 set packetSize_ 1000
$pareto324 set rate_ 224Kb
set null324 [new Agent/Null]
$ns attach-agent $n847 $null324
$ns connect $udp324 $null324
$ns at 0.67 "$pareto324 start"

#Background: 848 to 849
set n848 [$ns node]
$n848 set-position 43.4 18.7;
set n849 [$ns node]
$n849 set-position -41.5 -72.0;
#Add GSL links
$n848 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n849 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp325 [new Agent/UDP]
$ns attach-agent $n848 $udp325
set pareto325 [new Application/Traffic/Pareto]
$pareto325 attach-agent $udp325
$pareto325 set packetSize_ 1000
$pareto325 set rate_ 224Kb
set null325 [new Agent/Null]
$ns attach-agent $n849 $null325
$ns connect $udp325 $null325
$ns at 0.79 "$pareto325 start"

#Background: 850 to 851
set n850 [$ns node]
$n850 set-position 58.1 0.9;
set n851 [$ns node]
$n851 set-position 35.1 24.4;
#Add GSL links
$n850 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n851 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp326 [new Agent/UDP]
$ns attach-agent $n850 $udp326
set pareto326 [new Application/Traffic/Pareto]
$pareto326 attach-agent $udp326
$pareto326 set packetSize_ 1000
$pareto326 set rate_ 224Kb
set null326 [new Agent/Null]
$ns attach-agent $n851 $null326
$ns connect $udp326 $null326
$ns at 0.24 "$pareto326 start"

#Background: 852 to 853
set n852 [$ns node]
$n852 set-position 46.1 10.3;
set n853 [$ns node]
$n853 set-position 35.1 23.8;
#Add GSL links
$n852 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n853 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp327 [new Agent/UDP]
$ns attach-agent $n852 $udp327
set pareto327 [new Application/Traffic/Pareto]
$pareto327 attach-agent $udp327
$pareto327 set packetSize_ 1000
$pareto327 set rate_ 224Kb
set null327 [new Agent/Null]
$ns attach-agent $n853 $null327
$ns connect $udp327 $null327
$ns at 0.21 "$pareto327 start"

#Background: 854 to 855
set n854 [$ns node]
$n854 set-position 44.4 26.7;
set n855 [$ns node]
$n855 set-position 51.6 37.7;
#Add GSL links
$n854 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n855 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp328 [new Agent/UDP]
$ns attach-agent $n854 $udp328
set pareto328 [new Application/Traffic/Pareto]
$pareto328 attach-agent $udp328
$pareto328 set packetSize_ 1000
$pareto328 set rate_ 224Kb
set null328 [new Agent/Null]
$ns attach-agent $n855 $null328
$ns connect $udp328 $null328
$ns at 0.32 "$pareto328 start"

#Background: 856 to 857
set n856 [$ns node]
$n856 set-position 46.1 -0.4;
set n857 [$ns node]
$n857 set-position 46.3 7.3;
#Add GSL links
$n856 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n857 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp329 [new Agent/UDP]
$ns attach-agent $n856 $udp329
set pareto329 [new Application/Traffic/Pareto]
$pareto329 attach-agent $udp329
$pareto329 set packetSize_ 1000
$pareto329 set rate_ 224Kb
set null329 [new Agent/Null]
$ns attach-agent $n857 $null329
$ns connect $udp329 $null329
$ns at 0.31 "$pareto329 start"

#Background: 858 to 859
set n858 [$ns node]
$n858 set-position 46.1 37.9;
set n859 [$ns node]
$n859 set-position 35.1 24.4;
#Add GSL links
$n858 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n859 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp330 [new Agent/UDP]
$ns attach-agent $n858 $udp330
set pareto330 [new Application/Traffic/Pareto]
$pareto330 attach-agent $udp330
$pareto330 set packetSize_ 1000
$pareto330 set rate_ 224Kb
set null330 [new Agent/Null]
$ns attach-agent $n859 $null330
$ns connect $udp330 $null330
$ns at 0.36 "$pareto330 start"

#Background: 860 to 861
set n860 [$ns node]
$n860 set-position 59.1 7.9;
set n861 [$ns node]
$n861 set-position 41.2 -5.2;
#Add GSL links
$n860 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n861 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp331 [new Agent/UDP]
$ns attach-agent $n860 $udp331
set pareto331 [new Application/Traffic/Pareto]
$pareto331 attach-agent $udp331
$pareto331 set packetSize_ 1000
$pareto331 set rate_ 224Kb
set null331 [new Agent/Null]
$ns attach-agent $n861 $null331
$ns connect $udp331 $null331
$ns at 0.64 "$pareto331 start"

#Background: 862 to 863
set n862 [$ns node]
$n862 set-position 58.4 11.1;
set n863 [$ns node]
$n863 set-position 51.7 7.8;
#Add GSL links
$n862 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n863 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp332 [new Agent/UDP]
$ns attach-agent $n862 $udp332
set pareto332 [new Application/Traffic/Pareto]
$pareto332 attach-agent $udp332
$pareto332 set packetSize_ 1000
$pareto332 set rate_ 224Kb
set null332 [new Agent/Null]
$ns attach-agent $n863 $null332
$ns connect $udp332 $null332
$ns at 0.67 "$pareto332 start"

#Background: 864 to 865
set n864 [$ns node]
$n864 set-position 46.1 37.9;
set n865 [$ns node]
$n865 set-position 49.8 27.4;
#Add GSL links
$n864 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n865 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp333 [new Agent/UDP]
$ns attach-agent $n864 $udp333
set pareto333 [new Application/Traffic/Pareto]
$pareto333 attach-agent $udp333
$pareto333 set packetSize_ 1000
$pareto333 set rate_ 224Kb
set null333 [new Agent/Null]
$ns attach-agent $n865 $null333
$ns connect $udp333 $null333
$ns at 0.15 "$pareto333 start"

#Background: 866 to 867
set n866 [$ns node]
$n866 set-position 48.4 -8.7;
set n867 [$ns node]
$n867 set-position 46.1 10.3;
#Add GSL links
$n866 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n867 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp334 [new Agent/UDP]
$ns attach-agent $n866 $udp334
set pareto334 [new Application/Traffic/Pareto]
$pareto334 attach-agent $udp334
$pareto334 set packetSize_ 1000
$pareto334 set rate_ 224Kb
set null334 [new Agent/Null]
$ns attach-agent $n867 $null334
$ns connect $udp334 $null334
$ns at 0.65 "$pareto334 start"

#Background: 868 to 869
set n868 [$ns node]
$n868 set-position 46.1 -0.4;
set n869 [$ns node]
$n869 set-position 35.1 23.8;
#Add GSL links
$n868 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n869 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp335 [new Agent/UDP]
$ns attach-agent $n868 $udp335
set pareto335 [new Application/Traffic/Pareto]
$pareto335 attach-agent $udp335
$pareto335 set packetSize_ 1000
$pareto335 set rate_ 224Kb
set null335 [new Agent/Null]
$ns attach-agent $n869 $null335
$ns connect $udp335 $null335
$ns at 0.69 "$pareto335 start"

#Background: 870 to 871
set n870 [$ns node]
$n870 set-position 35.1 32.8;
set n871 [$ns node]
$n871 set-position 59.5 29.9;
#Add GSL links
$n870 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n871 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp336 [new Agent/UDP]
$ns attach-agent $n870 $udp336
set pareto336 [new Application/Traffic/Pareto]
$pareto336 attach-agent $udp336
$pareto336 set packetSize_ 1000
$pareto336 set rate_ 224Kb
set null336 [new Agent/Null]
$ns attach-agent $n871 $null336
$ns connect $udp336 $null336
$ns at 0.01 "$pareto336 start"

#Background: 872 to 873
set n872 [$ns node]
$n872 set-position 58.6 32.8;
set n873 [$ns node]
$n873 set-position 51.0 -5.5;
#Add GSL links
$n872 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n873 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp337 [new Agent/UDP]
$ns attach-agent $n872 $udp337
set pareto337 [new Application/Traffic/Pareto]
$pareto337 attach-agent $udp337
$pareto337 set packetSize_ 1000
$pareto337 set rate_ 224Kb
set null337 [new Agent/Null]
$ns attach-agent $n873 $null337
$ns connect $udp337 $null337
$ns at 0.34 "$pareto337 start"

#Background: 874 to 875
set n874 [$ns node]
$n874 set-position 46.1 37.9;
set n875 [$ns node]
$n875 set-position 43.5 0.3;
#Add GSL links
$n874 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n875 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp338 [new Agent/UDP]
$ns attach-agent $n874 $udp338
set pareto338 [new Application/Traffic/Pareto]
$pareto338 attach-agent $udp338
$pareto338 set packetSize_ 1000
$pareto338 set rate_ 224Kb
set null338 [new Agent/Null]
$ns attach-agent $n875 $null338
$ns connect $udp338 $null338
$ns at 0.81 "$pareto338 start"

#Background: 876 to 877
set n876 [$ns node]
$n876 set-position 43.2 14.3;
set n877 [$ns node]
$n877 set-position 58.6 -1.4;
#Add GSL links
$n876 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n877 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp339 [new Agent/UDP]
$ns attach-agent $n876 $udp339
set pareto339 [new Application/Traffic/Pareto]
$pareto339 attach-agent $udp339
$pareto339 set packetSize_ 1000
$pareto339 set rate_ 224Kb
set null339 [new Agent/Null]
$ns attach-agent $n877 $null339
$ns connect $udp339 $null339
$ns at 0.80 "$pareto339 start"

#Background: 878 to 879
set n878 [$ns node]
$n878 set-position 46.1 -0.4;
set n879 [$ns node]
$n879 set-position 58.1 0.9;
#Add GSL links
$n878 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n879 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp340 [new Agent/UDP]
$ns attach-agent $n878 $udp340
set pareto340 [new Application/Traffic/Pareto]
$pareto340 attach-agent $udp340
$pareto340 set packetSize_ 1000
$pareto340 set rate_ 224Kb
set null340 [new Agent/Null]
$ns attach-agent $n879 $null340
$ns connect $udp340 $null340
$ns at 0.72 "$pareto340 start"

#Background: 880 to 881
set n880 [$ns node]
$n880 set-position 51.7 7.8;
set n881 [$ns node]
$n881 set-position 58.6 -1.4;
#Add GSL links
$n880 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n881 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp341 [new Agent/UDP]
$ns attach-agent $n880 $udp341
set pareto341 [new Application/Traffic/Pareto]
$pareto341 attach-agent $udp341
$pareto341 set packetSize_ 1000
$pareto341 set rate_ 224Kb
set null341 [new Agent/Null]
$ns attach-agent $n881 $null341
$ns connect $udp341 $null341
$ns at 0.90 "$pareto341 start"

#Background: 882 to 883
set n882 [$ns node]
$n882 set-position 45.7 4.0;
set n883 [$ns node]
$n883 set-position 51.6 37.7;
#Add GSL links
$n882 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n883 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp342 [new Agent/UDP]
$ns attach-agent $n882 $udp342
set pareto342 [new Application/Traffic/Pareto]
$pareto342 attach-agent $udp342
$pareto342 set packetSize_ 1000
$pareto342 set rate_ 224Kb
set null342 [new Agent/Null]
$ns attach-agent $n883 $null342
$ns connect $udp342 $null342
$ns at 0.68 "$pareto342 start"

#Background: 884 to 885
set n884 [$ns node]
$n884 set-position 45.7 4.0;
set n885 [$ns node]
$n885 set-position 35.1 24.4;
#Add GSL links
$n884 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n885 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp343 [new Agent/UDP]
$ns attach-agent $n884 $udp343
set pareto343 [new Application/Traffic/Pareto]
$pareto343 attach-agent $udp343
$pareto343 set packetSize_ 1000
$pareto343 set rate_ 224Kb
set null343 [new Agent/Null]
$ns attach-agent $n885 $null343
$ns connect $udp343 $null343
$ns at 0.53 "$pareto343 start"

#Background: 886 to 887
set n886 [$ns node]
$n886 set-position 44.4 26.7;
set n887 [$ns node]
$n887 set-position 45.7 4.0;
#Add GSL links
$n886 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n887 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp344 [new Agent/UDP]
$ns attach-agent $n886 $udp344
set pareto344 [new Application/Traffic/Pareto]
$pareto344 attach-agent $udp344
$pareto344 set packetSize_ 1000
$pareto344 set rate_ 224Kb
set null344 [new Agent/Null]
$ns attach-agent $n887 $null344
$ns connect $udp344 $null344
$ns at 0.69 "$pareto344 start"

#Background: 888 to 889
set n888 [$ns node]
$n888 set-position 58.1 0.9;
set n889 [$ns node]
$n889 set-position 45.8 30.6;
#Add GSL links
$n888 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n889 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp345 [new Agent/UDP]
$ns attach-agent $n888 $udp345
set pareto345 [new Application/Traffic/Pareto]
$pareto345 attach-agent $udp345
$pareto345 set packetSize_ 1000
$pareto345 set rate_ 224Kb
set null345 [new Agent/Null]
$ns attach-agent $n889 $null345
$ns connect $udp345 $null345
$ns at 0.14 "$pareto345 start"

#Background: 890 to 891
set n890 [$ns node]
$n890 set-position 39.5 28.7;
set n891 [$ns node]
$n891 set-position 45.8 30.6;
#Add GSL links
$n890 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n891 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp346 [new Agent/UDP]
$ns attach-agent $n890 $udp346
set pareto346 [new Application/Traffic/Pareto]
$pareto346 attach-agent $udp346
$pareto346 set packetSize_ 1000
$pareto346 set rate_ 224Kb
set null346 [new Agent/Null]
$ns attach-agent $n891 $null346
$ns connect $udp346 $null346
$ns at 0.84 "$pareto346 start"

#Background: 892 to 893
set n892 [$ns node]
$n892 set-position 35.1 24.4;
set n893 [$ns node]
$n893 set-position 53.9 15.2;
#Add GSL links
$n892 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n893 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp347 [new Agent/UDP]
$ns attach-agent $n892 $udp347
set pareto347 [new Application/Traffic/Pareto]
$pareto347 attach-agent $udp347
$pareto347 set packetSize_ 1000
$pareto347 set rate_ 224Kb
set null347 [new Agent/Null]
$ns attach-agent $n893 $null347
$ns connect $udp347 $null347
$ns at 0.30 "$pareto347 start"

#Background: 894 to 895
set n894 [$ns node]
$n894 set-position 48.3 33.1;
set n895 [$ns node]
$n895 set-position 51.6 20.0;
#Add GSL links
$n894 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n895 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp348 [new Agent/UDP]
$ns attach-agent $n894 $udp348
set pareto348 [new Application/Traffic/Pareto]
$pareto348 attach-agent $udp348
$pareto348 set packetSize_ 1000
$pareto348 set rate_ 224Kb
set null348 [new Agent/Null]
$ns attach-agent $n895 $null348
$ns connect $udp348 $null348
$ns at 0.57 "$pareto348 start"

#Background: 896 to 897
set n896 [$ns node]
$n896 set-position 36.0 34.5;
set n897 [$ns node]
$n897 set-position 51.0 -5.5;
#Add GSL links
$n896 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n897 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp349 [new Agent/UDP]
$ns attach-agent $n896 $udp349
set pareto349 [new Application/Traffic/Pareto]
$pareto349 attach-agent $udp349
$pareto349 set packetSize_ 1000
$pareto349 set rate_ 224Kb
set null349 [new Agent/Null]
$ns attach-agent $n897 $null349
$ns connect $udp349 $null349
$ns at 0.25 "$pareto349 start"

#Background: 898 to 899
set n898 [$ns node]
$n898 set-position 46.3 38.5;
set n899 [$ns node]
$n899 set-position 46.3 24.9;
#Add GSL links
$n898 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n899 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp350 [new Agent/UDP]
$ns attach-agent $n898 $udp350
set pareto350 [new Application/Traffic/Pareto]
$pareto350 attach-agent $udp350
$pareto350 set packetSize_ 1000
$pareto350 set rate_ 224Kb
set null350 [new Agent/Null]
$ns attach-agent $n899 $null350
$ns connect $udp350 $null350
$ns at 0.71 "$pareto350 start"

#Background: 900 to 901
set n900 [$ns node]
$n900 set-position 46.8 7.8;
set n901 [$ns node]
$n901 set-position 43.6 22.0;
#Add GSL links
$n900 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n901 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp351 [new Agent/UDP]
$ns attach-agent $n900 $udp351
set pareto351 [new Application/Traffic/Pareto]
$pareto351 attach-agent $udp351
$pareto351 set packetSize_ 1000
$pareto351 set rate_ 224Kb
set null351 [new Agent/Null]
$ns attach-agent $n901 $null351
$ns connect $udp351 $null351
$ns at 0.91 "$pareto351 start"

#Background: 902 to 903
set n902 [$ns node]
$n902 set-position 50.1 25.4;
set n903 [$ns node]
$n903 set-position 59.1 7.9;
#Add GSL links
$n902 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n903 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp352 [new Agent/UDP]
$ns attach-agent $n902 $udp352
set pareto352 [new Application/Traffic/Pareto]
$pareto352 attach-agent $udp352
$pareto352 set packetSize_ 1000
$pareto352 set rate_ 224Kb
set null352 [new Agent/Null]
$ns attach-agent $n903 $null352
$ns connect $udp352 $null352
$ns at 0.18 "$pareto352 start"

#Background: 904 to 905
set n904 [$ns node]
$n904 set-position 50.1 25.4;
set n905 [$ns node]
$n905 set-position 43.5 0.3;
#Add GSL links
$n904 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n905 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp353 [new Agent/UDP]
$ns attach-agent $n904 $udp353
set pareto353 [new Application/Traffic/Pareto]
$pareto353 attach-agent $udp353
$pareto353 set packetSize_ 1000
$pareto353 set rate_ 224Kb
set null353 [new Agent/Null]
$ns attach-agent $n905 $null353
$ns connect $udp353 $null353
$ns at 0.38 "$pareto353 start"

#Background: 906 to 907
set n906 [$ns node]
$n906 set-position 58.6 -1.4;
set n907 [$ns node]
$n907 set-position 51.6 20.0;
#Add GSL links
$n906 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n907 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp354 [new Agent/UDP]
$ns attach-agent $n906 $udp354
set pareto354 [new Application/Traffic/Pareto]
$pareto354 attach-agent $udp354
$pareto354 set packetSize_ 1000
$pareto354 set rate_ 224Kb
set null354 [new Agent/Null]
$ns attach-agent $n907 $null354
$ns connect $udp354 $null354
$ns at 0.31 "$pareto354 start"

#Background: 908 to 909
set n908 [$ns node]
$n908 set-position 43.2 14.3;
set n909 [$ns node]
$n909 set-position 46.1 -0.4;
#Add GSL links
$n908 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n909 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp355 [new Agent/UDP]
$ns attach-agent $n908 $udp355
set pareto355 [new Application/Traffic/Pareto]
$pareto355 attach-agent $udp355
$pareto355 set packetSize_ 1000
$pareto355 set rate_ 224Kb
set null355 [new Agent/Null]
$ns attach-agent $n909 $null355
$ns connect $udp355 $null355
$ns at 0.66 "$pareto355 start"

#Background: 910 to 911
set n910 [$ns node]
$n910 set-position 58.6 32.8;
set n911 [$ns node]
$n911 set-position 46.8 7.8;
#Add GSL links
$n910 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n911 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp356 [new Agent/UDP]
$ns attach-agent $n910 $udp356
set pareto356 [new Application/Traffic/Pareto]
$pareto356 attach-agent $udp356
$pareto356 set packetSize_ 1000
$pareto356 set rate_ 224Kb
set null356 [new Agent/Null]
$ns attach-agent $n911 $null356
$ns connect $udp356 $null356
$ns at 0.72 "$pareto356 start"

#Background: 912 to 913
set n912 [$ns node]
$n912 set-position 46.3 38.5;
set n913 [$ns node]
$n913 set-position 55.1 10.5;
#Add GSL links
$n912 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n913 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp357 [new Agent/UDP]
$ns attach-agent $n912 $udp357
set pareto357 [new Application/Traffic/Pareto]
$pareto357 attach-agent $udp357
$pareto357 set packetSize_ 1000
$pareto357 set rate_ 224Kb
set null357 [new Agent/Null]
$ns attach-agent $n913 $null357
$ns connect $udp357 $null357
$ns at 0.23 "$pareto357 start"

#Background: 914 to 915
set n914 [$ns node]
$n914 set-position 59.2 8.9;
set n915 [$ns node]
$n915 set-position 36.0 34.5;
#Add GSL links
$n914 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n915 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp358 [new Agent/UDP]
$ns attach-agent $n914 $udp358
set pareto358 [new Application/Traffic/Pareto]
$pareto358 attach-agent $udp358
$pareto358 set packetSize_ 1000
$pareto358 set rate_ 224Kb
set null358 [new Agent/Null]
$ns attach-agent $n915 $null358
$ns connect $udp358 $null358
$ns at 0.91 "$pareto358 start"

#Background: 916 to 917
set n916 [$ns node]
$n916 set-position 44.4 26.7;
set n917 [$ns node]
$n917 set-position 51.6 37.7;
#Add GSL links
$n916 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n917 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp359 [new Agent/UDP]
$ns attach-agent $n916 $udp359
set pareto359 [new Application/Traffic/Pareto]
$pareto359 attach-agent $udp359
$pareto359 set packetSize_ 1000
$pareto359 set rate_ 224Kb
set null359 [new Agent/Null]
$ns attach-agent $n917 $null359
$ns connect $udp359 $null359
$ns at 0.09 "$pareto359 start"

#Background: 918 to 919
set n918 [$ns node]
$n918 set-position 56.3 16.2;
set n919 [$ns node]
$n919 set-position 51.6 37.7;
#Add GSL links
$n918 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n919 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp360 [new Agent/UDP]
$ns attach-agent $n918 $udp360
set pareto360 [new Application/Traffic/Pareto]
$pareto360 attach-agent $udp360
$pareto360 set packetSize_ 1000
$pareto360 set rate_ 224Kb
set null360 [new Agent/Null]
$ns attach-agent $n919 $null360
$ns connect $udp360 $null360
$ns at 0.60 "$pareto360 start"

#Background: 920 to 921
set n920 [$ns node]
$n920 set-position 46.3 38.5;
set n921 [$ns node]
$n921 set-position 39.5 28.7;
#Add GSL links
$n920 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n921 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp361 [new Agent/UDP]
$ns attach-agent $n920 $udp361
set pareto361 [new Application/Traffic/Pareto]
$pareto361 attach-agent $udp361
$pareto361 set packetSize_ 1000
$pareto361 set rate_ 224Kb
set null361 [new Agent/Null]
$ns attach-agent $n921 $null361
$ns connect $udp361 $null361
$ns at 0.29 "$pareto361 start"

#Background: 922 to 923
set n922 [$ns node]
$n922 set-position 43.2 22.3;
set n923 [$ns node]
$n923 set-position 59.2 8.9;
#Add GSL links
$n922 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n923 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp362 [new Agent/UDP]
$ns attach-agent $n922 $udp362
set pareto362 [new Application/Traffic/Pareto]
$pareto362 attach-agent $udp362
$pareto362 set packetSize_ 1000
$pareto362 set rate_ 224Kb
set null362 [new Agent/Null]
$ns attach-agent $n923 $null362
$ns connect $udp362 $null362
$ns at 0.32 "$pareto362 start"

#Background: 924 to 925
set n924 [$ns node]
$n924 set-position 43.6 22.0;
set n925 [$ns node]
$n925 set-position 46.1 37.9;
#Add GSL links
$n924 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n925 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp363 [new Agent/UDP]
$ns attach-agent $n924 $udp363
set pareto363 [new Application/Traffic/Pareto]
$pareto363 attach-agent $udp363
$pareto363 set packetSize_ 1000
$pareto363 set rate_ 224Kb
set null363 [new Agent/Null]
$ns attach-agent $n925 $null363
$ns connect $udp363 $null363
$ns at 0.87 "$pareto363 start"

#Background: 926 to 927
set n926 [$ns node]
$n926 set-position 36.0 34.5;
set n927 [$ns node]
$n927 set-position 45.8 30.6;
#Add GSL links
$n926 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n927 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp364 [new Agent/UDP]
$ns attach-agent $n926 $udp364
set pareto364 [new Application/Traffic/Pareto]
$pareto364 attach-agent $udp364
$pareto364 set packetSize_ 1000
$pareto364 set rate_ 224Kb
set null364 [new Agent/Null]
$ns attach-agent $n927 $null364
$ns connect $udp364 $null364
$ns at 0.63 "$pareto364 start"

#Background: 928 to 929
set n928 [$ns node]
$n928 set-position 43.2 22.3;
set n929 [$ns node]
$n929 set-position 58.6 32.8;
#Add GSL links
$n928 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n929 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp365 [new Agent/UDP]
$ns attach-agent $n928 $udp365
set pareto365 [new Application/Traffic/Pareto]
$pareto365 attach-agent $udp365
$pareto365 set packetSize_ 1000
$pareto365 set rate_ 224Kb
set null365 [new Agent/Null]
$ns attach-agent $n929 $null365
$ns connect $udp365 $null365
$ns at 0.77 "$pareto365 start"

#Background: 930 to 931
set n930 [$ns node]
$n930 set-position 43.6 22.0;
set n931 [$ns node]
$n931 set-position 58.6 -1.4;
#Add GSL links
$n930 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n931 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp366 [new Agent/UDP]
$ns attach-agent $n930 $udp366
set pareto366 [new Application/Traffic/Pareto]
$pareto366 attach-agent $udp366
$pareto366 set packetSize_ 1000
$pareto366 set rate_ 224Kb
set null366 [new Agent/Null]
$ns attach-agent $n931 $null366
$ns connect $udp366 $null366
$ns at 0.49 "$pareto366 start"

#Background: 932 to 933
set n932 [$ns node]
$n932 set-position 46.1 -0.4;
set n933 [$ns node]
$n933 set-position 58.6 -1.4;
#Add GSL links
$n932 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n933 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp367 [new Agent/UDP]
$ns attach-agent $n932 $udp367
set pareto367 [new Application/Traffic/Pareto]
$pareto367 attach-agent $udp367
$pareto367 set packetSize_ 1000
$pareto367 set rate_ 224Kb
set null367 [new Agent/Null]
$ns attach-agent $n933 $null367
$ns connect $udp367 $null367
$ns at 0.30 "$pareto367 start"

#Background: 934 to 935
set n934 [$ns node]
$n934 set-position 43.4 18.7;
set n935 [$ns node]
$n935 set-position 44.7 7.3;
#Add GSL links
$n934 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n935 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp368 [new Agent/UDP]
$ns attach-agent $n934 $udp368
set pareto368 [new Application/Traffic/Pareto]
$pareto368 attach-agent $udp368
$pareto368 set packetSize_ 1000
$pareto368 set rate_ 224Kb
set null368 [new Agent/Null]
$ns attach-agent $n935 $null368
$ns connect $udp368 $null368
$ns at 0.58 "$pareto368 start"

#Background: 936 to 937
set n936 [$ns node]
$n936 set-position 46.3 7.3;
set n937 [$ns node]
$n937 set-position 43.2 14.3;
#Add GSL links
$n936 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n937 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp369 [new Agent/UDP]
$ns attach-agent $n936 $udp369
set pareto369 [new Application/Traffic/Pareto]
$pareto369 attach-agent $udp369
$pareto369 set packetSize_ 1000
$pareto369 set rate_ 224Kb
set null369 [new Agent/Null]
$ns attach-agent $n937 $null369
$ns connect $udp369 $null369
$ns at 0.65 "$pareto369 start"

#Background: 938 to 939
set n938 [$ns node]
$n938 set-position 35.1 24.4;
set n939 [$ns node]
$n939 set-position 46.1 10.3;
#Add GSL links
$n938 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n939 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp370 [new Agent/UDP]
$ns attach-agent $n938 $udp370
set pareto370 [new Application/Traffic/Pareto]
$pareto370 attach-agent $udp370
$pareto370 set packetSize_ 1000
$pareto370 set rate_ 224Kb
set null370 [new Agent/Null]
$ns attach-agent $n939 $null370
$ns connect $udp370 $null370
$ns at 0.80 "$pareto370 start"

#Background: 940 to 941
set n940 [$ns node]
$n940 set-position 55.1 10.5;
set n941 [$ns node]
$n941 set-position 35.1 23.8;
#Add GSL links
$n940 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n941 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp371 [new Agent/UDP]
$ns attach-agent $n940 $udp371
set pareto371 [new Application/Traffic/Pareto]
$pareto371 attach-agent $udp371
$pareto371 set packetSize_ 1000
$pareto371 set rate_ 224Kb
set null371 [new Agent/Null]
$ns attach-agent $n941 $null371
$ns connect $udp371 $null371
$ns at 0.27 "$pareto371 start"

#Background: 942 to 943
set n942 [$ns node]
$n942 set-position 59.1 7.9;
set n943 [$ns node]
$n943 set-position 43.4 18.7;
#Add GSL links
$n942 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n943 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp372 [new Agent/UDP]
$ns attach-agent $n942 $udp372
set pareto372 [new Application/Traffic/Pareto]
$pareto372 attach-agent $udp372
$pareto372 set packetSize_ 1000
$pareto372 set rate_ 224Kb
set null372 [new Agent/Null]
$ns attach-agent $n943 $null372
$ns connect $udp372 $null372
$ns at 0.50 "$pareto372 start"

#Background: 944 to 945
set n944 [$ns node]
$n944 set-position 45.8 30.6;
set n945 [$ns node]
$n945 set-position 58.1 0.9;
#Add GSL links
$n944 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n945 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp373 [new Agent/UDP]
$ns attach-agent $n944 $udp373
set pareto373 [new Application/Traffic/Pareto]
$pareto373 attach-agent $udp373
$pareto373 set packetSize_ 1000
$pareto373 set rate_ 224Kb
set null373 [new Agent/Null]
$ns attach-agent $n945 $null373
$ns connect $udp373 $null373
$ns at 0.67 "$pareto373 start"

#Background: 946 to 947
set n946 [$ns node]
$n946 set-position 48.3 33.1;
set n947 [$ns node]
$n947 set-position 46.1 37.9;
#Add GSL links
$n946 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n947 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp374 [new Agent/UDP]
$ns attach-agent $n946 $udp374
set pareto374 [new Application/Traffic/Pareto]
$pareto374 attach-agent $udp374
$pareto374 set packetSize_ 1000
$pareto374 set rate_ 224Kb
set null374 [new Agent/Null]
$ns attach-agent $n947 $null374
$ns connect $udp374 $null374
$ns at 0.81 "$pareto374 start"

#Background: 948 to 949
set n948 [$ns node]
$n948 set-position 51.7 7.8;
set n949 [$ns node]
$n949 set-position 45.9 -5.2;
#Add GSL links
$n948 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n949 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp375 [new Agent/UDP]
$ns attach-agent $n948 $udp375
set pareto375 [new Application/Traffic/Pareto]
$pareto375 attach-agent $udp375
$pareto375 set packetSize_ 1000
$pareto375 set rate_ 224Kb
set null375 [new Agent/Null]
$ns attach-agent $n949 $null375
$ns connect $udp375 $null375
$ns at 0.17 "$pareto375 start"

#Background: 950 to 951
set n950 [$ns node]
$n950 set-position 51.0 -5.5;
set n951 [$ns node]
$n951 set-position 46.1 37.9;
#Add GSL links
$n950 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n951 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp376 [new Agent/UDP]
$ns attach-agent $n950 $udp376
set pareto376 [new Application/Traffic/Pareto]
$pareto376 attach-agent $udp376
$pareto376 set packetSize_ 1000
$pareto376 set rate_ 224Kb
set null376 [new Agent/Null]
$ns attach-agent $n951 $null376
$ns connect $udp376 $null376
$ns at 0.37 "$pareto376 start"

#Background: 952 to 953
set n952 [$ns node]
$n952 set-position 51.6 20.0;
set n953 [$ns node]
$n953 set-position 41.2 -5.2;
#Add GSL links
$n952 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n953 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp377 [new Agent/UDP]
$ns attach-agent $n952 $udp377
set pareto377 [new Application/Traffic/Pareto]
$pareto377 attach-agent $udp377
$pareto377 set packetSize_ 1000
$pareto377 set rate_ 224Kb
set null377 [new Agent/Null]
$ns attach-agent $n953 $null377
$ns connect $udp377 $null377
$ns at 0.25 "$pareto377 start"

#Background: 954 to 955
set n954 [$ns node]
$n954 set-position 51.0 -5.5;
set n955 [$ns node]
$n955 set-position 43.5 27.7;
#Add GSL links
$n954 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n955 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp378 [new Agent/UDP]
$ns attach-agent $n954 $udp378
set pareto378 [new Application/Traffic/Pareto]
$pareto378 attach-agent $udp378
$pareto378 set packetSize_ 1000
$pareto378 set rate_ 224Kb
set null378 [new Agent/Null]
$ns attach-agent $n955 $null378
$ns connect $udp378 $null378
$ns at 0.16 "$pareto378 start"

#Background: 956 to 957
set n956 [$ns node]
$n956 set-position 43.4 18.7;
set n957 [$ns node]
$n957 set-position 43.2 14.3;
#Add GSL links
$n956 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n957 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp379 [new Agent/UDP]
$ns attach-agent $n956 $udp379
set pareto379 [new Application/Traffic/Pareto]
$pareto379 attach-agent $udp379
$pareto379 set packetSize_ 1000
$pareto379 set rate_ 224Kb
set null379 [new Agent/Null]
$ns attach-agent $n957 $null379
$ns connect $udp379 $null379
$ns at 0.14 "$pareto379 start"

#Background: 958 to 959
set n958 [$ns node]
$n958 set-position 56.6 13.6;
set n959 [$ns node]
$n959 set-position 55.3 -1.7;
#Add GSL links
$n958 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n959 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp380 [new Agent/UDP]
$ns attach-agent $n958 $udp380
set pareto380 [new Application/Traffic/Pareto]
$pareto380 attach-agent $udp380
$pareto380 set packetSize_ 1000
$pareto380 set rate_ 224Kb
set null380 [new Agent/Null]
$ns attach-agent $n959 $null380
$ns connect $udp380 $null380
$ns at 0.98 "$pareto380 start"

#Background: 960 to 961
set n960 [$ns node]
$n960 set-position 49.8 27.4;
set n961 [$ns node]
$n961 set-position 50.4 3.9;
#Add GSL links
$n960 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n961 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp381 [new Agent/UDP]
$ns attach-agent $n960 $udp381
set pareto381 [new Application/Traffic/Pareto]
$pareto381 attach-agent $udp381
$pareto381 set packetSize_ 1000
$pareto381 set rate_ 224Kb
set null381 [new Agent/Null]
$ns attach-agent $n961 $null381
$ns connect $udp381 $null381
$ns at 0.43 "$pareto381 start"

#Background: 962 to 963
set n962 [$ns node]
$n962 set-position 45.7 4.0;
set n963 [$ns node]
$n963 set-position 45.8 30.6;
#Add GSL links
$n962 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n963 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp382 [new Agent/UDP]
$ns attach-agent $n962 $udp382
set pareto382 [new Application/Traffic/Pareto]
$pareto382 attach-agent $udp382
$pareto382 set packetSize_ 1000
$pareto382 set rate_ 224Kb
set null382 [new Agent/Null]
$ns attach-agent $n963 $null382
$ns connect $udp382 $null382
$ns at 0.39 "$pareto382 start"

#Background: 964 to 965
set n964 [$ns node]
$n964 set-position 58.4 11.1;
set n965 [$ns node]
$n965 set-position 48.4 -8.7;
#Add GSL links
$n964 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n965 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp383 [new Agent/UDP]
$ns attach-agent $n964 $udp383
set pareto383 [new Application/Traffic/Pareto]
$pareto383 attach-agent $udp383
$pareto383 set packetSize_ 1000
$pareto383 set rate_ 224Kb
set null383 [new Agent/Null]
$ns attach-agent $n965 $null383
$ns connect $udp383 $null383
$ns at 0.56 "$pareto383 start"

#Background: 966 to 967
set n966 [$ns node]
$n966 set-position 42.6 -5.2;
set n967 [$ns node]
$n967 set-position 58.4 11.1;
#Add GSL links
$n966 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n967 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp384 [new Agent/UDP]
$ns attach-agent $n966 $udp384
set pareto384 [new Application/Traffic/Pareto]
$pareto384 attach-agent $udp384
$pareto384 set packetSize_ 1000
$pareto384 set rate_ 224Kb
set null384 [new Agent/Null]
$ns attach-agent $n967 $null384
$ns connect $udp384 $null384
$ns at 0.81 "$pareto384 start"

#Background: 968 to 969
set n968 [$ns node]
$n968 set-position 43.4 18.7;
set n969 [$ns node]
$n969 set-position 57.6 22.5;
#Add GSL links
$n968 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n969 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp385 [new Agent/UDP]
$ns attach-agent $n968 $udp385
set pareto385 [new Application/Traffic/Pareto]
$pareto385 attach-agent $udp385
$pareto385 set packetSize_ 1000
$pareto385 set rate_ 224Kb
set null385 [new Agent/Null]
$ns attach-agent $n969 $null385
$ns connect $udp385 $null385
$ns at 0.49 "$pareto385 start"

#Background: 970 to 971
set n970 [$ns node]
$n970 set-position 45.7 4.0;
set n971 [$ns node]
$n971 set-position -3.6 27.1;
#Add GSL links
$n970 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n971 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp386 [new Agent/UDP]
$ns attach-agent $n970 $udp386
set pareto386 [new Application/Traffic/Pareto]
$pareto386 attach-agent $udp386
$pareto386 set packetSize_ 1000
$pareto386 set rate_ 224Kb
set null386 [new Agent/Null]
$ns attach-agent $n971 $null386
$ns connect $udp386 $null386
$ns at 0.26 "$pareto386 start"

#Background: 972 to 973
set n972 [$ns node]
$n972 set-position 43.2 22.3;
set n973 [$ns node]
$n973 set-position 14.5 16.1;
#Add GSL links
$n972 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n973 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp387 [new Agent/UDP]
$ns attach-agent $n972 $udp387
set pareto387 [new Application/Traffic/Pareto]
$pareto387 attach-agent $udp387
$pareto387 set packetSize_ 1000
$pareto387 set rate_ 224Kb
set null387 [new Agent/Null]
$ns attach-agent $n973 $null387
$ns connect $udp387 $null387
$ns at 0.37 "$pareto387 start"

#Background: 974 to 975
set n974 [$ns node]
$n974 set-position 46.3 38.5;
set n975 [$ns node]
$n975 set-position -35.0 -6.4;
#Add GSL links
$n974 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n975 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp388 [new Agent/UDP]
$ns attach-agent $n974 $udp388
set pareto388 [new Application/Traffic/Pareto]
$pareto388 attach-agent $udp388
$pareto388 set packetSize_ 1000
$pareto388 set rate_ 224Kb
set null388 [new Agent/Null]
$ns attach-agent $n975 $null388
$ns connect $udp388 $null388
$ns at 0.04 "$pareto388 start"

#Background: 976 to 977
set n976 [$ns node]
$n976 set-position 46.1 10.3;
set n977 [$ns node]
$n977 set-position -29.7 14.5;
#Add GSL links
$n976 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n977 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp389 [new Agent/UDP]
$ns attach-agent $n976 $udp389
set pareto389 [new Application/Traffic/Pareto]
$pareto389 attach-agent $udp389
$pareto389 set packetSize_ 1000
$pareto389 set rate_ 224Kb
set null389 [new Agent/Null]
$ns attach-agent $n977 $null389
$ns connect $udp389 $null389
$ns at 0.74 "$pareto389 start"

#Background: 978 to 979
set n978 [$ns node]
$n978 set-position 46.3 24.9;
set n979 [$ns node]
$n979 set-position 14.5 16.1;
#Add GSL links
$n978 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n979 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp390 [new Agent/UDP]
$ns attach-agent $n978 $udp390
set pareto390 [new Application/Traffic/Pareto]
$pareto390 attach-agent $udp390
$pareto390 set packetSize_ 1000
$pareto390 set rate_ 224Kb
set null390 [new Agent/Null]
$ns attach-agent $n979 $null390
$ns connect $udp390 $null390
$ns at 0.05 "$pareto390 start"

#Background: 980 to 981
set n980 [$ns node]
$n980 set-position 47.2 25.9;
set n981 [$ns node]
$n981 set-position -25.8 13.3;
#Add GSL links
$n980 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n981 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp391 [new Agent/UDP]
$ns attach-agent $n980 $udp391
set pareto391 [new Application/Traffic/Pareto]
$pareto391 attach-agent $udp391
$pareto391 set packetSize_ 1000
$pareto391 set rate_ 224Kb
set null391 [new Agent/Null]
$ns attach-agent $n981 $null391
$ns connect $udp391 $null391
$ns at 0.57 "$pareto391 start"

#Background: 982 to 983
set n982 [$ns node]
$n982 set-position 58.6 32.8;
set n983 [$ns node]
$n983 set-position 2.0 49.6;
#Add GSL links
$n982 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n983 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp392 [new Agent/UDP]
$ns attach-agent $n982 $udp392
set pareto392 [new Application/Traffic/Pareto]
$pareto392 attach-agent $udp392
$pareto392 set packetSize_ 1000
$pareto392 set rate_ 224Kb
set null392 [new Agent/Null]
$ns attach-agent $n983 $null392
$ns connect $udp392 $null392
$ns at 0.64 "$pareto392 start"

#Background: 984 to 985
set n984 [$ns node]
$n984 set-position 51.6 37.7;
set n985 [$ns node]
$n985 set-position 7.5 97.8;
#Add GSL links
$n984 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n985 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp393 [new Agent/UDP]
$ns attach-agent $n984 $udp393
set pareto393 [new Application/Traffic/Pareto]
$pareto393 attach-agent $udp393
$pareto393 set packetSize_ 1000
$pareto393 set rate_ 224Kb
set null393 [new Agent/Null]
$ns attach-agent $n985 $null393
$ns connect $udp393 $null393
$ns at 0.05 "$pareto393 start"

#Background: 986 to 987
set n986 [$ns node]
$n986 set-position 57.6 22.5;
set n987 [$ns node]
$n987 set-position 17.8 114.8;
#Add GSL links
$n986 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n987 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp394 [new Agent/UDP]
$ns attach-agent $n986 $udp394
set pareto394 [new Application/Traffic/Pareto]
$pareto394 attach-agent $udp394
$pareto394 set packetSize_ 1000
$pareto394 set rate_ 224Kb
set null394 [new Agent/Null]
$ns attach-agent $n987 $null394
$ns connect $udp394 $null394
$ns at 0.72 "$pareto394 start"

#Background: 988 to 989
set n988 [$ns node]
$n988 set-position 58.1 0.9;
set n989 [$ns node]
$n989 set-position 14.1 139.4;
#Add GSL links
$n988 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n989 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp395 [new Agent/UDP]
$ns attach-agent $n988 $udp395
set pareto395 [new Application/Traffic/Pareto]
$pareto395 attach-agent $udp395
$pareto395 set packetSize_ 1000
$pareto395 set rate_ 224Kb
set null395 [new Agent/Null]
$ns attach-agent $n989 $null395
$ns connect $udp395 $null395
$ns at 0.76 "$pareto395 start"

#Background: 990 to 991
set n990 [$ns node]
$n990 set-position 51.6 37.7;
set n991 [$ns node]
$n991 set-position 10.2 96.9;
#Add GSL links
$n990 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n991 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp396 [new Agent/UDP]
$ns attach-agent $n990 $udp396
set pareto396 [new Application/Traffic/Pareto]
$pareto396 attach-agent $udp396
$pareto396 set packetSize_ 1000
$pareto396 set rate_ 224Kb
set null396 [new Agent/Null]
$ns attach-agent $n991 $null396
$ns connect $udp396 $null396
$ns at 0.47 "$pareto396 start"

#Background: 992 to 993
set n992 [$ns node]
$n992 set-position 45.7 4.0;
set n993 [$ns node]
$n993 set-position 35.3 49.2;
#Add GSL links
$n992 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n993 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp397 [new Agent/UDP]
$ns attach-agent $n992 $udp397
set pareto397 [new Application/Traffic/Pareto]
$pareto397 attach-agent $udp397
$pareto397 set packetSize_ 1000
$pareto397 set rate_ 224Kb
set null397 [new Agent/Null]
$ns attach-agent $n993 $null397
$ns connect $udp397 $null397
$ns at 0.34 "$pareto397 start"

#Background: 994 to 995
set n994 [$ns node]
$n994 set-position 53.9 15.2;
set n995 [$ns node]
$n995 set-position 35.3 49.2;
#Add GSL links
$n994 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n995 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp398 [new Agent/UDP]
$ns attach-agent $n994 $udp398
set pareto398 [new Application/Traffic/Pareto]
$pareto398 attach-agent $udp398
$pareto398 set packetSize_ 1000
$pareto398 set rate_ 224Kb
set null398 [new Agent/Null]
$ns attach-agent $n995 $null398
$ns connect $udp398 $null398
$ns at 0.72 "$pareto398 start"

#Background: 996 to 997
set n996 [$ns node]
$n996 set-position 47.6 29.8;
set n997 [$ns node]
$n997 set-position 23.3 64.0;
#Add GSL links
$n996 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n997 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp399 [new Agent/UDP]
$ns attach-agent $n996 $udp399
set pareto399 [new Application/Traffic/Pareto]
$pareto399 attach-agent $udp399
$pareto399 set packetSize_ 1000
$pareto399 set rate_ 224Kb
set null399 [new Agent/Null]
$ns attach-agent $n997 $null399
$ns connect $udp399 $null399
$ns at 0.66 "$pareto399 start"

#Background: 998 to 999
set n998 [$ns node]
$n998 set-position 46.1 -0.4;
set n999 [$ns node]
$n999 set-position 17.1 97.3;
#Add GSL links
$n998 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n999 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp400 [new Agent/UDP]
$ns attach-agent $n998 $udp400
set pareto400 [new Application/Traffic/Pareto]
$pareto400 attach-agent $udp400
$pareto400 set packetSize_ 1000
$pareto400 set rate_ 224Kb
set null400 [new Agent/Null]
$ns attach-agent $n999 $null400
$ns connect $udp400 $null400
$ns at 0.33 "$pareto400 start"

#Background: 1000 to 1001
set n1000 [$ns node]
$n1000 set-position 46.7 16.9;
set n1001 [$ns node]
$n1001 set-position 40.3 92.8;
#Add GSL links
$n1000 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1001 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp401 [new Agent/UDP]
$ns attach-agent $n1000 $udp401
set pareto401 [new Application/Traffic/Pareto]
$pareto401 attach-agent $udp401
$pareto401 set packetSize_ 1000
$pareto401 set rate_ 224Kb
set null401 [new Agent/Null]
$ns attach-agent $n1001 $null401
$ns connect $udp401 $null401
$ns at 0.58 "$pareto401 start"

#Background: 1002 to 1003
set n1002 [$ns node]
$n1002 set-position 51.6 20.0;
set n1003 [$ns node]
$n1003 set-position 35.7 97.0;
#Add GSL links
$n1002 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1003 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp402 [new Agent/UDP]
$ns attach-agent $n1002 $udp402
set pareto402 [new Application/Traffic/Pareto]
$pareto402 attach-agent $udp402
$pareto402 set packetSize_ 1000
$pareto402 set rate_ 224Kb
set null402 [new Agent/Null]
$ns attach-agent $n1003 $null402
$ns connect $udp402 $null402
$ns at 0.16 "$pareto402 start"

#Background: 1004 to 1005
set n1004 [$ns node]
$n1004 set-position 57.6 22.5;
set n1005 [$ns node]
$n1005 set-position 23.3 64.0;
#Add GSL links
$n1004 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1005 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp403 [new Agent/UDP]
$ns attach-agent $n1004 $udp403
set pareto403 [new Application/Traffic/Pareto]
$pareto403 attach-agent $udp403
$pareto403 set packetSize_ 1000
$pareto403 set rate_ 224Kb
set null403 [new Agent/Null]
$ns attach-agent $n1005 $null403
$ns connect $udp403 $null403
$ns at 0.09 "$pareto403 start"

#Background: 1006 to 1007
set n1006 [$ns node]
$n1006 set-position 55.0 -6.2;
set n1007 [$ns node]
$n1007 set-position 54.0 39.0;
#Add GSL links
$n1006 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1007 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp404 [new Agent/UDP]
$ns attach-agent $n1006 $udp404
set pareto404 [new Application/Traffic/Pareto]
$pareto404 attach-agent $udp404
$pareto404 set packetSize_ 1000
$pareto404 set rate_ 224Kb
set null404 [new Agent/Null]
$ns attach-agent $n1007 $null404
$ns connect $udp404 $null404
$ns at 0.09 "$pareto404 start"

#Background: 1008 to 1009
set n1008 [$ns node]
$n1008 set-position 48.4 -8.7;
set n1009 [$ns node]
$n1009 set-position 33.4 121.5;
#Add GSL links
$n1008 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1009 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp405 [new Agent/UDP]
$ns attach-agent $n1008 $udp405
set pareto405 [new Application/Traffic/Pareto]
$pareto405 attach-agent $udp405
$pareto405 set packetSize_ 1000
$pareto405 set rate_ 224Kb
set null405 [new Agent/Null]
$ns attach-agent $n1009 $null405
$ns connect $udp405 $null405
$ns at 0.92 "$pareto405 start"

#Background: 1010 to 1011
set n1010 [$ns node]
$n1010 set-position 51.7 7.8;
set n1011 [$ns node]
$n1011 set-position 37.7 95.3;
#Add GSL links
$n1010 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1011 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp406 [new Agent/UDP]
$ns attach-agent $n1010 $udp406
set pareto406 [new Application/Traffic/Pareto]
$pareto406 attach-agent $udp406
$pareto406 set packetSize_ 1000
$pareto406 set rate_ 224Kb
set null406 [new Agent/Null]
$ns attach-agent $n1011 $null406
$ns connect $udp406 $null406
$ns at 0.33 "$pareto406 start"

#Background: 1012 to 1013
set n1012 [$ns node]
$n1012 set-position 46.1 37.9;
set n1013 [$ns node]
$n1013 set-position 33.4 121.5;
#Add GSL links
$n1012 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1013 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp407 [new Agent/UDP]
$ns attach-agent $n1012 $udp407
set pareto407 [new Application/Traffic/Pareto]
$pareto407 attach-agent $udp407
$pareto407 set packetSize_ 1000
$pareto407 set rate_ 224Kb
set null407 [new Agent/Null]
$ns attach-agent $n1013 $null407
$ns connect $udp407 $null407
$ns at 0.17 "$pareto407 start"

#Background: 1014 to 1015
set n1014 [$ns node]
$n1014 set-position 43.2 22.3;
set n1015 [$ns node]
$n1015 set-position 18.5 78.7;
#Add GSL links
$n1014 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1015 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp408 [new Agent/UDP]
$ns attach-agent $n1014 $udp408
set pareto408 [new Application/Traffic/Pareto]
$pareto408 attach-agent $udp408
$pareto408 set packetSize_ 1000
$pareto408 set rate_ 224Kb
set null408 [new Agent/Null]
$ns attach-agent $n1015 $null408
$ns connect $udp408 $null408
$ns at 0.70 "$pareto408 start"

#Background: 1016 to 1017
set n1016 [$ns node]
$n1016 set-position 57.3 6.5;
set n1017 [$ns node]
$n1017 set-position 1.9 95.1;
#Add GSL links
$n1016 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1017 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp409 [new Agent/UDP]
$ns attach-agent $n1016 $udp409
set pareto409 [new Application/Traffic/Pareto]
$pareto409 attach-agent $udp409
$pareto409 set packetSize_ 1000
$pareto409 set rate_ 224Kb
set null409 [new Agent/Null]
$ns attach-agent $n1017 $null409
$ns connect $udp409 $null409
$ns at 0.07 "$pareto409 start"

#Background: 1018 to 1019
set n1018 [$ns node]
$n1018 set-position 45.3 9.6;
set n1019 [$ns node]
$n1019 set-position -16.3 111.7;
#Add GSL links
$n1018 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1019 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp410 [new Agent/UDP]
$ns attach-agent $n1018 $udp410
set pareto410 [new Application/Traffic/Pareto]
$pareto410 attach-agent $udp410
$pareto410 set packetSize_ 1000
$pareto410 set rate_ 224Kb
set null410 [new Agent/Null]
$ns attach-agent $n1019 $null410
$ns connect $udp410 $null410
$ns at 0.47 "$pareto410 start"

#Background: 1020 to 1021
set n1020 [$ns node]
$n1020 set-position 58.4 11.1;
set n1021 [$ns node]
$n1021 set-position -23.8 130.8;
#Add GSL links
$n1020 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1021 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp411 [new Agent/UDP]
$ns attach-agent $n1020 $udp411
set pareto411 [new Application/Traffic/Pareto]
$pareto411 attach-agent $udp411
$pareto411 set packetSize_ 1000
$pareto411 set rate_ 224Kb
set null411 [new Agent/Null]
$ns attach-agent $n1021 $null411
$ns connect $udp411 $null411
$ns at 0.84 "$pareto411 start"

#Background: 1022 to 1023
set n1022 [$ns node]
$n1022 set-position 49.8 27.4;
set n1023 [$ns node]
$n1023 set-position -16.3 111.7;
#Add GSL links
$n1022 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1023 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp412 [new Agent/UDP]
$ns attach-agent $n1022 $udp412
set pareto412 [new Application/Traffic/Pareto]
$pareto412 attach-agent $udp412
$pareto412 set packetSize_ 1000
$pareto412 set rate_ 224Kb
set null412 [new Agent/Null]
$ns attach-agent $n1023 $null412
$ns connect $udp412 $null412
$ns at 0.18 "$pareto412 start"

#Background: 1024 to 1025
set n1024 [$ns node]
$n1024 set-position 53.9 15.2;
set n1025 [$ns node]
$n1025 set-position -23.8 130.8;
#Add GSL links
$n1024 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1025 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp413 [new Agent/UDP]
$ns attach-agent $n1024 $udp413
set pareto413 [new Application/Traffic/Pareto]
$pareto413 attach-agent $udp413
$pareto413 set packetSize_ 1000
$pareto413 set rate_ 224Kb
set null413 [new Agent/Null]
$ns attach-agent $n1025 $null413
$ns connect $udp413 $null413
$ns at 0.88 "$pareto413 start"

#Background: 1026 to 1027
set n1026 [$ns node]
$n1026 set-position 43.2 22.3;
set n1027 [$ns node]
$n1027 set-position -5.3 112.2;
#Add GSL links
$n1026 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1027 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp414 [new Agent/UDP]
$ns attach-agent $n1026 $udp414
set pareto414 [new Application/Traffic/Pareto]
$pareto414 attach-agent $udp414
$pareto414 set packetSize_ 1000
$pareto414 set rate_ 224Kb
set null414 [new Agent/Null]
$ns attach-agent $n1027 $null414
$ns connect $udp414 $null414
$ns at 0.01 "$pareto414 start"

#Background: 1028 to 1029
set n1028 [$ns node]
$n1028 set-position 35.1 32.8;
set n1029 [$ns node]
$n1029 set-position -8.9 158.9;
#Add GSL links
$n1028 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1029 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp415 [new Agent/UDP]
$ns attach-agent $n1028 $udp415
set pareto415 [new Application/Traffic/Pareto]
$pareto415 attach-agent $udp415
$pareto415 set packetSize_ 1000
$pareto415 set rate_ 224Kb
set null415 [new Agent/Null]
$ns attach-agent $n1029 $null415
$ns connect $udp415 $null415
$ns at 0.88 "$pareto415 start"

#Background: 1030 to 1031
set n1030 [$ns node]
$n1030 set-position -15.8 18.5;
set n1031 [$ns node]
$n1031 set-position 51.2 -91.8;
#Add GSL links
$n1030 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1031 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp416 [new Agent/UDP]
$ns attach-agent $n1030 $udp416
set pareto416 [new Application/Traffic/Pareto]
$pareto416 attach-agent $udp416
$pareto416 set packetSize_ 1000
$pareto416 set rate_ 224Kb
set null416 [new Agent/Null]
$ns attach-agent $n1031 $null416
$ns connect $udp416 $null416
$ns at 0.54 "$pareto416 start"

#Background: 1032 to 1033
set n1032 [$ns node]
$n1032 set-position -35.0 -6.4;
set n1033 [$ns node]
$n1033 set-position 37.6 -116.8;
#Add GSL links
$n1032 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1033 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp417 [new Agent/UDP]
$ns attach-agent $n1032 $udp417
set pareto417 [new Application/Traffic/Pareto]
$pareto417 attach-agent $udp417
$pareto417 set packetSize_ 1000
$pareto417 set rate_ 224Kb
set null417 [new Agent/Null]
$ns attach-agent $n1033 $null417
$ns connect $udp417 $null417
$ns at 0.74 "$pareto417 start"

#Background: 1034 to 1035
set n1034 [$ns node]
$n1034 set-position -25.8 13.3;
set n1035 [$ns node]
$n1035 set-position 22.3 -122.3;
#Add GSL links
$n1034 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1035 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp418 [new Agent/UDP]
$ns attach-agent $n1034 $udp418
set pareto418 [new Application/Traffic/Pareto]
$pareto418 attach-agent $udp418
$pareto418 set packetSize_ 1000
$pareto418 set rate_ 224Kb
set null418 [new Agent/Null]
$ns attach-agent $n1035 $null418
$ns connect $udp418 $null418
$ns at 0.84 "$pareto418 start"

#Background: 1036 to 1037
set n1036 [$ns node]
$n1036 set-position -33.3 43.0;
set n1037 [$ns node]
$n1037 set-position 38.9 -97.7;
#Add GSL links
$n1036 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1037 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp419 [new Agent/UDP]
$ns attach-agent $n1036 $udp419
set pareto419 [new Application/Traffic/Pareto]
$pareto419 attach-agent $udp419
$pareto419 set packetSize_ 1000
$pareto419 set rate_ 224Kb
set null419 [new Agent/Null]
$ns attach-agent $n1037 $null419
$ns connect $udp419 $null419
$ns at 0.40 "$pareto419 start"

#Background: 1038 to 1039
set n1038 [$ns node]
$n1038 set-position -21.6 27.6;
set n1039 [$ns node]
$n1039 set-position 42.3 -125.3;
#Add GSL links
$n1038 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1039 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp420 [new Agent/UDP]
$ns attach-agent $n1038 $udp420
set pareto420 [new Application/Traffic/Pareto]
$pareto420 attach-agent $udp420
$pareto420 set packetSize_ 1000
$pareto420 set rate_ 224Kb
set null420 [new Agent/Null]
$ns attach-agent $n1039 $null420
$ns connect $udp420 $null420
$ns at 0.70 "$pareto420 start"

#Background: 1040 to 1041
set n1040 [$ns node]
$n1040 set-position 4.5 5.3;
set n1041 [$ns node]
$n1041 set-position 39.7 -107.8;
#Add GSL links
$n1040 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1041 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp421 [new Agent/UDP]
$ns attach-agent $n1040 $udp421
set pareto421 [new Application/Traffic/Pareto]
$pareto421 attach-agent $udp421
$pareto421 set packetSize_ 1000
$pareto421 set rate_ 224Kb
set null421 [new Agent/Null]
$ns attach-agent $n1041 $null421
$ns connect $udp421 $null421
$ns at 0.78 "$pareto421 start"

#Background: 1042 to 1043
set n1042 [$ns node]
$n1042 set-position -15.8 18.5;
set n1043 [$ns node]
$n1043 set-position -49.6 -42.5;
#Add GSL links
$n1042 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1043 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp422 [new Agent/UDP]
$ns attach-agent $n1042 $udp422
set pareto422 [new Application/Traffic/Pareto]
$pareto422 attach-agent $udp422
$pareto422 set packetSize_ 1000
$pareto422 set rate_ 224Kb
set null422 [new Agent/Null]
$ns attach-agent $n1043 $null422
$ns connect $udp422 $null422
$ns at 0.70 "$pareto422 start"

#Background: 1044 to 1045
set n1044 [$ns node]
$n1044 set-position 15.7 -10.1;
set n1045 [$ns node]
$n1045 set-position 46.3 24.9;
#Add GSL links
$n1044 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1045 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp423 [new Agent/UDP]
$ns attach-agent $n1044 $udp423
set pareto423 [new Application/Traffic/Pareto]
$pareto423 attach-agent $udp423
$pareto423 set packetSize_ 1000
$pareto423 set rate_ 224Kb
set null423 [new Agent/Null]
$ns attach-agent $n1045 $null423
$ns connect $udp423 $null423
$ns at 0.66 "$pareto423 start"

#Background: 1046 to 1047
set n1046 [$ns node]
$n1046 set-position -32.3 25.4;
set n1047 [$ns node]
$n1047 set-position 39.7 10.7;
#Add GSL links
$n1046 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1047 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp424 [new Agent/UDP]
$ns attach-agent $n1046 $udp424
set pareto424 [new Application/Traffic/Pareto]
$pareto424 attach-agent $udp424
$pareto424 set packetSize_ 1000
$pareto424 set rate_ 224Kb
set null424 [new Agent/Null]
$ns attach-agent $n1047 $null424
$ns connect $udp424 $null424
$ns at 0.23 "$pareto424 start"

#Background: 1048 to 1049
set n1048 [$ns node]
$n1048 set-position 23.6 32.7;
set n1049 [$ns node]
$n1049 set-position 57.3 6.5;
#Add GSL links
$n1048 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1049 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp425 [new Agent/UDP]
$ns attach-agent $n1048 $udp425
set pareto425 [new Application/Traffic/Pareto]
$pareto425 attach-agent $udp425
$pareto425 set packetSize_ 1000
$pareto425 set rate_ 224Kb
set null425 [new Agent/Null]
$ns attach-agent $n1049 $null425
$ns connect $udp425 $null425
$ns at 0.09 "$pareto425 start"

#Background: 1050 to 1051
set n1050 [$ns node]
$n1050 set-position -3.6 27.1;
set n1051 [$ns node]
$n1051 set-position -24.8 26.4;
#Add GSL links
$n1050 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1051 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp426 [new Agent/UDP]
$ns attach-agent $n1050 $udp426
set pareto426 [new Application/Traffic/Pareto]
$pareto426 attach-agent $udp426
$pareto426 set packetSize_ 1000
$pareto426 set rate_ 224Kb
set null426 [new Agent/Null]
$ns attach-agent $n1051 $null426
$ns connect $udp426 $null426
$ns at 0.52 "$pareto426 start"

#Background: 1052 to 1053
set n1052 [$ns node]
$n1052 set-position -21.6 27.6;
set n1053 [$ns node]
$n1053 set-position -25.8 13.3;
#Add GSL links
$n1052 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1053 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp427 [new Agent/UDP]
$ns attach-agent $n1052 $udp427
set pareto427 [new Application/Traffic/Pareto]
$pareto427 attach-agent $udp427
$pareto427 set packetSize_ 1000
$pareto427 set rate_ 224Kb
set null427 [new Agent/Null]
$ns attach-agent $n1053 $null427
$ns connect $udp427 $null427
$ns at 0.01 "$pareto427 start"

#Background: 1054 to 1055
set n1054 [$ns node]
$n1054 set-position 15.7 -10.1;
set n1055 [$ns node]
$n1055 set-position -32.3 25.4;
#Add GSL links
$n1054 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1055 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp428 [new Agent/UDP]
$ns attach-agent $n1054 $udp428
set pareto428 [new Application/Traffic/Pareto]
$pareto428 attach-agent $udp428
$pareto428 set packetSize_ 1000
$pareto428 set rate_ 224Kb
set null428 [new Agent/Null]
$ns attach-agent $n1055 $null428
$ns connect $udp428 $null428
$ns at 0.93 "$pareto428 start"

#Background: 1056 to 1057
set n1056 [$ns node]
$n1056 set-position -15.8 18.5;
set n1057 [$ns node]
$n1057 set-position 15.7 -10.1;
#Add GSL links
$n1056 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1057 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp429 [new Agent/UDP]
$ns attach-agent $n1056 $udp429
set pareto429 [new Application/Traffic/Pareto]
$pareto429 attach-agent $udp429
$pareto429 set packetSize_ 1000
$pareto429 set rate_ 224Kb
set null429 [new Agent/Null]
$ns attach-agent $n1057 $null429
$ns connect $udp429 $null429
$ns at 0.48 "$pareto429 start"

#Background: 1058 to 1059
set n1058 [$ns node]
$n1058 set-position -33.3 43.0;
set n1059 [$ns node]
$n1059 set-position -24.8 26.4;
#Add GSL links
$n1058 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1059 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp430 [new Agent/UDP]
$ns attach-agent $n1058 $udp430
set pareto430 [new Application/Traffic/Pareto]
$pareto430 attach-agent $udp430
$pareto430 set packetSize_ 1000
$pareto430 set rate_ 224Kb
set null430 [new Agent/Null]
$ns attach-agent $n1059 $null430
$ns connect $udp430 $null430
$ns at 0.85 "$pareto430 start"

#Background: 1060 to 1061
set n1060 [$ns node]
$n1060 set-position -33.3 43.0;
set n1061 [$ns node]
$n1061 set-position -32.3 25.4;
#Add GSL links
$n1060 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1061 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp431 [new Agent/UDP]
$ns attach-agent $n1060 $udp431
set pareto431 [new Application/Traffic/Pareto]
$pareto431 attach-agent $udp431
$pareto431 set packetSize_ 1000
$pareto431 set rate_ 224Kb
set null431 [new Agent/Null]
$ns attach-agent $n1061 $null431
$ns connect $udp431 $null431
$ns at 0.37 "$pareto431 start"

#Background: 1062 to 1063
set n1062 [$ns node]
$n1062 set-position -33.3 43.0;
set n1063 [$ns node]
$n1063 set-position -25.8 13.3;
#Add GSL links
$n1062 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1063 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp432 [new Agent/UDP]
$ns attach-agent $n1062 $udp432
set pareto432 [new Application/Traffic/Pareto]
$pareto432 attach-agent $udp432
$pareto432 set packetSize_ 1000
$pareto432 set rate_ 224Kb
set null432 [new Agent/Null]
$ns attach-agent $n1063 $null432
$ns connect $udp432 $null432
$ns at 0.15 "$pareto432 start"

#Background: 1064 to 1065
set n1064 [$ns node]
$n1064 set-position -33.3 43.0;
set n1065 [$ns node]
$n1065 set-position 4.5 5.3;
#Add GSL links
$n1064 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1065 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp433 [new Agent/UDP]
$ns attach-agent $n1064 $udp433
set pareto433 [new Application/Traffic/Pareto]
$pareto433 attach-agent $udp433
$pareto433 set packetSize_ 1000
$pareto433 set rate_ 224Kb
set null433 [new Agent/Null]
$ns attach-agent $n1065 $null433
$ns connect $udp433 $null433
$ns at 0.34 "$pareto433 start"

#Background: 1066 to 1067
set n1066 [$ns node]
$n1066 set-position -32.3 25.4;
set n1067 [$ns node]
$n1067 set-position 51.8 65.7;
#Add GSL links
$n1066 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1067 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp434 [new Agent/UDP]
$ns attach-agent $n1066 $udp434
set pareto434 [new Application/Traffic/Pareto]
$pareto434 attach-agent $udp434
$pareto434 set packetSize_ 1000
$pareto434 set rate_ 224Kb
set null434 [new Agent/Null]
$ns attach-agent $n1067 $null434
$ns connect $udp434 $null434
$ns at 0.57 "$pareto434 start"

#Background: 1068 to 1069
set n1068 [$ns node]
$n1068 set-position -10.2 -12.8;
set n1069 [$ns node]
$n1069 set-position 20.0 39.5;
#Add GSL links
$n1068 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1069 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp435 [new Agent/UDP]
$ns attach-agent $n1068 $udp435
set pareto435 [new Application/Traffic/Pareto]
$pareto435 attach-agent $udp435
$pareto435 set packetSize_ 1000
$pareto435 set rate_ 224Kb
set null435 [new Agent/Null]
$ns attach-agent $n1069 $null435
$ns connect $udp435 $null435
$ns at 0.93 "$pareto435 start"

#Background: 1070 to 1071
set n1070 [$ns node]
$n1070 set-position -15.8 18.5;
set n1071 [$ns node]
$n1071 set-position 59.5 100.7;
#Add GSL links
$n1070 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1071 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp436 [new Agent/UDP]
$ns attach-agent $n1070 $udp436
set pareto436 [new Application/Traffic/Pareto]
$pareto436 attach-agent $udp436
$pareto436 set packetSize_ 1000
$pareto436 set rate_ 224Kb
set null436 [new Agent/Null]
$ns attach-agent $n1071 $null436
$ns connect $udp436 $null436
$ns at 0.85 "$pareto436 start"

#Background: 1072 to 1073
set n1072 [$ns node]
$n1072 set-position -21.6 27.6;
set n1073 [$ns node]
$n1073 set-position -26.7 131.4;
#Add GSL links
$n1072 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1073 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp437 [new Agent/UDP]
$ns attach-agent $n1072 $udp437
set pareto437 [new Application/Traffic/Pareto]
$pareto437 attach-agent $udp437
$pareto437 set packetSize_ 1000
$pareto437 set rate_ 224Kb
set null437 [new Agent/Null]
$ns attach-agent $n1073 $null437
$ns connect $udp437 $null437
$ns at 0.68 "$pareto437 start"

#Background: 1074 to 1075
set n1074 [$ns node]
$n1074 set-position 29.0 99.6;
set n1075 [$ns node]
$n1075 set-position 54.2 -74.2;
#Add GSL links
$n1074 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1075 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp438 [new Agent/UDP]
$ns attach-agent $n1074 $udp438
set pareto438 [new Application/Traffic/Pareto]
$pareto438 attach-agent $udp438
$pareto438 set packetSize_ 1000
$pareto438 set rate_ 224Kb
set null438 [new Agent/Null]
$ns attach-agent $n1075 $null438
$ns connect $udp438 $null438
$ns at 0.11 "$pareto438 start"

#Background: 1076 to 1077
set n1076 [$ns node]
$n1076 set-position 41.9 117.1;
set n1077 [$ns node]
$n1077 set-position 52.2 -117.7;
#Add GSL links
$n1076 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1077 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp439 [new Agent/UDP]
$ns attach-agent $n1076 $udp439
set pareto439 [new Application/Traffic/Pareto]
$pareto439 attach-agent $udp439
$pareto439 set packetSize_ 1000
$pareto439 set rate_ 224Kb
set null439 [new Agent/Null]
$ns attach-agent $n1077 $null439
$ns connect $udp439 $null439
$ns at 0.32 "$pareto439 start"

#Background: 1078 to 1079
set n1078 [$ns node]
$n1078 set-position 10.2 96.9;
set n1079 [$ns node]
$n1079 set-position 52.8 -89.5;
#Add GSL links
$n1078 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1079 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp440 [new Agent/UDP]
$ns attach-agent $n1078 $udp440
set pareto440 [new Application/Traffic/Pareto]
$pareto440 attach-agent $udp440
$pareto440 set packetSize_ 1000
$pareto440 set rate_ 224Kb
set null440 [new Agent/Null]
$ns attach-agent $n1079 $null440
$ns connect $udp440 $null440
$ns at 0.94 "$pareto440 start"

#Background: 1080 to 1081
set n1080 [$ns node]
$n1080 set-position 26.5 65.4;
set n1081 [$ns node]
$n1081 set-position 51.8 -120.5;
#Add GSL links
$n1080 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1081 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp441 [new Agent/UDP]
$ns attach-agent $n1080 $udp441
set pareto441 [new Application/Traffic/Pareto]
$pareto441 attach-agent $udp441
$pareto441 set packetSize_ 1000
$pareto441 set rate_ 224Kb
set null441 [new Agent/Null]
$ns attach-agent $n1081 $null441
$ns connect $udp441 $null441
$ns at 0.40 "$pareto441 start"

#Background: 1082 to 1083
set n1082 [$ns node]
$n1082 set-position 1.0 99.6;
set n1083 [$ns node]
$n1083 set-position 22.3 -122.3;
#Add GSL links
$n1082 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1083 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp442 [new Agent/UDP]
$ns attach-agent $n1082 $udp442
set pareto442 [new Application/Traffic/Pareto]
$pareto442 attach-agent $udp442
$pareto442 set packetSize_ 1000
$pareto442 set rate_ 224Kb
set null442 [new Agent/Null]
$ns attach-agent $n1083 $null442
$ns connect $udp442 $null442
$ns at 0.59 "$pareto442 start"

#Background: 1084 to 1085
set n1084 [$ns node]
$n1084 set-position 31.4 136.5;
set n1085 [$ns node]
$n1085 set-position 27.2 -107.7;
#Add GSL links
$n1084 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1085 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp443 [new Agent/UDP]
$ns attach-agent $n1084 $udp443
set pareto443 [new Application/Traffic/Pareto]
$pareto443 attach-agent $udp443
$pareto443 set packetSize_ 1000
$pareto443 set rate_ 224Kb
set null443 [new Agent/Null]
$ns attach-agent $n1085 $null443
$ns connect $udp443 $null443
$ns at 0.20 "$pareto443 start"

#Background: 1086 to 1087
set n1086 [$ns node]
$n1086 set-position 40.3 92.8;
set n1087 [$ns node]
$n1087 set-position 55.8 -110.0;
#Add GSL links
$n1086 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1087 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp444 [new Agent/UDP]
$ns attach-agent $n1086 $udp444
set pareto444 [new Application/Traffic/Pareto]
$pareto444 attach-agent $udp444
$pareto444 set packetSize_ 1000
$pareto444 set rate_ 224Kb
set null444 [new Agent/Null]
$ns attach-agent $n1087 $null444
$ns connect $udp444 $null444
$ns at 0.61 "$pareto444 start"

#Background: 1088 to 1089
set n1088 [$ns node]
$n1088 set-position -3.9 46.0;
set n1089 [$ns node]
$n1089 set-position 22.3 -56.5;
#Add GSL links
$n1088 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1089 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp445 [new Agent/UDP]
$ns attach-agent $n1088 $udp445
set pareto445 [new Application/Traffic/Pareto]
$pareto445 attach-agent $udp445
$pareto445 set packetSize_ 1000
$pareto445 set rate_ 224Kb
set null445 [new Agent/Null]
$ns attach-agent $n1089 $null445
$ns connect $udp445 $null445
$ns at 0.86 "$pareto445 start"

#Background: 1090 to 1091
set n1090 [$ns node]
$n1090 set-position 50.5 73.6;
set n1091 [$ns node]
$n1091 set-position 34.9 -56.0;
#Add GSL links
$n1090 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1091 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp446 [new Agent/UDP]
$ns attach-agent $n1090 $udp446
set pareto446 [new Application/Traffic/Pareto]
$pareto446 attach-agent $udp446
$pareto446 set packetSize_ 1000
$pareto446 set rate_ 224Kb
set null446 [new Agent/Null]
$ns attach-agent $n1091 $null446
$ns connect $udp446 $null446
$ns at 0.32 "$pareto446 start"

#Background: 1092 to 1093
set n1092 [$ns node]
$n1092 set-position 21.1 43.7;
set n1093 [$ns node]
$n1093 set-position 39.7 -107.8;
#Add GSL links
$n1092 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1093 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp447 [new Agent/UDP]
$ns attach-agent $n1092 $udp447
set pareto447 [new Application/Traffic/Pareto]
$pareto447 attach-agent $udp447
$pareto447 set packetSize_ 1000
$pareto447 set rate_ 224Kb
set null447 [new Agent/Null]
$ns attach-agent $n1093 $null447
$ns connect $udp447 $null447
$ns at 0.57 "$pareto447 start"

#Background: 1094 to 1095
set n1094 [$ns node]
$n1094 set-position 57.4 67.3;
set n1095 [$ns node]
$n1095 set-position 42.2 -135.0;
#Add GSL links
$n1094 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1095 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp448 [new Agent/UDP]
$ns attach-agent $n1094 $udp448
set pareto448 [new Application/Traffic/Pareto]
$pareto448 attach-agent $udp448
$pareto448 set packetSize_ 1000
$pareto448 set rate_ 224Kb
set null448 [new Agent/Null]
$ns attach-agent $n1095 $null448
$ns connect $udp448 $null448
$ns at 0.36 "$pareto448 start"

#Background: 1096 to 1097
set n1096 [$ns node]
$n1096 set-position 40.3 92.8;
set n1097 [$ns node]
$n1097 set-position 51.7 -60.4;
#Add GSL links
$n1096 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1097 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp449 [new Agent/UDP]
$ns attach-agent $n1096 $udp449
set pareto449 [new Application/Traffic/Pareto]
$pareto449 attach-agent $udp449
$pareto449 set packetSize_ 1000
$pareto449 set rate_ 224Kb
set null449 [new Agent/Null]
$ns attach-agent $n1097 $null449
$ns connect $udp449 $null449
$ns at 0.01 "$pareto449 start"

#Background: 1098 to 1099
set n1098 [$ns node]
$n1098 set-position 18.5 78.7;
set n1099 [$ns node]
$n1099 set-position 46.1 -84.5;
#Add GSL links
$n1098 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1099 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp450 [new Agent/UDP]
$ns attach-agent $n1098 $udp450
set pareto450 [new Application/Traffic/Pareto]
$pareto450 attach-agent $udp450
$pareto450 set packetSize_ 1000
$pareto450 set rate_ 224Kb
set null450 [new Agent/Null]
$ns attach-agent $n1099 $null450
$ns connect $udp450 $null450
$ns at 0.43 "$pareto450 start"

#Background: 1100 to 1101
set n1100 [$ns node]
$n1100 set-position 1.0 99.6;
set n1101 [$ns node]
$n1101 set-position 37.2 -63.5;
#Add GSL links
$n1100 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1101 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp451 [new Agent/UDP]
$ns attach-agent $n1100 $udp451
set pareto451 [new Application/Traffic/Pareto]
$pareto451 attach-agent $udp451
$pareto451 set packetSize_ 1000
$pareto451 set rate_ 224Kb
set null451 [new Agent/Null]
$ns attach-agent $n1101 $null451
$ns connect $udp451 $null451
$ns at 0.86 "$pareto451 start"

#Background: 1102 to 1103
set n1102 [$ns node]
$n1102 set-position 20.2 71.0;
set n1103 [$ns node]
$n1103 set-position 21.4 -122.5;
#Add GSL links
$n1102 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1103 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp452 [new Agent/UDP]
$ns attach-agent $n1102 $udp452
set pareto452 [new Application/Traffic/Pareto]
$pareto452 attach-agent $udp452
$pareto452 set packetSize_ 1000
$pareto452 set rate_ 224Kb
set null452 [new Agent/Null]
$ns attach-agent $n1103 $null452
$ns connect $udp452 $null452
$ns at 0.58 "$pareto452 start"

#Background: 1104 to 1105
set n1104 [$ns node]
$n1104 set-position 1.9 95.1;
set n1105 [$ns node]
$n1105 set-position 38.3 -90.9;
#Add GSL links
$n1104 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1105 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp453 [new Agent/UDP]
$ns attach-agent $n1104 $udp453
set pareto453 [new Application/Traffic/Pareto]
$pareto453 attach-agent $udp453
$pareto453 set packetSize_ 1000
$pareto453 set rate_ 224Kb
set null453 [new Agent/Null]
$ns attach-agent $n1105 $null453
$ns connect $udp453 $null453
$ns at 0.79 "$pareto453 start"

#Background: 1106 to 1107
set n1106 [$ns node]
$n1106 set-position 1.9 95.1;
set n1107 [$ns node]
$n1107 set-position 51.7 -60.4;
#Add GSL links
$n1106 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1107 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp454 [new Agent/UDP]
$ns attach-agent $n1106 $udp454
set pareto454 [new Application/Traffic/Pareto]
$pareto454 attach-agent $udp454
$pareto454 set packetSize_ 1000
$pareto454 set rate_ 224Kb
set null454 [new Agent/Null]
$ns attach-agent $n1107 $null454
$ns connect $udp454 $null454
$ns at 0.69 "$pareto454 start"

#Background: 1108 to 1109
set n1108 [$ns node]
$n1108 set-position 40.7 46.5;
set n1109 [$ns node]
$n1109 set-position 54.8 -112.2;
#Add GSL links
$n1108 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1109 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp455 [new Agent/UDP]
$ns attach-agent $n1108 $udp455
set pareto455 [new Application/Traffic/Pareto]
$pareto455 attach-agent $udp455
$pareto455 set packetSize_ 1000
$pareto455 set rate_ 224Kb
set null455 [new Agent/Null]
$ns attach-agent $n1109 $null455
$ns connect $udp455 $null455
$ns at 0.49 "$pareto455 start"

#Background: 1110 to 1111
set n1110 [$ns node]
$n1110 set-position -3.9 46.0;
set n1111 [$ns node]
$n1111 set-position 54.2 -74.2;
#Add GSL links
$n1110 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1111 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp456 [new Agent/UDP]
$ns attach-agent $n1110 $udp456
set pareto456 [new Application/Traffic/Pareto]
$pareto456 attach-agent $udp456
$pareto456 set packetSize_ 1000
$pareto456 set rate_ 224Kb
set null456 [new Agent/Null]
$ns attach-agent $n1111 $null456
$ns connect $udp456 $null456
$ns at 0.78 "$pareto456 start"

#Background: 1112 to 1113
set n1112 [$ns node]
$n1112 set-position 22.5 107.5;
set n1113 [$ns node]
$n1113 set-position 57.6 -113.0;
#Add GSL links
$n1112 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1113 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp457 [new Agent/UDP]
$ns attach-agent $n1112 $udp457
set pareto457 [new Application/Traffic/Pareto]
$pareto457 attach-agent $udp457
$pareto457 set packetSize_ 1000
$pareto457 set rate_ 224Kb
set null457 [new Agent/Null]
$ns attach-agent $n1113 $null457
$ns connect $udp457 $null457
$ns at 0.62 "$pareto457 start"

#Background: 1114 to 1115
set n1114 [$ns node]
$n1114 set-position 40.7 46.5;
set n1115 [$ns node]
$n1115 set-position 29.4 -102.7;
#Add GSL links
$n1114 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1115 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp458 [new Agent/UDP]
$ns attach-agent $n1114 $udp458
set pareto458 [new Application/Traffic/Pareto]
$pareto458 attach-agent $udp458
$pareto458 set packetSize_ 1000
$pareto458 set rate_ 224Kb
set null458 [new Agent/Null]
$ns attach-agent $n1115 $null458
$ns connect $udp458 $null458
$ns at 0.02 "$pareto458 start"

#Background: 1116 to 1117
set n1116 [$ns node]
$n1116 set-position 21.1 43.7;
set n1117 [$ns node]
$n1117 set-position 30.4 -75.1;
#Add GSL links
$n1116 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1117 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp459 [new Agent/UDP]
$ns attach-agent $n1116 $udp459
set pareto459 [new Application/Traffic/Pareto]
$pareto459 attach-agent $udp459
$pareto459 set packetSize_ 1000
$pareto459 set rate_ 224Kb
set null459 [new Agent/Null]
$ns attach-agent $n1117 $null459
$ns connect $udp459 $null459
$ns at 0.42 "$pareto459 start"

#Background: 1118 to 1119
set n1118 [$ns node]
$n1118 set-position 59.5 100.7;
set n1119 [$ns node]
$n1119 set-position 36.5 -67.9;
#Add GSL links
$n1118 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1119 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp460 [new Agent/UDP]
$ns attach-agent $n1118 $udp460
set pareto460 [new Application/Traffic/Pareto]
$pareto460 attach-agent $udp460
$pareto460 set packetSize_ 1000
$pareto460 set rate_ 224Kb
set null460 [new Agent/Null]
$ns attach-agent $n1119 $null460
$ns connect $udp460 $null460
$ns at 0.31 "$pareto460 start"

#Background: 1120 to 1121
set n1120 [$ns node]
$n1120 set-position 52.8 114.5;
set n1121 [$ns node]
$n1121 set-position 59.4 -83.2;
#Add GSL links
$n1120 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1121 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp461 [new Agent/UDP]
$ns attach-agent $n1120 $udp461
set pareto461 [new Application/Traffic/Pareto]
$pareto461 attach-agent $udp461
$pareto461 set packetSize_ 1000
$pareto461 set rate_ 224Kb
set null461 [new Agent/Null]
$ns attach-agent $n1121 $null461
$ns connect $udp461 $null461
$ns at 0.06 "$pareto461 start"

#Background: 1122 to 1123
set n1122 [$ns node]
$n1122 set-position 50.5 73.6;
set n1123 [$ns node]
$n1123 set-position 51.2 -91.8;
#Add GSL links
$n1122 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1123 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp462 [new Agent/UDP]
$ns attach-agent $n1122 $udp462
set pareto462 [new Application/Traffic/Pareto]
$pareto462 attach-agent $udp462
$pareto462 set packetSize_ 1000
$pareto462 set rate_ 224Kb
set null462 [new Agent/Null]
$ns attach-agent $n1123 $null462
$ns connect $udp462 $null462
$ns at 0.58 "$pareto462 start"

#Background: 1124 to 1125
set n1124 [$ns node]
$n1124 set-position 14.9 49.6;
set n1125 [$ns node]
$n1125 set-position 29.4 -96.4;
#Add GSL links
$n1124 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1125 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp463 [new Agent/UDP]
$ns attach-agent $n1124 $udp463
set pareto463 [new Application/Traffic/Pareto]
$pareto463 attach-agent $udp463
$pareto463 set packetSize_ 1000
$pareto463 set rate_ 224Kb
set null463 [new Agent/Null]
$ns attach-agent $n1125 $null463
$ns connect $udp463 $null463
$ns at 0.48 "$pareto463 start"

#Background: 1126 to 1127
set n1126 [$ns node]
$n1126 set-position -0.5 126.4;
set n1127 [$ns node]
$n1127 set-position 27.2 -107.7;
#Add GSL links
$n1126 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1127 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp464 [new Agent/UDP]
$ns attach-agent $n1126 $udp464
set pareto464 [new Application/Traffic/Pareto]
$pareto464 attach-agent $udp464
$pareto464 set packetSize_ 1000
$pareto464 set rate_ 224Kb
set null464 [new Agent/Null]
$ns attach-agent $n1127 $null464
$ns connect $udp464 $null464
$ns at 0.68 "$pareto464 start"

#Background: 1128 to 1129
set n1128 [$ns node]
$n1128 set-position 43.6 62.9;
set n1129 [$ns node]
$n1129 set-position 29.2 -55.8;
#Add GSL links
$n1128 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1129 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp465 [new Agent/UDP]
$ns attach-agent $n1128 $udp465
set pareto465 [new Application/Traffic/Pareto]
$pareto465 attach-agent $udp465
$pareto465 set packetSize_ 1000
$pareto465 set rate_ 224Kb
set null465 [new Agent/Null]
$ns attach-agent $n1129 $null465
$ns connect $udp465 $null465
$ns at 0.75 "$pareto465 start"

#Background: 1130 to 1131
set n1130 [$ns node]
$n1130 set-position 54.5 111.5;
set n1131 [$ns node]
$n1131 set-position 34.8 -106.8;
#Add GSL links
$n1130 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1131 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp466 [new Agent/UDP]
$ns attach-agent $n1130 $udp466
set pareto466 [new Application/Traffic/Pareto]
$pareto466 attach-agent $udp466
$pareto466 set packetSize_ 1000
$pareto466 set rate_ 224Kb
set null466 [new Agent/Null]
$ns attach-agent $n1131 $null466
$ns connect $udp466 $null466
$ns at 0.62 "$pareto466 start"

#Background: 1132 to 1133
set n1132 [$ns node]
$n1132 set-position 7.3 129.4;
set n1133 [$ns node]
$n1133 set-position 46.3 -81.6;
#Add GSL links
$n1132 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1133 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp467 [new Agent/UDP]
$ns attach-agent $n1132 $udp467
set pareto467 [new Application/Traffic/Pareto]
$pareto467 attach-agent $udp467
$pareto467 set packetSize_ 1000
$pareto467 set rate_ 224Kb
set null467 [new Agent/Null]
$ns attach-agent $n1133 $null467
$ns connect $udp467 $null467
$ns at 0.67 "$pareto467 start"

#Background: 1134 to 1135
set n1134 [$ns node]
$n1134 set-position 7.5 97.8;
set n1135 [$ns node]
$n1135 set-position -9.6 -69.6;
#Add GSL links
$n1134 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1135 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp468 [new Agent/UDP]
$ns attach-agent $n1134 $udp468
set pareto468 [new Application/Traffic/Pareto]
$pareto468 attach-agent $udp468
$pareto468 set packetSize_ 1000
$pareto468 set rate_ 224Kb
set null468 [new Agent/Null]
$ns attach-agent $n1135 $null468
$ns connect $udp468 $null468
$ns at 0.57 "$pareto468 start"

#Background: 1136 to 1137
set n1136 [$ns node]
$n1136 set-position 33.4 121.5;
set n1137 [$ns node]
$n1137 set-position -48.0 -55.7;
#Add GSL links
$n1136 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1137 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp469 [new Agent/UDP]
$ns attach-agent $n1136 $udp469
set pareto469 [new Application/Traffic/Pareto]
$pareto469 attach-agent $udp469
$pareto469 set packetSize_ 1000
$pareto469 set rate_ 224Kb
set null469 [new Agent/Null]
$ns attach-agent $n1137 $null469
$ns connect $udp469 $null469
$ns at 0.97 "$pareto469 start"

#Background: 1138 to 1139
set n1138 [$ns node]
$n1138 set-position 40.7 46.5;
set n1139 [$ns node]
$n1139 set-position -38.7 -76.9;
#Add GSL links
$n1138 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1139 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp470 [new Agent/UDP]
$ns attach-agent $n1138 $udp470
set pareto470 [new Application/Traffic/Pareto]
$pareto470 attach-agent $udp470
$pareto470 set packetSize_ 1000
$pareto470 set rate_ 224Kb
set null470 [new Agent/Null]
$ns attach-agent $n1139 $null470
$ns connect $udp470 $null470
$ns at 0.67 "$pareto470 start"

#Background: 1140 to 1141
set n1140 [$ns node]
$n1140 set-position 40.6 111.9;
set n1141 [$ns node]
$n1141 set-position -48.0 -55.7;
#Add GSL links
$n1140 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1141 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp471 [new Agent/UDP]
$ns attach-agent $n1140 $udp471
set pareto471 [new Application/Traffic/Pareto]
$pareto471 attach-agent $udp471
$pareto471 set packetSize_ 1000
$pareto471 set rate_ 224Kb
set null471 [new Agent/Null]
$ns attach-agent $n1141 $null471
$ns connect $udp471 $null471
$ns at 0.66 "$pareto471 start"

#Background: 1142 to 1143
set n1142 [$ns node]
$n1142 set-position 14.9 102.6;
set n1143 [$ns node]
$n1143 set-position -21.5 -68.2;
#Add GSL links
$n1142 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1143 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp472 [new Agent/UDP]
$ns attach-agent $n1142 $udp472
set pareto472 [new Application/Traffic/Pareto]
$pareto472 attach-agent $udp472
$pareto472 set packetSize_ 1000
$pareto472 set rate_ 224Kb
set null472 [new Agent/Null]
$ns attach-agent $n1143 $null472
$ns connect $udp472 $null472
$ns at 0.81 "$pareto472 start"

#Background: 1144 to 1145
set n1144 [$ns node]
$n1144 set-position 41.9 117.1;
set n1145 [$ns node]
$n1145 set-position -14.8 -68.9;
#Add GSL links
$n1144 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1145 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp473 [new Agent/UDP]
$ns attach-agent $n1144 $udp473
set pareto473 [new Application/Traffic/Pareto]
$pareto473 attach-agent $udp473
$pareto473 set packetSize_ 1000
$pareto473 set rate_ 224Kb
set null473 [new Agent/Null]
$ns attach-agent $n1145 $null473
$ns connect $udp473 $null473
$ns at 0.73 "$pareto473 start"

#Background: 1146 to 1147
set n1146 [$ns node]
$n1146 set-position -0.5 126.4;
set n1147 [$ns node]
$n1147 set-position 39.5 28.7;
#Add GSL links
$n1146 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1147 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp474 [new Agent/UDP]
$ns attach-agent $n1146 $udp474
set pareto474 [new Application/Traffic/Pareto]
$pareto474 attach-agent $udp474
$pareto474 set packetSize_ 1000
$pareto474 set rate_ 224Kb
set null474 [new Agent/Null]
$ns attach-agent $n1147 $null474
$ns connect $udp474 $null474
$ns at 0.65 "$pareto474 start"

#Background: 1148 to 1149
set n1148 [$ns node]
$n1148 set-position 40.3 92.8;
set n1149 [$ns node]
$n1149 set-position 41.2 -5.2;
#Add GSL links
$n1148 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1149 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp475 [new Agent/UDP]
$ns attach-agent $n1148 $udp475
set pareto475 [new Application/Traffic/Pareto]
$pareto475 attach-agent $udp475
$pareto475 set packetSize_ 1000
$pareto475 set rate_ 224Kb
set null475 [new Agent/Null]
$ns attach-agent $n1149 $null475
$ns connect $udp475 $null475
$ns at 0.14 "$pareto475 start"

#Background: 1150 to 1151
set n1150 [$ns node]
$n1150 set-position 20.0 39.5;
set n1151 [$ns node]
$n1151 set-position 44.7 7.3;
#Add GSL links
$n1150 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1151 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp476 [new Agent/UDP]
$ns attach-agent $n1150 $udp476
set pareto476 [new Application/Traffic/Pareto]
$pareto476 attach-agent $udp476
$pareto476 set packetSize_ 1000
$pareto476 set rate_ 224Kb
set null476 [new Agent/Null]
$ns attach-agent $n1151 $null476
$ns connect $udp476 $null476
$ns at 0.63 "$pareto476 start"

#Background: 1152 to 1153
set n1152 [$ns node]
$n1152 set-position 17.8 114.8;
set n1153 [$ns node]
$n1153 set-position 55.0 -6.2;
#Add GSL links
$n1152 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1153 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp477 [new Agent/UDP]
$ns attach-agent $n1152 $udp477
set pareto477 [new Application/Traffic/Pareto]
$pareto477 attach-agent $udp477
$pareto477 set packetSize_ 1000
$pareto477 set rate_ 224Kb
set null477 [new Agent/Null]
$ns attach-agent $n1153 $null477
$ns connect $udp477 $null477
$ns at 0.92 "$pareto477 start"

#Background: 1154 to 1155
set n1154 [$ns node]
$n1154 set-position 39.4 37.5;
set n1155 [$ns node]
$n1155 set-position 42.6 -5.2;
#Add GSL links
$n1154 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1155 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp478 [new Agent/UDP]
$ns attach-agent $n1154 $udp478
set pareto478 [new Application/Traffic/Pareto]
$pareto478 attach-agent $udp478
$pareto478 set packetSize_ 1000
$pareto478 set rate_ 224Kb
set null478 [new Agent/Null]
$ns attach-agent $n1155 $null478
$ns connect $udp478 $null478
$ns at 0.61 "$pareto478 start"

#Background: 1156 to 1157
set n1156 [$ns node]
$n1156 set-position 32.8 135.9;
set n1157 [$ns node]
$n1157 set-position 45.3 9.6;
#Add GSL links
$n1156 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1157 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp479 [new Agent/UDP]
$ns attach-agent $n1156 $udp479
set pareto479 [new Application/Traffic/Pareto]
$pareto479 attach-agent $udp479
$pareto479 set packetSize_ 1000
$pareto479 set rate_ 224Kb
set null479 [new Agent/Null]
$ns attach-agent $n1157 $null479
$ns connect $udp479 $null479
$ns at 0.56 "$pareto479 start"

#Background: 1158 to 1159
set n1158 [$ns node]
$n1158 set-position 0.9 118.5;
set n1159 [$ns node]
$n1159 set-position 59.5 29.9;
#Add GSL links
$n1158 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1159 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp480 [new Agent/UDP]
$ns attach-agent $n1158 $udp480
set pareto480 [new Application/Traffic/Pareto]
$pareto480 attach-agent $udp480
$pareto480 set packetSize_ 1000
$pareto480 set rate_ 224Kb
set null480 [new Agent/Null]
$ns attach-agent $n1159 $null480
$ns connect $udp480 $null480
$ns at 0.30 "$pareto480 start"

#Background: 1160 to 1161
set n1160 [$ns node]
$n1160 set-position 54.0 39.0;
set n1161 [$ns node]
$n1161 set-position 59.1 -7.5;
#Add GSL links
$n1160 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1161 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp481 [new Agent/UDP]
$ns attach-agent $n1160 $udp481
set pareto481 [new Application/Traffic/Pareto]
$pareto481 attach-agent $udp481
$pareto481 set packetSize_ 1000
$pareto481 set rate_ 224Kb
set null481 [new Agent/Null]
$ns attach-agent $n1161 $null481
$ns connect $udp481 $null481
$ns at 0.77 "$pareto481 start"

#Background: 1162 to 1163
set n1162 [$ns node]
$n1162 set-position 43.6 62.9;
set n1163 [$ns node]
$n1163 set-position 50.4 3.9;
#Add GSL links
$n1162 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1163 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp482 [new Agent/UDP]
$ns attach-agent $n1162 $udp482
set pareto482 [new Application/Traffic/Pareto]
$pareto482 attach-agent $udp482
$pareto482 set packetSize_ 1000
$pareto482 set rate_ 224Kb
set null482 [new Agent/Null]
$ns attach-agent $n1163 $null482
$ns connect $udp482 $null482
$ns at 0.85 "$pareto482 start"

#Background: 1164 to 1165
set n1164 [$ns node]
$n1164 set-position 54.5 111.5;
set n1165 [$ns node]
$n1165 set-position 56.6 13.6;
#Add GSL links
$n1164 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1165 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp483 [new Agent/UDP]
$ns attach-agent $n1164 $udp483
set pareto483 [new Application/Traffic/Pareto]
$pareto483 attach-agent $udp483
$pareto483 set packetSize_ 1000
$pareto483 set rate_ 224Kb
set null483 [new Agent/Null]
$ns attach-agent $n1165 $null483
$ns connect $udp483 $null483
$ns at 0.63 "$pareto483 start"

#Background: 1166 to 1167
set n1166 [$ns node]
$n1166 set-position 58.7 39.0;
set n1167 [$ns node]
$n1167 set-position 59.1 7.9;
#Add GSL links
$n1166 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1167 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp484 [new Agent/UDP]
$ns attach-agent $n1166 $udp484
set pareto484 [new Application/Traffic/Pareto]
$pareto484 attach-agent $udp484
$pareto484 set packetSize_ 1000
$pareto484 set rate_ 224Kb
set null484 [new Agent/Null]
$ns attach-agent $n1167 $null484
$ns connect $udp484 $null484
$ns at 0.90 "$pareto484 start"

#Background: 1168 to 1169
set n1168 [$ns node]
$n1168 set-position 18.5 78.7;
set n1169 [$ns node]
$n1169 set-position 43.2 22.3;
#Add GSL links
$n1168 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1169 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp485 [new Agent/UDP]
$ns attach-agent $n1168 $udp485
set pareto485 [new Application/Traffic/Pareto]
$pareto485 attach-agent $udp485
$pareto485 set packetSize_ 1000
$pareto485 set rate_ 224Kb
set null485 [new Agent/Null]
$ns attach-agent $n1169 $null485
$ns connect $udp485 $null485
$ns at 0.89 "$pareto485 start"

#Background: 1170 to 1171
set n1170 [$ns node]
$n1170 set-position 20.2 71.0;
set n1171 [$ns node]
$n1171 set-position 43.4 18.7;
#Add GSL links
$n1170 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1171 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp486 [new Agent/UDP]
$ns attach-agent $n1170 $udp486
set pareto486 [new Application/Traffic/Pareto]
$pareto486 attach-agent $udp486
$pareto486 set packetSize_ 1000
$pareto486 set rate_ 224Kb
set null486 [new Agent/Null]
$ns attach-agent $n1171 $null486
$ns connect $udp486 $null486
$ns at 0.07 "$pareto486 start"

#Background: 1172 to 1173
set n1172 [$ns node]
$n1172 set-position 54.5 111.5;
set n1173 [$ns node]
$n1173 set-position 58.6 32.8;
#Add GSL links
$n1172 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1173 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp487 [new Agent/UDP]
$ns attach-agent $n1172 $udp487
set pareto487 [new Application/Traffic/Pareto]
$pareto487 attach-agent $udp487
$pareto487 set packetSize_ 1000
$pareto487 set rate_ 224Kb
set null487 [new Agent/Null]
$ns attach-agent $n1173 $null487
$ns connect $udp487 $null487
$ns at 0.76 "$pareto487 start"

#Background: 1174 to 1175
set n1174 [$ns node]
$n1174 set-position 1.0 99.6;
set n1175 [$ns node]
$n1175 set-position 41.2 -5.2;
#Add GSL links
$n1174 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1175 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp488 [new Agent/UDP]
$ns attach-agent $n1174 $udp488
set pareto488 [new Application/Traffic/Pareto]
$pareto488 attach-agent $udp488
$pareto488 set packetSize_ 1000
$pareto488 set rate_ 224Kb
set null488 [new Agent/Null]
$ns attach-agent $n1175 $null488
$ns connect $udp488 $null488
$ns at 0.10 "$pareto488 start"

#Background: 1176 to 1177
set n1176 [$ns node]
$n1176 set-position 57.4 67.3;
set n1177 [$ns node]
$n1177 set-position 45.8 30.6;
#Add GSL links
$n1176 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1177 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp489 [new Agent/UDP]
$ns attach-agent $n1176 $udp489
set pareto489 [new Application/Traffic/Pareto]
$pareto489 attach-agent $udp489
$pareto489 set packetSize_ 1000
$pareto489 set rate_ 224Kb
set null489 [new Agent/Null]
$ns attach-agent $n1177 $null489
$ns connect $udp489 $null489
$ns at 0.59 "$pareto489 start"

#Background: 1178 to 1179
set n1178 [$ns node]
$n1178 set-position 37.7 95.3;
set n1179 [$ns node]
$n1179 set-position 46.3 38.5;
#Add GSL links
$n1178 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1179 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp490 [new Agent/UDP]
$ns attach-agent $n1178 $udp490
set pareto490 [new Application/Traffic/Pareto]
$pareto490 attach-agent $udp490
$pareto490 set packetSize_ 1000
$pareto490 set rate_ 224Kb
set null490 [new Agent/Null]
$ns attach-agent $n1179 $null490
$ns connect $udp490 $null490
$ns at 0.69 "$pareto490 start"

#Background: 1180 to 1181
set n1180 [$ns node]
$n1180 set-position 1.9 95.1;
set n1181 [$ns node]
$n1181 set-position 46.1 -0.4;
#Add GSL links
$n1180 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1181 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp491 [new Agent/UDP]
$ns attach-agent $n1180 $udp491
set pareto491 [new Application/Traffic/Pareto]
$pareto491 attach-agent $udp491
$pareto491 set packetSize_ 1000
$pareto491 set rate_ 224Kb
set null491 [new Agent/Null]
$ns attach-agent $n1181 $null491
$ns connect $udp491 $null491
$ns at 0.23 "$pareto491 start"

#Background: 1182 to 1183
set n1182 [$ns node]
$n1182 set-position 57.4 67.3;
set n1183 [$ns node]
$n1183 set-position 35.1 32.8;
#Add GSL links
$n1182 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1183 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp492 [new Agent/UDP]
$ns attach-agent $n1182 $udp492
set pareto492 [new Application/Traffic/Pareto]
$pareto492 attach-agent $udp492
$pareto492 set packetSize_ 1000
$pareto492 set rate_ 224Kb
set null492 [new Agent/Null]
$ns attach-agent $n1183 $null492
$ns connect $udp492 $null492
$ns at 0.28 "$pareto492 start"

#Background: 1184 to 1185
set n1184 [$ns node]
$n1184 set-position 5.6 52.2;
set n1185 [$ns node]
$n1185 set-position 46.8 7.8;
#Add GSL links
$n1184 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1185 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp493 [new Agent/UDP]
$ns attach-agent $n1184 $udp493
set pareto493 [new Application/Traffic/Pareto]
$pareto493 attach-agent $udp493
$pareto493 set packetSize_ 1000
$pareto493 set rate_ 224Kb
set null493 [new Agent/Null]
$ns attach-agent $n1185 $null493
$ns connect $udp493 $null493
$ns at 0.41 "$pareto493 start"

#Background: 1186 to 1187
set n1186 [$ns node]
$n1186 set-position 59.5 100.7;
set n1187 [$ns node]
$n1187 set-position 51.0 -5.5;
#Add GSL links
$n1186 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1187 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp494 [new Agent/UDP]
$ns attach-agent $n1186 $udp494
set pareto494 [new Application/Traffic/Pareto]
$pareto494 attach-agent $udp494
$pareto494 set packetSize_ 1000
$pareto494 set rate_ 224Kb
set null494 [new Agent/Null]
$ns attach-agent $n1187 $null494
$ns connect $udp494 $null494
$ns at 0.15 "$pareto494 start"

#Background: 1188 to 1189
set n1188 [$ns node]
$n1188 set-position 51.2 135.1;
set n1189 [$ns node]
$n1189 set-position 51.6 20.0;
#Add GSL links
$n1188 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1189 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp495 [new Agent/UDP]
$ns attach-agent $n1188 $udp495
set pareto495 [new Application/Traffic/Pareto]
$pareto495 attach-agent $udp495
$pareto495 set packetSize_ 1000
$pareto495 set rate_ 224Kb
set null495 [new Agent/Null]
$ns attach-agent $n1189 $null495
$ns connect $udp495 $null495
$ns at 0.66 "$pareto495 start"

#Background: 1190 to 1191
set n1190 [$ns node]
$n1190 set-position 20.2 71.0;
set n1191 [$ns node]
$n1191 set-position 49.8 27.4;
#Add GSL links
$n1190 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1191 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp496 [new Agent/UDP]
$ns attach-agent $n1190 $udp496
set pareto496 [new Application/Traffic/Pareto]
$pareto496 attach-agent $udp496
$pareto496 set packetSize_ 1000
$pareto496 set rate_ 224Kb
set null496 [new Agent/Null]
$ns attach-agent $n1191 $null496
$ns connect $udp496 $null496
$ns at 0.23 "$pareto496 start"

#Background: 1192 to 1193
set n1192 [$ns node]
$n1192 set-position 40.3 92.8;
set n1193 [$ns node]
$n1193 set-position 46.7 16.9;
#Add GSL links
$n1192 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1193 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp497 [new Agent/UDP]
$ns attach-agent $n1192 $udp497
set pareto497 [new Application/Traffic/Pareto]
$pareto497 attach-agent $udp497
$pareto497 set packetSize_ 1000
$pareto497 set rate_ 224Kb
set null497 [new Agent/Null]
$ns attach-agent $n1193 $null497
$ns connect $udp497 $null497
$ns at 0.99 "$pareto497 start"

#Background: 1194 to 1195
set n1194 [$ns node]
$n1194 set-position 20.0 39.5;
set n1195 [$ns node]
$n1195 set-position -15.8 18.5;
#Add GSL links
$n1194 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1195 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp498 [new Agent/UDP]
$ns attach-agent $n1194 $udp498
set pareto498 [new Application/Traffic/Pareto]
$pareto498 attach-agent $udp498
$pareto498 set packetSize_ 1000
$pareto498 set rate_ 224Kb
set null498 [new Agent/Null]
$ns attach-agent $n1195 $null498
$ns connect $udp498 $null498
$ns at 0.09 "$pareto498 start"

#Background: 1196 to 1197
set n1196 [$ns node]
$n1196 set-position 1.9 95.1;
set n1197 [$ns node]
$n1197 set-position -33.3 43.0;
#Add GSL links
$n1196 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1197 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp499 [new Agent/UDP]
$ns attach-agent $n1196 $udp499
set pareto499 [new Application/Traffic/Pareto]
$pareto499 attach-agent $udp499
$pareto499 set packetSize_ 1000
$pareto499 set rate_ 224Kb
set null499 [new Agent/Null]
$ns attach-agent $n1197 $null499
$ns connect $udp499 $null499
$ns at 0.64 "$pareto499 start"

#Background: 1198 to 1199
set n1198 [$ns node]
$n1198 set-position 29.0 99.6;
set n1199 [$ns node]
$n1199 set-position -15.8 18.5;
#Add GSL links
$n1198 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1199 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp500 [new Agent/UDP]
$ns attach-agent $n1198 $udp500
set pareto500 [new Application/Traffic/Pareto]
$pareto500 attach-agent $udp500
$pareto500 set packetSize_ 1000
$pareto500 set rate_ 224Kb
set null500 [new Agent/Null]
$ns attach-agent $n1199 $null500
$ns connect $udp500 $null500
$ns at 0.12 "$pareto500 start"

#Background: 1200 to 1201
set n1200 [$ns node]
$n1200 set-position 20.2 71.0;
set n1201 [$ns node]
$n1201 set-position 15.7 -10.1;
#Add GSL links
$n1200 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1201 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp501 [new Agent/UDP]
$ns attach-agent $n1200 $udp501
set pareto501 [new Application/Traffic/Pareto]
$pareto501 attach-agent $udp501
$pareto501 set packetSize_ 1000
$pareto501 set rate_ 224Kb
set null501 [new Agent/Null]
$ns attach-agent $n1201 $null501
$ns connect $udp501 $null501
$ns at 0.73 "$pareto501 start"

#Background: 1202 to 1203
set n1202 [$ns node]
$n1202 set-position 51.8 65.7;
set n1203 [$ns node]
$n1203 set-position 14.5 16.1;
#Add GSL links
$n1202 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1203 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp502 [new Agent/UDP]
$ns attach-agent $n1202 $udp502
set pareto502 [new Application/Traffic/Pareto]
$pareto502 attach-agent $udp502
$pareto502 set packetSize_ 1000
$pareto502 set rate_ 224Kb
set null502 [new Agent/Null]
$ns attach-agent $n1203 $null502
$ns connect $udp502 $null502
$ns at 0.65 "$pareto502 start"

#Background: 1204 to 1205
set n1204 [$ns node]
$n1204 set-position 51.8 65.7;
set n1205 [$ns node]
$n1205 set-position -15.8 18.5;
#Add GSL links
$n1204 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1205 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp503 [new Agent/UDP]
$ns attach-agent $n1204 $udp503
set pareto503 [new Application/Traffic/Pareto]
$pareto503 attach-agent $udp503
$pareto503 set packetSize_ 1000
$pareto503 set rate_ 224Kb
set null503 [new Agent/Null]
$ns attach-agent $n1205 $null503
$ns connect $udp503 $null503
$ns at 0.65 "$pareto503 start"

#Background: 1206 to 1207
set n1206 [$ns node]
$n1206 set-position 7.5 97.8;
set n1207 [$ns node]
$n1207 set-position 57.4 67.3;
#Add GSL links
$n1206 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1207 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp504 [new Agent/UDP]
$ns attach-agent $n1206 $udp504
set pareto504 [new Application/Traffic/Pareto]
$pareto504 attach-agent $udp504
$pareto504 set packetSize_ 1000
$pareto504 set rate_ 224Kb
set null504 [new Agent/Null]
$ns attach-agent $n1207 $null504
$ns connect $udp504 $null504
$ns at 0.51 "$pareto504 start"

#Background: 1208 to 1209
set n1208 [$ns node]
$n1208 set-position 41.9 117.1;
set n1209 [$ns node]
$n1209 set-position -3.9 46.0;
#Add GSL links
$n1208 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1209 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp505 [new Agent/UDP]
$ns attach-agent $n1208 $udp505
set pareto505 [new Application/Traffic/Pareto]
$pareto505 attach-agent $udp505
$pareto505 set packetSize_ 1000
$pareto505 set rate_ 224Kb
set null505 [new Agent/Null]
$ns attach-agent $n1209 $null505
$ns connect $udp505 $null505
$ns at 0.40 "$pareto505 start"

#Background: 1210 to 1211
set n1210 [$ns node]
$n1210 set-position 17.8 114.8;
set n1211 [$ns node]
$n1211 set-position 8.9 124.5;
#Add GSL links
$n1210 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1211 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp506 [new Agent/UDP]
$ns attach-agent $n1210 $udp506
set pareto506 [new Application/Traffic/Pareto]
$pareto506 attach-agent $udp506
$pareto506 set packetSize_ 1000
$pareto506 set rate_ 224Kb
set null506 [new Agent/Null]
$ns attach-agent $n1211 $null506
$ns connect $udp506 $null506
$ns at 0.93 "$pareto506 start"

#Background: 1212 to 1213
set n1212 [$ns node]
$n1212 set-position 52.8 114.5;
set n1213 [$ns node]
$n1213 set-position -0.5 126.4;
#Add GSL links
$n1212 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1213 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp507 [new Agent/UDP]
$ns attach-agent $n1212 $udp507
set pareto507 [new Application/Traffic/Pareto]
$pareto507 attach-agent $udp507
$pareto507 set packetSize_ 1000
$pareto507 set rate_ 224Kb
set null507 [new Agent/Null]
$ns attach-agent $n1213 $null507
$ns connect $udp507 $null507
$ns at 0.79 "$pareto507 start"

#Background: 1214 to 1215
set n1214 [$ns node]
$n1214 set-position 5.9 90.1;
set n1215 [$ns node]
$n1215 set-position 21.9 94.9;
#Add GSL links
$n1214 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1215 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp508 [new Agent/UDP]
$ns attach-agent $n1214 $udp508
set pareto508 [new Application/Traffic/Pareto]
$pareto508 attach-agent $udp508
$pareto508 set packetSize_ 1000
$pareto508 set rate_ 224Kb
set null508 [new Agent/Null]
$ns attach-agent $n1215 $null508
$ns connect $udp508 $null508
$ns at 0.42 "$pareto508 start"

#Background: 1216 to 1217
set n1216 [$ns node]
$n1216 set-position 14.9 102.6;
set n1217 [$ns node]
$n1217 set-position 11.2 74.7;
#Add GSL links
$n1216 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1217 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp509 [new Agent/UDP]
$ns attach-agent $n1216 $udp509
set pareto509 [new Application/Traffic/Pareto]
$pareto509 attach-agent $udp509
$pareto509 set packetSize_ 1000
$pareto509 set rate_ 224Kb
set null509 [new Agent/Null]
$ns attach-agent $n1217 $null509
$ns connect $udp509 $null509
$ns at 0.90 "$pareto509 start"

#Background: 1218 to 1219
set n1218 [$ns node]
$n1218 set-position 19.5 69.2;
set n1219 [$ns node]
$n1219 set-position 2.0 49.6;
#Add GSL links
$n1218 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1219 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp510 [new Agent/UDP]
$ns attach-agent $n1218 $udp510
set pareto510 [new Application/Traffic/Pareto]
$pareto510 attach-agent $udp510
$pareto510 set packetSize_ 1000
$pareto510 set rate_ 224Kb
set null510 [new Agent/Null]
$ns attach-agent $n1219 $null510
$ns connect $udp510 $null510
$ns at 0.85 "$pareto510 start"

#Background: 1220 to 1221
set n1220 [$ns node]
$n1220 set-position 34.3 109.7;
set n1221 [$ns node]
$n1221 set-position 18.0 94.1;
#Add GSL links
$n1220 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1221 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp511 [new Agent/UDP]
$ns attach-agent $n1220 $udp511
set pareto511 [new Application/Traffic/Pareto]
$pareto511 attach-agent $udp511
$pareto511 set packetSize_ 1000
$pareto511 set rate_ 224Kb
set null511 [new Agent/Null]
$ns attach-agent $n1221 $null511
$ns connect $udp511 $null511
$ns at 0.09 "$pareto511 start"

#Background: 1222 to 1223
set n1222 [$ns node]
$n1222 set-position 21.9 94.9;
set n1223 [$ns node]
$n1223 set-position 51.8 65.7;
#Add GSL links
$n1222 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1223 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp512 [new Agent/UDP]
$ns attach-agent $n1222 $udp512
set pareto512 [new Application/Traffic/Pareto]
$pareto512 attach-agent $udp512
$pareto512 set packetSize_ 1000
$pareto512 set rate_ 224Kb
set null512 [new Agent/Null]
$ns attach-agent $n1223 $null512
$ns connect $udp512 $null512
$ns at 0.38 "$pareto512 start"

#Background: 1224 to 1225
set n1224 [$ns node]
$n1224 set-position 51.8 65.7;
set n1225 [$ns node]
$n1225 set-position 51.8 65.7;
#Add GSL links
$n1224 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1225 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp513 [new Agent/UDP]
$ns attach-agent $n1224 $udp513
set pareto513 [new Application/Traffic/Pareto]
$pareto513 attach-agent $udp513
$pareto513 set packetSize_ 1000
$pareto513 set rate_ 224Kb
set null513 [new Agent/Null]
$ns attach-agent $n1225 $null513
$ns connect $udp513 $null513
$ns at 0.11 "$pareto513 start"

#Background: 1226 to 1227
set n1226 [$ns node]
$n1226 set-position 59.5 100.7;
set n1227 [$ns node]
$n1227 set-position 26.5 65.4;
#Add GSL links
$n1226 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1227 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp514 [new Agent/UDP]
$ns attach-agent $n1226 $udp514
set pareto514 [new Application/Traffic/Pareto]
$pareto514 attach-agent $udp514
$pareto514 set packetSize_ 1000
$pareto514 set rate_ 224Kb
set null514 [new Agent/Null]
$ns attach-agent $n1227 $null514
$ns connect $udp514 $null514
$ns at 0.37 "$pareto514 start"

#Background: 1228 to 1229
set n1228 [$ns node]
$n1228 set-position 10.2 96.9;
set n1229 [$ns node]
$n1229 set-position 52.8 114.5;
#Add GSL links
$n1228 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1229 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp515 [new Agent/UDP]
$ns attach-agent $n1228 $udp515
set pareto515 [new Application/Traffic/Pareto]
$pareto515 attach-agent $udp515
$pareto515 set packetSize_ 1000
$pareto515 set rate_ 224Kb
set null515 [new Agent/Null]
$ns attach-agent $n1229 $null515
$ns connect $udp515 $null515
$ns at 0.64 "$pareto515 start"

#Background: 1230 to 1231
set n1230 [$ns node]
$n1230 set-position 40.7 46.5;
set n1231 [$ns node]
$n1231 set-position 5.9 90.1;
#Add GSL links
$n1230 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1231 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp516 [new Agent/UDP]
$ns attach-agent $n1230 $udp516
set pareto516 [new Application/Traffic/Pareto]
$pareto516 attach-agent $udp516
$pareto516 set packetSize_ 1000
$pareto516 set rate_ 224Kb
set null516 [new Agent/Null]
$ns attach-agent $n1231 $null516
$ns connect $udp516 $null516
$ns at 0.29 "$pareto516 start"

#Background: 1232 to 1233
set n1232 [$ns node]
$n1232 set-position 21.9 94.9;
set n1233 [$ns node]
$n1233 set-position 4.2 106.5;
#Add GSL links
$n1232 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1233 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp517 [new Agent/UDP]
$ns attach-agent $n1232 $udp517
set pareto517 [new Application/Traffic/Pareto]
$pareto517 attach-agent $udp517
$pareto517 set packetSize_ 1000
$pareto517 set rate_ 224Kb
set null517 [new Agent/Null]
$ns attach-agent $n1233 $null517
$ns connect $udp517 $null517
$ns at 0.90 "$pareto517 start"

#Background: 1234 to 1235
set n1234 [$ns node]
$n1234 set-position 59.5 100.7;
set n1235 [$ns node]
$n1235 set-position -5.0 93.6;
#Add GSL links
$n1234 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1235 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp518 [new Agent/UDP]
$ns attach-agent $n1234 $udp518
set pareto518 [new Application/Traffic/Pareto]
$pareto518 attach-agent $udp518
$pareto518 set packetSize_ 1000
$pareto518 set rate_ 224Kb
set null518 [new Agent/Null]
$ns attach-agent $n1235 $null518
$ns connect $udp518 $null518
$ns at 0.77 "$pareto518 start"

#Background: 1236 to 1237
set n1236 [$ns node]
$n1236 set-position 17.1 97.3;
set n1237 [$ns node]
$n1237 set-position 21.9 94.9;
#Add GSL links
$n1236 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1237 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp519 [new Agent/UDP]
$ns attach-agent $n1236 $udp519
set pareto519 [new Application/Traffic/Pareto]
$pareto519 attach-agent $udp519
$pareto519 set packetSize_ 1000
$pareto519 set rate_ 224Kb
set null519 [new Agent/Null]
$ns attach-agent $n1237 $null519
$ns connect $udp519 $null519
$ns at 0.48 "$pareto519 start"

#Background: 1238 to 1239
set n1238 [$ns node]
$n1238 set-position 5.6 52.2;
set n1239 [$ns node]
$n1239 set-position 0.9 118.5;
#Add GSL links
$n1238 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1239 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp520 [new Agent/UDP]
$ns attach-agent $n1238 $udp520
set pareto520 [new Application/Traffic/Pareto]
$pareto520 attach-agent $udp520
$pareto520 set packetSize_ 1000
$pareto520 set rate_ 224Kb
set null520 [new Agent/Null]
$ns attach-agent $n1239 $null520
$ns connect $udp520 $null520
$ns at 0.19 "$pareto520 start"

#Background: 1240 to 1241
set n1240 [$ns node]
$n1240 set-position -1.3 138.0;
set n1241 [$ns node]
$n1241 set-position 32.8 135.9;
#Add GSL links
$n1240 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1241 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp521 [new Agent/UDP]
$ns attach-agent $n1240 $udp521
set pareto521 [new Application/Traffic/Pareto]
$pareto521 attach-agent $udp521
$pareto521 set packetSize_ 1000
$pareto521 set rate_ 224Kb
set null521 [new Agent/Null]
$ns attach-agent $n1241 $null521
$ns connect $udp521 $null521
$ns at 0.06 "$pareto521 start"

#Background: 1242 to 1243
set n1242 [$ns node]
$n1242 set-position 20.2 71.0;
set n1243 [$ns node]
$n1243 set-position 2.7 123.2;
#Add GSL links
$n1242 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1243 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp522 [new Agent/UDP]
$ns attach-agent $n1242 $udp522
set pareto522 [new Application/Traffic/Pareto]
$pareto522 attach-agent $udp522
$pareto522 set packetSize_ 1000
$pareto522 set rate_ 224Kb
set null522 [new Agent/Null]
$ns attach-agent $n1243 $null522
$ns connect $udp522 $null522
$ns at 0.86 "$pareto522 start"

#Background: 1244 to 1245
set n1244 [$ns node]
$n1244 set-position 41.9 117.1;
set n1245 [$ns node]
$n1245 set-position 54.5 111.5;
#Add GSL links
$n1244 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1245 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp523 [new Agent/UDP]
$ns attach-agent $n1244 $udp523
set pareto523 [new Application/Traffic/Pareto]
$pareto523 attach-agent $udp523
$pareto523 set packetSize_ 1000
$pareto523 set rate_ 224Kb
set null523 [new Agent/Null]
$ns attach-agent $n1245 $null523
$ns connect $udp523 $null523
$ns at 0.39 "$pareto523 start"

#Background: 1246 to 1247
set n1246 [$ns node]
$n1246 set-position 43.6 62.9;
set n1247 [$ns node]
$n1247 set-position 2.0 49.6;
#Add GSL links
$n1246 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1247 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp524 [new Agent/UDP]
$ns attach-agent $n1246 $udp524
set pareto524 [new Application/Traffic/Pareto]
$pareto524 attach-agent $udp524
$pareto524 set packetSize_ 1000
$pareto524 set rate_ 224Kb
set null524 [new Agent/Null]
$ns attach-agent $n1247 $null524
$ns connect $udp524 $null524
$ns at 0.53 "$pareto524 start"

#Background: 1248 to 1249
set n1248 [$ns node]
$n1248 set-position 41.9 117.1;
set n1249 [$ns node]
$n1249 set-position 33.4 121.5;
#Add GSL links
$n1248 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1249 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp525 [new Agent/UDP]
$ns attach-agent $n1248 $udp525
set pareto525 [new Application/Traffic/Pareto]
$pareto525 attach-agent $udp525
$pareto525 set packetSize_ 1000
$pareto525 set rate_ 224Kb
set null525 [new Agent/Null]
$ns attach-agent $n1249 $null525
$ns connect $udp525 $null525
$ns at 0.47 "$pareto525 start"

#Background: 1250 to 1251
set n1250 [$ns node]
$n1250 set-position 21.1 43.7;
set n1251 [$ns node]
$n1251 set-position -0.5 126.4;
#Add GSL links
$n1250 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1251 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp526 [new Agent/UDP]
$ns attach-agent $n1250 $udp526
set pareto526 [new Application/Traffic/Pareto]
$pareto526 attach-agent $udp526
$pareto526 set packetSize_ 1000
$pareto526 set rate_ 224Kb
set null526 [new Agent/Null]
$ns attach-agent $n1251 $null526
$ns connect $udp526 $null526
$ns at 0.89 "$pareto526 start"

#Background: 1252 to 1253
set n1252 [$ns node]
$n1252 set-position 26.5 65.4;
set n1253 [$ns node]
$n1253 set-position 1.9 95.1;
#Add GSL links
$n1252 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1253 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp527 [new Agent/UDP]
$ns attach-agent $n1252 $udp527
set pareto527 [new Application/Traffic/Pareto]
$pareto527 attach-agent $udp527
$pareto527 set packetSize_ 1000
$pareto527 set rate_ 224Kb
set null527 [new Agent/Null]
$ns attach-agent $n1253 $null527
$ns connect $udp527 $null527
$ns at 0.52 "$pareto527 start"

#Background: 1254 to 1255
set n1254 [$ns node]
$n1254 set-position 1.0 99.6;
set n1255 [$ns node]
$n1255 set-position 26.5 65.4;
#Add GSL links
$n1254 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1255 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp528 [new Agent/UDP]
$ns attach-agent $n1254 $udp528
set pareto528 [new Application/Traffic/Pareto]
$pareto528 attach-agent $udp528
$pareto528 set packetSize_ 1000
$pareto528 set rate_ 224Kb
set null528 [new Agent/Null]
$ns attach-agent $n1255 $null528
$ns connect $udp528 $null528
$ns at 0.37 "$pareto528 start"

#Background: 1256 to 1257
set n1256 [$ns node]
$n1256 set-position 14.6 93.9;
set n1257 [$ns node]
$n1257 set-position 14.1 139.4;
#Add GSL links
$n1256 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1257 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp529 [new Agent/UDP]
$ns attach-agent $n1256 $udp529
set pareto529 [new Application/Traffic/Pareto]
$pareto529 attach-agent $udp529
$pareto529 set packetSize_ 1000
$pareto529 set rate_ 224Kb
set null529 [new Agent/Null]
$ns attach-agent $n1257 $null529
$ns connect $udp529 $null529
$ns at 0.04 "$pareto529 start"

#Background: 1258 to 1259
set n1258 [$ns node]
$n1258 set-position 35.7 97.0;
set n1259 [$ns node]
$n1259 set-position 57.4 67.3;
#Add GSL links
$n1258 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1259 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp530 [new Agent/UDP]
$ns attach-agent $n1258 $udp530
set pareto530 [new Application/Traffic/Pareto]
$pareto530 attach-agent $udp530
$pareto530 set packetSize_ 1000
$pareto530 set rate_ 224Kb
set null530 [new Agent/Null]
$ns attach-agent $n1259 $null530
$ns connect $udp530 $null530
$ns at 0.17 "$pareto530 start"

#Background: 1260 to 1261
set n1260 [$ns node]
$n1260 set-position 58.7 39.0;
set n1261 [$ns node]
$n1261 set-position 37.7 95.3;
#Add GSL links
$n1260 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1261 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp531 [new Agent/UDP]
$ns attach-agent $n1260 $udp531
set pareto531 [new Application/Traffic/Pareto]
$pareto531 attach-agent $udp531
$pareto531 set packetSize_ 1000
$pareto531 set rate_ 224Kb
set null531 [new Agent/Null]
$ns attach-agent $n1261 $null531
$ns connect $udp531 $null531
$ns at 0.41 "$pareto531 start"

#Background: 1262 to 1263
set n1262 [$ns node]
$n1262 set-position 54.5 111.5;
set n1263 [$ns node]
$n1263 set-position -5.0 93.6;
#Add GSL links
$n1262 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1263 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp532 [new Agent/UDP]
$ns attach-agent $n1262 $udp532
set pareto532 [new Application/Traffic/Pareto]
$pareto532 attach-agent $udp532
$pareto532 set packetSize_ 1000
$pareto532 set rate_ 224Kb
set null532 [new Agent/Null]
$ns attach-agent $n1263 $null532
$ns connect $udp532 $null532
$ns at 0.01 "$pareto532 start"

#Background: 1264 to 1265
set n1264 [$ns node]
$n1264 set-position 2.0 49.6;
set n1265 [$ns node]
$n1265 set-position -5.0 93.6;
#Add GSL links
$n1264 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1265 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp533 [new Agent/UDP]
$ns attach-agent $n1264 $udp533
set pareto533 [new Application/Traffic/Pareto]
$pareto533 attach-agent $udp533
$pareto533 set packetSize_ 1000
$pareto533 set rate_ 224Kb
set null533 [new Agent/Null]
$ns attach-agent $n1265 $null533
$ns connect $udp533 $null533
$ns at 0.61 "$pareto533 start"

#Background: 1266 to 1267
set n1266 [$ns node]
$n1266 set-position 20.2 71.0;
set n1267 [$ns node]
$n1267 set-position -3.9 46.0;
#Add GSL links
$n1266 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1267 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp534 [new Agent/UDP]
$ns attach-agent $n1266 $udp534
set pareto534 [new Application/Traffic/Pareto]
$pareto534 attach-agent $udp534
$pareto534 set packetSize_ 1000
$pareto534 set rate_ 224Kb
set null534 [new Agent/Null]
$ns attach-agent $n1267 $null534
$ns connect $udp534 $null534
$ns at 0.91 "$pareto534 start"

#Background: 1268 to 1269
set n1268 [$ns node]
$n1268 set-position 14.6 93.9;
set n1269 [$ns node]
$n1269 set-position 31.1 99.5;
#Add GSL links
$n1268 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1269 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp535 [new Agent/UDP]
$ns attach-agent $n1268 $udp535
set pareto535 [new Application/Traffic/Pareto]
$pareto535 attach-agent $udp535
$pareto535 set packetSize_ 1000
$pareto535 set rate_ 224Kb
set null535 [new Agent/Null]
$ns attach-agent $n1269 $null535
$ns connect $udp535 $null535
$ns at 0.38 "$pareto535 start"

#Background: 1270 to 1271
set n1270 [$ns node]
$n1270 set-position 52.8 114.5;
set n1271 [$ns node]
$n1271 set-position 54.5 111.5;
#Add GSL links
$n1270 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1271 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp536 [new Agent/UDP]
$ns attach-agent $n1270 $udp536
set pareto536 [new Application/Traffic/Pareto]
$pareto536 attach-agent $udp536
$pareto536 set packetSize_ 1000
$pareto536 set rate_ 224Kb
set null536 [new Agent/Null]
$ns attach-agent $n1271 $null536
$ns connect $udp536 $null536
$ns at 0.99 "$pareto536 start"

#Background: 1272 to 1273
set n1272 [$ns node]
$n1272 set-position 5.6 52.2;
set n1273 [$ns node]
$n1273 set-position 39.4 37.5;
#Add GSL links
$n1272 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1273 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp537 [new Agent/UDP]
$ns attach-agent $n1272 $udp537
set pareto537 [new Application/Traffic/Pareto]
$pareto537 attach-agent $udp537
$pareto537 set packetSize_ 1000
$pareto537 set rate_ 224Kb
set null537 [new Agent/Null]
$ns attach-agent $n1273 $null537
$ns connect $udp537 $null537
$ns at 0.67 "$pareto537 start"

#Background: 1274 to 1275
set n1274 [$ns node]
$n1274 set-position 21.9 94.9;
set n1275 [$ns node]
$n1275 set-position 31.4 136.5;
#Add GSL links
$n1274 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1275 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp538 [new Agent/UDP]
$ns attach-agent $n1274 $udp538
set pareto538 [new Application/Traffic/Pareto]
$pareto538 attach-agent $udp538
$pareto538 set packetSize_ 1000
$pareto538 set rate_ 224Kb
set null538 [new Agent/Null]
$ns attach-agent $n1275 $null538
$ns connect $udp538 $null538
$ns at 0.22 "$pareto538 start"

#Background: 1276 to 1277
set n1276 [$ns node]
$n1276 set-position -5.0 93.6;
set n1277 [$ns node]
$n1277 set-position 20.0 39.5;
#Add GSL links
$n1276 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1277 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp539 [new Agent/UDP]
$ns attach-agent $n1276 $udp539
set pareto539 [new Application/Traffic/Pareto]
$pareto539 attach-agent $udp539
$pareto539 set packetSize_ 1000
$pareto539 set rate_ 224Kb
set null539 [new Agent/Null]
$ns attach-agent $n1277 $null539
$ns connect $udp539 $null539
$ns at 0.57 "$pareto539 start"

#Background: 1278 to 1279
set n1278 [$ns node]
$n1278 set-position -1.3 138.0;
set n1279 [$ns node]
$n1279 set-position 33.4 121.5;
#Add GSL links
$n1278 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1279 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp540 [new Agent/UDP]
$ns attach-agent $n1278 $udp540
set pareto540 [new Application/Traffic/Pareto]
$pareto540 attach-agent $udp540
$pareto540 set packetSize_ 1000
$pareto540 set rate_ 224Kb
set null540 [new Agent/Null]
$ns attach-agent $n1279 $null540
$ns connect $udp540 $null540
$ns at 0.63 "$pareto540 start"

#Background: 1280 to 1281
set n1280 [$ns node]
$n1280 set-position 7.3 129.4;
set n1281 [$ns node]
$n1281 set-position 5.9 90.1;
#Add GSL links
$n1280 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1281 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp541 [new Agent/UDP]
$ns attach-agent $n1280 $udp541
set pareto541 [new Application/Traffic/Pareto]
$pareto541 attach-agent $udp541
$pareto541 set packetSize_ 1000
$pareto541 set rate_ 224Kb
set null541 [new Agent/Null]
$ns attach-agent $n1281 $null541
$ns connect $udp541 $null541
$ns at 0.77 "$pareto541 start"

#Background: 1282 to 1283
set n1282 [$ns node]
$n1282 set-position 2.7 123.2;
set n1283 [$ns node]
$n1283 set-position 7.5 97.8;
#Add GSL links
$n1282 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1283 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp542 [new Agent/UDP]
$ns attach-agent $n1282 $udp542
set pareto542 [new Application/Traffic/Pareto]
$pareto542 attach-agent $udp542
$pareto542 set packetSize_ 1000
$pareto542 set rate_ 224Kb
set null542 [new Agent/Null]
$ns attach-agent $n1283 $null542
$ns connect $udp542 $null542
$ns at 0.13 "$pareto542 start"

#Background: 1284 to 1285
set n1284 [$ns node]
$n1284 set-position 40.6 111.9;
set n1285 [$ns node]
$n1285 set-position 11.2 74.7;
#Add GSL links
$n1284 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1285 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp543 [new Agent/UDP]
$ns attach-agent $n1284 $udp543
set pareto543 [new Application/Traffic/Pareto]
$pareto543 attach-agent $udp543
$pareto543 set packetSize_ 1000
$pareto543 set rate_ 224Kb
set null543 [new Agent/Null]
$ns attach-agent $n1285 $null543
$ns connect $udp543 $null543
$ns at 0.57 "$pareto543 start"

#Background: 1286 to 1287
set n1286 [$ns node]
$n1286 set-position 21.1 43.7;
set n1287 [$ns node]
$n1287 set-position 0.9 118.5;
#Add GSL links
$n1286 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1287 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp544 [new Agent/UDP]
$ns attach-agent $n1286 $udp544
set pareto544 [new Application/Traffic/Pareto]
$pareto544 attach-agent $udp544
$pareto544 set packetSize_ 1000
$pareto544 set rate_ 224Kb
set null544 [new Agent/Null]
$ns attach-agent $n1287 $null544
$ns connect $udp544 $null544
$ns at 0.72 "$pareto544 start"

#Background: 1288 to 1289
set n1288 [$ns node]
$n1288 set-position 51.2 135.1;
set n1289 [$ns node]
$n1289 set-position 29.0 99.6;
#Add GSL links
$n1288 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1289 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp545 [new Agent/UDP]
$ns attach-agent $n1288 $udp545
set pareto545 [new Application/Traffic/Pareto]
$pareto545 attach-agent $udp545
$pareto545 set packetSize_ 1000
$pareto545 set rate_ 224Kb
set null545 [new Agent/Null]
$ns attach-agent $n1289 $null545
$ns connect $udp545 $null545
$ns at 0.48 "$pareto545 start"

#Background: 1290 to 1291
set n1290 [$ns node]
$n1290 set-position 17.8 114.8;
set n1291 [$ns node]
$n1291 set-position 23.3 64.0;
#Add GSL links
$n1290 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1291 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp546 [new Agent/UDP]
$ns attach-agent $n1290 $udp546
set pareto546 [new Application/Traffic/Pareto]
$pareto546 attach-agent $udp546
$pareto546 set packetSize_ 1000
$pareto546 set rate_ 224Kb
set null546 [new Agent/Null]
$ns attach-agent $n1291 $null546
$ns connect $udp546 $null546
$ns at 0.48 "$pareto546 start"

#Background: 1292 to 1293
set n1292 [$ns node]
$n1292 set-position 7.3 129.4;
set n1293 [$ns node]
$n1293 set-position -1.3 138.0;
#Add GSL links
$n1292 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1293 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp547 [new Agent/UDP]
$ns attach-agent $n1292 $udp547
set pareto547 [new Application/Traffic/Pareto]
$pareto547 attach-agent $udp547
$pareto547 set packetSize_ 1000
$pareto547 set rate_ 224Kb
set null547 [new Agent/Null]
$ns attach-agent $n1293 $null547
$ns connect $udp547 $null547
$ns at 0.55 "$pareto547 start"

#Background: 1294 to 1295
set n1294 [$ns node]
$n1294 set-position 19.5 69.2;
set n1295 [$ns node]
$n1295 set-position 1.9 95.1;
#Add GSL links
$n1294 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1295 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp548 [new Agent/UDP]
$ns attach-agent $n1294 $udp548
set pareto548 [new Application/Traffic/Pareto]
$pareto548 attach-agent $udp548
$pareto548 set packetSize_ 1000
$pareto548 set rate_ 224Kb
set null548 [new Agent/Null]
$ns attach-agent $n1295 $null548
$ns connect $udp548 $null548
$ns at 0.06 "$pareto548 start"

#Background: 1296 to 1297
set n1296 [$ns node]
$n1296 set-position 17.1 97.3;
set n1297 [$ns node]
$n1297 set-position 54.5 111.5;
#Add GSL links
$n1296 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1297 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp549 [new Agent/UDP]
$ns attach-agent $n1296 $udp549
set pareto549 [new Application/Traffic/Pareto]
$pareto549 attach-agent $udp549
$pareto549 set packetSize_ 1000
$pareto549 set rate_ 224Kb
set null549 [new Agent/Null]
$ns attach-agent $n1297 $null549
$ns connect $udp549 $null549
$ns at 0.31 "$pareto549 start"

#Background: 1298 to 1299
set n1298 [$ns node]
$n1298 set-position 21.1 43.7;
set n1299 [$ns node]
$n1299 set-position 10.2 96.9;
#Add GSL links
$n1298 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1299 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp550 [new Agent/UDP]
$ns attach-agent $n1298 $udp550
set pareto550 [new Application/Traffic/Pareto]
$pareto550 attach-agent $udp550
$pareto550 set packetSize_ 1000
$pareto550 set rate_ 224Kb
set null550 [new Agent/Null]
$ns attach-agent $n1299 $null550
$ns connect $udp550 $null550
$ns at 0.78 "$pareto550 start"

#Background: 1300 to 1301
set n1300 [$ns node]
$n1300 set-position 50.5 73.6;
set n1301 [$ns node]
$n1301 set-position 22.5 107.5;
#Add GSL links
$n1300 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1301 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp551 [new Agent/UDP]
$ns attach-agent $n1300 $udp551
set pareto551 [new Application/Traffic/Pareto]
$pareto551 attach-agent $udp551
$pareto551 set packetSize_ 1000
$pareto551 set rate_ 224Kb
set null551 [new Agent/Null]
$ns attach-agent $n1301 $null551
$ns connect $udp551 $null551
$ns at 0.71 "$pareto551 start"

#Background: 1302 to 1303
set n1302 [$ns node]
$n1302 set-position 10.2 96.9;
set n1303 [$ns node]
$n1303 set-position -26.7 131.4;
#Add GSL links
$n1302 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1303 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp552 [new Agent/UDP]
$ns attach-agent $n1302 $udp552
set pareto552 [new Application/Traffic/Pareto]
$pareto552 attach-agent $udp552
$pareto552 set packetSize_ 1000
$pareto552 set rate_ 224Kb
set null552 [new Agent/Null]
$ns attach-agent $n1303 $null552
$ns connect $udp552 $null552
$ns at 0.64 "$pareto552 start"

#Background: 1304 to 1305
set n1304 [$ns node]
$n1304 set-position 14.1 139.4;
set n1305 [$ns node]
$n1305 set-position -26.7 131.4;
#Add GSL links
$n1304 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1305 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp553 [new Agent/UDP]
$ns attach-agent $n1304 $udp553
set pareto553 [new Application/Traffic/Pareto]
$pareto553 attach-agent $udp553
$pareto553 set packetSize_ 1000
$pareto553 set rate_ 224Kb
set null553 [new Agent/Null]
$ns attach-agent $n1305 $null553
$ns connect $udp553 $null553
$ns at 0.48 "$pareto553 start"

#Background: 1306 to 1307
set n1306 [$ns node]
$n1306 set-position 40.6 111.9;
set n1307 [$ns node]
$n1307 set-position -26.7 131.4;
#Add GSL links
$n1306 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1307 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp554 [new Agent/UDP]
$ns attach-agent $n1306 $udp554
set pareto554 [new Application/Traffic/Pareto]
$pareto554 attach-agent $udp554
$pareto554 set packetSize_ 1000
$pareto554 set rate_ 224Kb
set null554 [new Agent/Null]
$ns attach-agent $n1307 $null554
$ns connect $udp554 $null554
$ns at 0.09 "$pareto554 start"

#Background: 1308 to 1309
set n1308 [$ns node]
$n1308 set-position 15.0 78.0;
set n1309 [$ns node]
$n1309 set-position -43.0 165.8;
#Add GSL links
$n1308 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1309 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp555 [new Agent/UDP]
$ns attach-agent $n1308 $udp555
set pareto555 [new Application/Traffic/Pareto]
$pareto555 attach-agent $udp555
$pareto555 set packetSize_ 1000
$pareto555 set rate_ 224Kb
set null555 [new Agent/Null]
$ns attach-agent $n1309 $null555
$ns connect $udp555 $null555
$ns at 0.04 "$pareto555 start"

#Background: 1310 to 1311
set n1310 [$ns node]
$n1310 set-position 15.0 78.0;
set n1311 [$ns node]
$n1311 set-position -16.3 111.7;
#Add GSL links
$n1310 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1311 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp556 [new Agent/UDP]
$ns attach-agent $n1310 $udp556
set pareto556 [new Application/Traffic/Pareto]
$pareto556 attach-agent $udp556
$pareto556 set packetSize_ 1000
$pareto556 set rate_ 224Kb
set null556 [new Agent/Null]
$ns attach-agent $n1311 $null556
$ns connect $udp556 $null556
$ns at 0.34 "$pareto556 start"

#Background: 1312 to 1313
set n1312 [$ns node]
$n1312 set-position 21.1 43.7;
set n1313 [$ns node]
$n1313 set-position -5.3 112.2;
#Add GSL links
$n1312 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1313 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp557 [new Agent/UDP]
$ns attach-agent $n1312 $udp557
set pareto557 [new Application/Traffic/Pareto]
$pareto557 attach-agent $udp557
$pareto557 set packetSize_ 1000
$pareto557 set rate_ 224Kb
set null557 [new Agent/Null]
$ns attach-agent $n1313 $null557
$ns connect $udp557 $null557
$ns at 0.34 "$pareto557 start"

#Background: 1314 to 1315
set n1314 [$ns node]
$n1314 set-position -16.3 111.7;
set n1315 [$ns node]
$n1315 set-position 51.7 -60.4;
#Add GSL links
$n1314 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1315 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp558 [new Agent/UDP]
$ns attach-agent $n1314 $udp558
set pareto558 [new Application/Traffic/Pareto]
$pareto558 attach-agent $udp558
$pareto558 set packetSize_ 1000
$pareto558 set rate_ 224Kb
set null558 [new Agent/Null]
$ns attach-agent $n1315 $null558
$ns connect $udp558 $null558
$ns at 0.10 "$pareto558 start"

#Background: 1316 to 1317
set n1316 [$ns node]
$n1316 set-position -5.3 112.2;
set n1317 [$ns node]
$n1317 set-position 23.1 -112.1;
#Add GSL links
$n1316 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1317 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp559 [new Agent/UDP]
$ns attach-agent $n1316 $udp559
set pareto559 [new Application/Traffic/Pareto]
$pareto559 attach-agent $udp559
$pareto559 set packetSize_ 1000
$pareto559 set rate_ 224Kb
set null559 [new Agent/Null]
$ns attach-agent $n1317 $null559
$ns connect $udp559 $null559
$ns at 0.51 "$pareto559 start"

#Background: 1318 to 1319
set n1318 [$ns node]
$n1318 set-position -23.8 130.8;
set n1319 [$ns node]
$n1319 set-position 31.8 -127.1;
#Add GSL links
$n1318 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1319 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp560 [new Agent/UDP]
$ns attach-agent $n1318 $udp560
set pareto560 [new Application/Traffic/Pareto]
$pareto560 attach-agent $udp560
$pareto560 set packetSize_ 1000
$pareto560 set rate_ 224Kb
set null560 [new Agent/Null]
$ns attach-agent $n1319 $null560
$ns connect $udp560 $null560
$ns at 0.12 "$pareto560 start"

#Background: 1320 to 1321
set n1320 [$ns node]
$n1320 set-position -16.3 111.7;
set n1321 [$ns node]
$n1321 set-position 47.2 -58.8;
#Add GSL links
$n1320 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1321 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp561 [new Agent/UDP]
$ns attach-agent $n1320 $udp561
set pareto561 [new Application/Traffic/Pareto]
$pareto561 attach-agent $udp561
$pareto561 set packetSize_ 1000
$pareto561 set rate_ 224Kb
set null561 [new Agent/Null]
$ns attach-agent $n1321 $null561
$ns connect $udp561 $null561
$ns at 0.11 "$pareto561 start"

#Background: 1322 to 1323
set n1322 [$ns node]
$n1322 set-position -32.5 163.2;
set n1323 [$ns node]
$n1323 set-position 25.1 -68.6;
#Add GSL links
$n1322 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1323 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp562 [new Agent/UDP]
$ns attach-agent $n1322 $udp562
set pareto562 [new Application/Traffic/Pareto]
$pareto562 attach-agent $udp562
$pareto562 set packetSize_ 1000
$pareto562 set rate_ 224Kb
set null563 [new Agent/Null]
$ns attach-agent $n1323 $null562
$ns connect $udp562 $null562
$ns at 0.41 "$pareto562 start"

#Background: 1324 to 1325
set n1324 [$ns node]
$n1324 set-position -26.7 131.4;
set n1325 [$ns node]
$n1325 set-position 55.8 -110.0;
#Add GSL links
$n1324 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1325 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp563 [new Agent/UDP]
$ns attach-agent $n1324 $udp563
set pareto563 [new Application/Traffic/Pareto]
$pareto563 attach-agent $udp563
$pareto563 set packetSize_ 1000
$pareto563 set rate_ 224Kb
set null563 [new Agent/Null]
$ns attach-agent $n1325 $null563
$ns connect $udp563 $null563
$ns at 0.04 "$pareto563 start"

#Background: 1326 to 1327
set n1326 [$ns node]
$n1326 set-position -13.0 173.4;
set n1327 [$ns node]
$n1327 set-position 29.4 -102.7;
#Add GSL links
$n1326 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1327 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp564 [new Agent/UDP]
$ns attach-agent $n1326 $udp564
set pareto564 [new Application/Traffic/Pareto]
$pareto564 attach-agent $udp564
$pareto564 set packetSize_ 1000
$pareto564 set rate_ 224Kb
set null564 [new Agent/Null]
$ns attach-agent $n1327 $null564
$ns connect $udp564 $null564
$ns at 0.13 "$pareto564 start"

#Background: 1328 to 1329
set n1328 [$ns node]
$n1328 set-position -13.9 171.4;
set n1329 [$ns node]
$n1329 set-position -49.6 -42.5;
#Add GSL links
$n1328 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1329 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp565 [new Agent/UDP]
$ns attach-agent $n1328 $udp565
set pareto565 [new Application/Traffic/Pareto]
$pareto565 attach-agent $udp565
$pareto565 set packetSize_ 1000
$pareto565 set rate_ 224Kb
set null565 [new Agent/Null]
$ns attach-agent $n1329 $null565
$ns connect $udp565 $null565
$ns at 0.10 "$pareto565 start"

#Background: 1330 to 1331
set n1330 [$ns node]
$n1330 set-position -32.5 163.2;
set n1331 [$ns node]
$n1331 set-position 57.6 22.5;
#Add GSL links
$n1330 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1331 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp566 [new Agent/UDP]
$ns attach-agent $n1330 $udp566
set pareto566 [new Application/Traffic/Pareto]
$pareto566 attach-agent $udp566
$pareto566 set packetSize_ 1000
$pareto566 set rate_ 224Kb
set null566 [new Agent/Null]
$ns attach-agent $n1331 $null566
$ns connect $udp566 $null566
$ns at 0.34 "$pareto566 start"

#Background: 1332 to 1333
set n1332 [$ns node]
$n1332 set-position -13.9 171.4;
set n1333 [$ns node]
$n1333 set-position 59.5 29.9;
#Add GSL links
$n1332 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1333 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp567 [new Agent/UDP]
$ns attach-agent $n1332 $udp567
set pareto567 [new Application/Traffic/Pareto]
$pareto567 attach-agent $udp567
$pareto567 set packetSize_ 1000
$pareto567 set rate_ 224Kb
set null567 [new Agent/Null]
$ns attach-agent $n1333 $null567
$ns connect $udp567 $null567
$ns at 0.36 "$pareto567 start"

#Background: 1334 to 1335
set n1334 [$ns node]
$n1334 set-position -13.9 171.4;
set n1335 [$ns node]
$n1335 set-position 59.1 -7.5;
#Add GSL links
$n1334 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1335 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp568 [new Agent/UDP]
$ns attach-agent $n1334 $udp568
set pareto568 [new Application/Traffic/Pareto]
$pareto568 attach-agent $udp568
$pareto568 set packetSize_ 1000
$pareto568 set rate_ 224Kb
set null568 [new Agent/Null]
$ns attach-agent $n1335 $null568
$ns connect $udp568 $null568
$ns at 0.85 "$pareto568 start"

#Background: 1336 to 1337
set n1336 [$ns node]
$n1336 set-position -14.0 169.5;
set n1337 [$ns node]
$n1337 set-position 46.1 37.9;
#Add GSL links
$n1336 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1337 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp569 [new Agent/UDP]
$ns attach-agent $n1336 $udp569
set pareto569 [new Application/Traffic/Pareto]
$pareto569 attach-agent $udp569
$pareto569 set packetSize_ 1000
$pareto569 set rate_ 224Kb
set null569 [new Agent/Null]
$ns attach-agent $n1337 $null569
$ns connect $udp569 $null569
$ns at 0.53 "$pareto569 start"

#Background: 1338 to 1339
set n1338 [$ns node]
$n1338 set-position -5.3 112.2;
set n1339 [$ns node]
$n1339 set-position 46.7 16.9;
#Add GSL links
$n1338 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1339 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp570 [new Agent/UDP]
$ns attach-agent $n1338 $udp570
set pareto570 [new Application/Traffic/Pareto]
$pareto570 attach-agent $udp570
$pareto570 set packetSize_ 1000
$pareto570 set rate_ 224Kb
set null570 [new Agent/Null]
$ns attach-agent $n1339 $null570
$ns connect $udp570 $null570
$ns at 0.47 "$pareto570 start"

#Background: 1340 to 1341
set n1340 [$ns node]
$n1340 set-position -7.9 123.2;
set n1341 [$ns node]
$n1341 set-position -24.8 26.4;
#Add GSL links
$n1340 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1341 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp571 [new Agent/UDP]
$ns attach-agent $n1340 $udp571
set pareto571 [new Application/Traffic/Pareto]
$pareto571 attach-agent $udp571
$pareto571 set packetSize_ 1000
$pareto571 set rate_ 224Kb
set null571 [new Agent/Null]
$ns attach-agent $n1341 $null571
$ns connect $udp571 $null571
$ns at 0.32 "$pareto571 start"

#Background: 1342 to 1343
set n1342 [$ns node]
$n1342 set-position -13.9 119.8;
set n1343 [$ns node]
$n1343 set-position 19.5 69.2;
#Add GSL links
$n1342 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1343 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp572 [new Agent/UDP]
$ns attach-agent $n1342 $udp572
set pareto572 [new Application/Traffic/Pareto]
$pareto572 attach-agent $udp572
$pareto572 set packetSize_ 1000
$pareto572 set rate_ 224Kb
set null572 [new Agent/Null]
$ns attach-agent $n1343 $null572
$ns connect $udp572 $null572
$ns at 0.35 "$pareto572 start"

#Background: 1344 to 1345
set n1344 [$ns node]
$n1344 set-position -40.5 165.0;
set n1345 [$ns node]
$n1345 set-position 19.5 69.2;
#Add GSL links
$n1344 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1345 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp573 [new Agent/UDP]
$ns attach-agent $n1344 $udp573
set pareto573 [new Application/Traffic/Pareto]
$pareto573 attach-agent $udp573
$pareto573 set packetSize_ 1000
$pareto573 set rate_ 224Kb
set null573 [new Agent/Null]
$ns attach-agent $n1345 $null573
$ns connect $udp573 $null573
$ns at 0.73 "$pareto573 start"

#Background: 1346 to 1347
set n1346 [$ns node]
$n1346 set-position -36.8 163.6;
set n1347 [$ns node]
$n1347 set-position 26.5 65.4;
#Add GSL links
$n1346 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1347 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp574 [new Agent/UDP]
$ns attach-agent $n1346 $udp574
set pareto574 [new Application/Traffic/Pareto]
$pareto574 attach-agent $udp574
$pareto574 set packetSize_ 1000
$pareto574 set rate_ 224Kb
set null574 [new Agent/Null]
$ns attach-agent $n1347 $null574
$ns connect $udp574 $null574
$ns at 0.04 "$pareto574 start"

#Background: 1348 to 1349
set n1348 [$ns node]
$n1348 set-position -36.8 163.6;
set n1349 [$ns node]
$n1349 set-position 31.4 136.5;
#Add GSL links
$n1348 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1349 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp575 [new Agent/UDP]
$ns attach-agent $n1348 $udp575
set pareto575 [new Application/Traffic/Pareto]
$pareto575 attach-agent $udp575
$pareto575 set packetSize_ 1000
$pareto575 set rate_ 224Kb
set null575 [new Agent/Null]
$ns attach-agent $n1349 $null575
$ns connect $udp575 $null575
$ns at 0.03 "$pareto575 start"

#Background: 1350 to 1351
set n1350 [$ns node]
$n1350 set-position -43.0 165.8;
set n1351 [$ns node]
$n1351 set-position 51.2 135.1;
#Add GSL links
$n1350 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1351 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp576 [new Agent/UDP]
$ns attach-agent $n1350 $udp576
set pareto576 [new Application/Traffic/Pareto]
$pareto576 attach-agent $udp576
$pareto576 set packetSize_ 1000
$pareto576 set rate_ 224Kb
set null576 [new Agent/Null]
$ns attach-agent $n1351 $null576
$ns connect $udp576 $null576
$ns at 0.68 "$pareto576 start"

#Background: 1352 to 1353
set n1352 [$ns node]
$n1352 set-position -8.9 158.9;
set n1353 [$ns node]
$n1353 set-position -34.0 136.4;
#Add GSL links
$n1352 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1353 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp577 [new Agent/UDP]
$ns attach-agent $n1352 $udp577
set pareto577 [new Application/Traffic/Pareto]
$pareto577 attach-agent $udp577
$pareto577 set packetSize_ 1000
$pareto577 set rate_ 224Kb
set null577 [new Agent/Null]
$ns attach-agent $n1353 $null577
$ns connect $udp577 $null577
$ns at 0.98 "$pareto577 start"

#Background: 1354 to 1355
set n1354 [$ns node]
$n1354 set-position -32.5 163.2;
set n1355 [$ns node]
$n1355 set-position -43.0 165.8;
#Add GSL links
$n1354 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1355 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp578 [new Agent/UDP]
$ns attach-agent $n1354 $udp578
set pareto578 [new Application/Traffic/Pareto]
$pareto578 attach-agent $udp578
$pareto578 set packetSize_ 1000
$pareto578 set rate_ 224Kb
set null578 [new Agent/Null]
$ns attach-agent $n1355 $null578
$ns connect $udp578 $null578
$ns at 0.52 "$pareto578 start"

#Background: 1356 to 1357
set n1356 [$ns node]
$n1356 set-position -32.5 163.2;
set n1357 [$ns node]
$n1357 set-position -40.5 165.0;
#Add GSL links
$n1356 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1357 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp579 [new Agent/UDP]
$ns attach-agent $n1356 $udp579
set pareto579 [new Application/Traffic/Pareto]
$pareto579 attach-agent $udp579
$pareto579 set packetSize_ 1000
$pareto579 set rate_ 224Kb
set null579 [new Agent/Null]
$ns attach-agent $n1357 $null579
$ns connect $udp579 $null579
$ns at 0.37 "$pareto579 start"

#Background: 1358 to 1359
set n1358 [$ns node]
$n1358 set-position -34.0 136.4;
set n1359 [$ns node]
$n1359 set-position -16.3 111.7;
#Add GSL links
$n1358 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1359 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp580 [new Agent/UDP]
$ns attach-agent $n1358 $udp580
set pareto580 [new Application/Traffic/Pareto]
$pareto580 attach-agent $udp580
$pareto580 set packetSize_ 1000
$pareto580 set rate_ 224Kb
set null580 [new Agent/Null]
$ns attach-agent $n1359 $null580
$ns connect $udp580 $null580
$ns at 0.36 "$pareto580 start"

#Background: 1360 to 1361
set n1360 [$ns node]
$n1360 set-position -5.3 112.2;
set n1361 [$ns node]
$n1361 set-position -8.9 158.9;
#Add GSL links
$n1360 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1361 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp581 [new Agent/UDP]
$ns attach-agent $n1360 $udp581
set pareto581 [new Application/Traffic/Pareto]
$pareto581 attach-agent $udp581
$pareto581 set packetSize_ 1000
$pareto581 set rate_ 224Kb
set null581 [new Agent/Null]
$ns attach-agent $n1361 $null581
$ns connect $udp581 $null581
$ns at 0.78 "$pareto581 start"

#Background: 1362 to 1363
set n1362 [$ns node]
$n1362 set-position -13.0 173.4;
set n1363 [$ns node]
$n1363 set-position -14.0 169.5;
#Add GSL links
$n1362 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1363 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp582 [new Agent/UDP]
$ns attach-agent $n1362 $udp582
set pareto582 [new Application/Traffic/Pareto]
$pareto582 attach-agent $udp582
$pareto582 set packetSize_ 1000
$pareto582 set rate_ 224Kb
set null582 [new Agent/Null]
$ns attach-agent $n1363 $null582
$ns connect $udp582 $null582
$ns at 0.84 "$pareto582 start"

#Background: 1364 to 1365
set n1364 [$ns node]
$n1364 set-position -26.7 131.4;
set n1365 [$ns node]
$n1365 set-position -36.8 163.6;
#Add GSL links
$n1364 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1365 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp583 [new Agent/UDP]
$ns attach-agent $n1364 $udp583
set pareto583 [new Application/Traffic/Pareto]
$pareto583 attach-agent $udp583
$pareto583 set packetSize_ 1000
$pareto583 set rate_ 224Kb
set null583 [new Agent/Null]
$ns attach-agent $n1365 $null583
$ns connect $udp583 $null583
$ns at 0.70 "$pareto583 start"

#Background: 1366 to 1367
set n1366 [$ns node]
$n1366 set-position -7.9 123.2;
set n1367 [$ns node]
$n1367 set-position -36.8 163.6;
#Add GSL links
$n1366 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1367 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp584 [new Agent/UDP]
$ns attach-agent $n1366 $udp584
set pareto584 [new Application/Traffic/Pareto]
$pareto584 attach-agent $udp584
$pareto584 set packetSize_ 1000
$pareto584 set rate_ 224Kb
set null584 [new Agent/Null]
$ns attach-agent $n1367 $null584
$ns connect $udp584 $null584
$ns at 0.36 "$pareto584 start"

#Background: 1368 to 1369
set n1368 [$ns node]
$n1368 set-position -36.8 163.6;
set n1369 [$ns node]
$n1369 set-position -26.7 131.4;
#Add GSL links
$n1368 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1369 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp585 [new Agent/UDP]
$ns attach-agent $n1368 $udp585
set pareto585 [new Application/Traffic/Pareto]
$pareto585 attach-agent $udp585
$pareto585 set packetSize_ 1000
$pareto585 set rate_ 224Kb
set null585 [new Agent/Null]
$ns attach-agent $n1369 $null585
$ns connect $udp585 $null585
$ns at 0.39 "$pareto585 start"

#Background: 1370 to 1371
set n1370 [$ns node]
$n1370 set-position -26.7 131.4;
set n1371 [$ns node]
$n1371 set-position -43.0 165.8;
#Add GSL links
$n1370 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1371 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp586 [new Agent/UDP]
$ns attach-agent $n1370 $udp586
set pareto586 [new Application/Traffic/Pareto]
$pareto586 attach-agent $udp586
$pareto586 set packetSize_ 1000
$pareto586 set rate_ 224Kb
set null586 [new Agent/Null]
$ns attach-agent $n1371 $null586
$ns connect $udp586 $null586
$ns at 0.36 "$pareto586 start"

#Background: 1372 to 1373
set n1372 [$ns node]
$n1372 set-position -8.9 158.9;
set n1373 [$ns node]
$n1373 set-position -16.3 111.7;
#Add GSL links
$n1372 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1373 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp587 [new Agent/UDP]
$ns attach-agent $n1372 $udp587
set pareto587 [new Application/Traffic/Pareto]
$pareto587 attach-agent $udp587
$pareto587 set packetSize_ 1000
$pareto587 set rate_ 224Kb
set null587 [new Agent/Null]
$ns attach-agent $n1373 $null587
$ns connect $udp587 $null587
$ns at 0.64 "$pareto587 start"

#Background: 1374 to 1375
set n1374 [$ns node]
$n1374 set-position -23.8 130.8;
set n1375 [$ns node]
$n1375 set-position -43.0 165.8;
#Add GSL links
$n1374 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1375 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp588 [new Agent/UDP]
$ns attach-agent $n1374 $udp588
set pareto588 [new Application/Traffic/Pareto]
$pareto588 attach-agent $udp588
$pareto588 set packetSize_ 1000
$pareto588 set rate_ 224Kb
set null588 [new Agent/Null]
$ns attach-agent $n1375 $null588
$ns connect $udp588 $null588
$ns at 0.54 "$pareto588 start"

#Background: 1376 to 1377
set n1376 [$ns node]
$n1376 set-position -23.8 130.8;
set n1377 [$ns node]
$n1377 set-position -5.3 112.2;
#Add GSL links
$n1376 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1377 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp589 [new Agent/UDP]
$ns attach-agent $n1376 $udp589
set pareto589 [new Application/Traffic/Pareto]
$pareto589 attach-agent $udp589
$pareto589 set packetSize_ 1000
$pareto589 set rate_ 224Kb
set null589 [new Agent/Null]
$ns attach-agent $n1377 $null589
$ns connect $udp589 $null589
$ns at 0.68 "$pareto589 start"

#Background: 1378 to 1379
set n1378 [$ns node]
$n1378 set-position -36.8 163.6;
set n1379 [$ns node]
$n1379 set-position -8.9 158.9;
#Add GSL links
$n1378 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
$n1379 add-gsl polar $opt(ll) $opt(ifq) $opt(qlim) $opt(mac) $opt(bw_up) \
	$opt(phy) [$n0 set downlink_] [$n0 set uplink_]
# Trace all queues
$ns trace-all-satlinks $outfile
set udp590 [new Agent/UDP]
$ns attach-agent $n1378 $udp590
set pareto590 [new Application/Traffic/Pareto]
$pareto590 attach-agent $udp590
$pareto590 set packetSize_ 1000
$pareto590 set rate_ 224Kb
set null590 [new Agent/Null]
$ns attach-agent $n1379 $null590
$ns connect $udp590 $null590
$ns at 0.10 "$pareto590 start"

