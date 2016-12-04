if {![info exists ns]} {
	puts "Error:  sat-iridium-backgrounds.tcl is a supporting script for the "			
	puts "        sat-iridium.tcl script-- run 'sat-iridium.tcl' instead"			
	exit
}

# Trace all queues
$ns trace-all-satlinks $outfile
set udp1 [new Agent/UDP]
$ns attach-agent $n25 $udp1
set pareto1 [new Application/Traffic/Pareto]
$pareto1 attach-agent $udp1
$pareto1 set packetSize_ 1000
$pareto1 set rate_ 5000kb
set null1 [new Agent/Null]
$ns attach-agent $n15 $null1
$ns connect $udp1 $null1
$ns at 0.51 "$pareto1 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp2 [new Agent/UDP]
$ns attach-agent $n25 $udp2
set pareto2 [new Application/Traffic/Pareto]
$pareto2 attach-agent $udp2
$pareto2 set packetSize_ 1000
$pareto2 set rate_ 5000kb
set null2 [new Agent/Null]
$ns attach-agent $n16 $null2
$ns connect $udp2 $null2
$ns at 0.52 "$pareto2 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp3 [new Agent/UDP]
$ns attach-agent $n25 $udp3
set pareto3 [new Application/Traffic/Pareto]
$pareto3 attach-agent $udp3
$pareto3 set packetSize_ 1000
$pareto3 set rate_ 5000kb
set null3 [new Agent/Null]
$ns attach-agent $n40 $null3
$ns connect $udp3 $null3
$ns at 0.53 "$pareto3 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp4 [new Agent/UDP]
$ns attach-agent $n25 $udp4
set pareto4 [new Application/Traffic/Pareto]
$pareto4 attach-agent $udp4
$pareto4 set packetSize_ 1000
$pareto4 set rate_ 5000kb
set null4 [new Agent/Null]
$ns attach-agent $n55 $null4
$ns connect $udp4 $null4
$ns at 0.54 "$pareto4 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp5 [new Agent/UDP]
$ns attach-agent $n25 $udp5
set pareto5 [new Application/Traffic/Pareto]
$pareto5 attach-agent $udp5
$pareto5 set packetSize_ 1000
$pareto5 set rate_ 5000kb
set null5 [new Agent/Null]
$ns attach-agent $n30 $null5
$ns connect $udp5 $null5
$ns at 0.51 "$pareto5 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp6 [new Agent/UDP]
$ns attach-agent $n25 $udp6
set pareto6 [new Application/Traffic/Pareto]
$pareto6 attach-agent $udp6
$pareto6 set packetSize_ 1000
$pareto6 set rate_ 5000kb
set null6 [new Agent/Null]
$ns attach-agent $n31 $null6
$ns connect $udp6 $null6
$ns at 0.52 "$pareto6 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp7 [new Agent/UDP]
$ns attach-agent $n25 $udp7
set pareto7 [new Application/Traffic/Pareto]
$pareto7 attach-agent $udp7
$pareto7 set packetSize_ 1000
$pareto7 set rate_ 5000kb
set null7 [new Agent/Null]
$ns attach-agent $n45 $null7
$ns connect $udp7 $null7
$ns at 0.53 "$pareto7 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp8 [new Agent/UDP]
$ns attach-agent $n25 $udp8
set pareto8 [new Application/Traffic/Pareto]
$pareto8 attach-agent $udp8
$pareto8 set packetSize_ 1000
$pareto8 set rate_ 5000kb
set null8 [new Agent/Null]
$ns attach-agent $n46 $null8
$ns connect $udp8 $null8
$ns at 0.54 "$pareto8 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp11 [new Agent/UDP]
$ns attach-agent $n15 $udp11
set pareto11 [new Application/Traffic/Pareto]
$pareto11 attach-agent $udp11
$pareto11 set packetSize_ 1000
$pareto11 set rate_ 5000kb
set null11 [new Agent/Null]
$ns attach-agent $n25 $null11
$ns connect $udp11 $null11
$ns at 0.51 "$pareto11 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp12 [new Agent/UDP]
$ns attach-agent $n15 $udp12
set pareto12 [new Application/Traffic/Pareto]
$pareto12 attach-agent $udp12
$pareto12 set packetSize_ 1000
$pareto12 set rate_ 5000kb
set null12 [new Agent/Null]
$ns attach-agent $n16 $null12
$ns connect $udp12 $null12
$ns at 0.52 "$pareto12 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp13 [new Agent/UDP]
$ns attach-agent $n15 $udp13
set pareto13 [new Application/Traffic/Pareto]
$pareto13 attach-agent $udp13
$pareto13 set packetSize_ 1000
$pareto13 set rate_ 5000kb
set null13 [new Agent/Null]
$ns attach-agent $n40 $null13
$ns connect $udp13 $null13
$ns at 0.53 "$pareto13 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp14 [new Agent/UDP]
$ns attach-agent $n15 $udp14
set pareto14 [new Application/Traffic/Pareto]
$pareto14 attach-agent $udp14
$pareto14 set packetSize_ 1000
$pareto14 set rate_ 5000kb
set null14 [new Agent/Null]
$ns attach-agent $n55 $null14
$ns connect $udp14 $null14
$ns at 0.54 "$pareto14 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp15 [new Agent/UDP]
$ns attach-agent $n15 $udp15
set pareto15 [new Application/Traffic/Pareto]
$pareto15 attach-agent $udp15
$pareto15 set packetSize_ 1000
$pareto15 set rate_ 5000kb
set null15 [new Agent/Null]
$ns attach-agent $n30 $null15
$ns connect $udp15 $null15
$ns at 0.51 "$pareto15 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp16 [new Agent/UDP]
$ns attach-agent $n15 $udp16
set pareto16 [new Application/Traffic/Pareto]
$pareto16 attach-agent $udp16
$pareto16 set packetSize_ 1000
$pareto16 set rate_ 5000kb
set null16 [new Agent/Null]
$ns attach-agent $n31 $null16
$ns connect $udp16 $null16
$ns at 0.52 "$pareto16 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp17 [new Agent/UDP]
$ns attach-agent $n15 $udp17
set pareto17 [new Application/Traffic/Pareto]
$pareto17 attach-agent $udp17
$pareto17 set packetSize_ 1000
$pareto17 set rate_ 5000kb
set null17 [new Agent/Null]
$ns attach-agent $n45 $null17
$ns connect $udp17 $null17
$ns at 0.53 "$pareto17 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp18 [new Agent/UDP]
$ns attach-agent $n15 $udp18
set pareto18 [new Application/Traffic/Pareto]
$pareto18 attach-agent $udp18
$pareto18 set packetSize_ 1000
$pareto18 set rate_ 5000kb
set null18 [new Agent/Null]
$ns attach-agent $n46 $null18
$ns connect $udp18 $null18
$ns at 0.54 "$pareto18 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp21 [new Agent/UDP]
$ns attach-agent $n16 $udp21
set pareto21 [new Application/Traffic/Pareto]
$pareto21 attach-agent $udp21
$pareto21 set packetSize_ 1000
$pareto21 set rate_ 5000kb
set null21 [new Agent/Null]
$ns attach-agent $n25 $null21
$ns connect $udp21 $null21
$ns at 0.51 "$pareto21 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp22 [new Agent/UDP]
$ns attach-agent $n16 $udp22
set pareto22 [new Application/Traffic/Pareto]
$pareto22 attach-agent $udp22
$pareto22 set packetSize_ 1000
$pareto22 set rate_ 5000kb
set null22 [new Agent/Null]
$ns attach-agent $n15 $null22
$ns connect $udp22 $null22
$ns at 0.52 "$pareto22 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp23 [new Agent/UDP]
$ns attach-agent $n16 $udp23
set pareto23 [new Application/Traffic/Pareto]
$pareto23 attach-agent $udp23
$pareto23 set packetSize_ 1000
$pareto23 set rate_ 5000kb
set null23 [new Agent/Null]
$ns attach-agent $n40 $null23
$ns connect $udp23 $null23
$ns at 0.53 "$pareto23 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp24 [new Agent/UDP]
$ns attach-agent $n16 $udp24
set pareto24 [new Application/Traffic/Pareto]
$pareto24 attach-agent $udp24
$pareto24 set packetSize_ 1000
$pareto24 set rate_ 5000kb
set null24 [new Agent/Null]
$ns attach-agent $n30 $null24
$ns connect $udp24 $null24
$ns at 0.54 "$pareto24 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp25 [new Agent/UDP]
$ns attach-agent $n16 $udp25
set pareto25 [new Application/Traffic/Pareto]
$pareto25 attach-agent $udp25
$pareto25 set packetSize_ 1000
$pareto25 set rate_ 5000kb
set null25 [new Agent/Null]
$ns attach-agent $n31 $null25
$ns connect $udp25 $null25
$ns at 0.51 "$pareto25 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp26 [new Agent/UDP]
$ns attach-agent $n16 $udp26
set pareto26 [new Application/Traffic/Pareto]
$pareto26 attach-agent $udp26
$pareto26 set packetSize_ 1000
$pareto26 set rate_ 5000kb
set null26 [new Agent/Null]
$ns attach-agent $n55 $null26
$ns connect $udp26 $null26
$ns at 0.52 "$pareto26 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp27 [new Agent/UDP]
$ns attach-agent $n16 $udp27
set pareto27 [new Application/Traffic/Pareto]
$pareto27 attach-agent $udp27
$pareto27 set packetSize_ 1000
$pareto27 set rate_ 5000kb
set null27 [new Agent/Null]
$ns attach-agent $n45 $null27
$ns connect $udp27 $null27
$ns at 0.53 "$pareto27 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp28 [new Agent/UDP]
$ns attach-agent $n16 $udp28
set pareto28 [new Application/Traffic/Pareto]
$pareto28 attach-agent $udp28
$pareto28 set packetSize_ 1000
$pareto28 set rate_ 5000kb
set null28 [new Agent/Null]
$ns attach-agent $n46 $null28
$ns connect $udp28 $null28
$ns at 0.54 "$pareto28 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp31 [new Agent/UDP]
$ns attach-agent $n40 $udp31
set pareto31 [new Application/Traffic/Pareto]
$pareto31 attach-agent $udp31
$pareto31 set packetSize_ 1000
$pareto31 set rate_ 5000kb
set null31 [new Agent/Null]
$ns attach-agent $n25 $null31
$ns connect $udp31 $null31
$ns at 0.51 "$pareto31 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp32 [new Agent/UDP]
$ns attach-agent $n40 $udp32
set pareto32 [new Application/Traffic/Pareto]
$pareto32 attach-agent $udp32
$pareto32 set packetSize_ 1000
$pareto32 set rate_ 5000kb
set null32 [new Agent/Null]
$ns attach-agent $n15 $null32
$ns connect $udp32 $null32
$ns at 0.52 "$pareto32 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp33 [new Agent/UDP]
$ns attach-agent $n40 $udp33
set pareto33 [new Application/Traffic/Pareto]
$pareto33 attach-agent $udp33
$pareto33 set packetSize_ 1000
$pareto33 set rate_ 5000kb
set null33 [new Agent/Null]
$ns attach-agent $n16 $null33
$ns connect $udp33 $null33
$ns at 0.53 "$pareto33 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp34 [new Agent/UDP]
$ns attach-agent $n40 $udp34
set pareto34 [new Application/Traffic/Pareto]
$pareto34 attach-agent $udp34
$pareto34 set packetSize_ 1000
$pareto34 set rate_ 5000kb
set null34 [new Agent/Null]
$ns attach-agent $n30 $null34
$ns connect $udp34 $null34
$ns at 0.54 "$pareto34 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp35 [new Agent/UDP]
$ns attach-agent $n40 $udp35
set pareto35 [new Application/Traffic/Pareto]
$pareto35 attach-agent $udp35
$pareto35 set packetSize_ 1000
$pareto35 set rate_ 5000kb
set null35 [new Agent/Null]
$ns attach-agent $n31 $null35
$ns connect $udp35 $null35
$ns at 0.51 "$pareto35 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp36 [new Agent/UDP]
$ns attach-agent $n40 $udp36
set pareto36 [new Application/Traffic/Pareto]
$pareto36 attach-agent $udp36
$pareto36 set packetSize_ 1000
$pareto36 set rate_ 5000kb
set null36 [new Agent/Null]
$ns attach-agent $n55 $null36
$ns connect $udp36 $null36
$ns at 0.52 "$pareto36 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp37 [new Agent/UDP]
$ns attach-agent $n40 $udp37
set pareto37 [new Application/Traffic/Pareto]
$pareto37 attach-agent $udp37
$pareto37 set packetSize_ 1000
$pareto37 set rate_ 5000kb
set null37 [new Agent/Null]
$ns attach-agent $n45 $null37
$ns connect $udp37 $null37
$ns at 0.53 "$pareto37 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp38 [new Agent/UDP]
$ns attach-agent $n40 $udp38
set pareto38 [new Application/Traffic/Pareto]
$pareto38 attach-agent $udp38
$pareto38 set packetSize_ 1000
$pareto38 set rate_ 5000kb
set null38 [new Agent/Null]
$ns attach-agent $n46 $null38
$ns connect $udp38 $null38
$ns at 0.54 "$pareto38 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp41 [new Agent/UDP]
$ns attach-agent $n30 $udp41
set pareto41 [new Application/Traffic/Pareto]
$pareto41 attach-agent $udp41
$pareto41 set packetSize_ 1000
$pareto41 set rate_ 5000kb
set null41 [new Agent/Null]
$ns attach-agent $n25 $null41
$ns connect $udp41 $null41
$ns at 0.51 "$pareto41 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp42 [new Agent/UDP]
$ns attach-agent $n30 $udp42
set pareto42 [new Application/Traffic/Pareto]
$pareto42 attach-agent $udp42
$pareto42 set packetSize_ 1000
$pareto42 set rate_ 5000kb
set null42 [new Agent/Null]
$ns attach-agent $n15 $null42
$ns connect $udp42 $null42
$ns at 0.52 "$pareto42 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp43 [new Agent/UDP]
$ns attach-agent $n30 $udp43
set pareto43 [new Application/Traffic/Pareto]
$pareto43 attach-agent $udp43
$pareto43 set packetSize_ 1000
$pareto43 set rate_ 5000kb
set null43 [new Agent/Null]
$ns attach-agent $n16 $null43
$ns connect $udp43 $null43
$ns at 0.53 "$pareto43 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp44 [new Agent/UDP]
$ns attach-agent $n30 $udp44
set pareto44 [new Application/Traffic/Pareto]
$pareto44 attach-agent $udp44
$pareto44 set packetSize_ 1000
$pareto44 set rate_ 5000kb
set null44 [new Agent/Null]
$ns attach-agent $n40 $null44
$ns connect $udp44 $null44
$ns at 0.54 "$pareto44 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp45 [new Agent/UDP]
$ns attach-agent $n30 $udp45
set pareto45 [new Application/Traffic/Pareto]
$pareto45 attach-agent $udp45
$pareto45 set packetSize_ 1000
$pareto45 set rate_ 5000kb
set null45 [new Agent/Null]
$ns attach-agent $n31 $null45
$ns connect $udp45 $null45
$ns at 0.51 "$pareto45 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp46 [new Agent/UDP]
$ns attach-agent $n30 $udp46
set pareto46 [new Application/Traffic/Pareto]
$pareto46 attach-agent $udp46
$pareto46 set packetSize_ 1000
$pareto46 set rate_ 5000kb
set null46 [new Agent/Null]
$ns attach-agent $n55 $null46
$ns connect $udp46 $null46
$ns at 0.52 "$pareto46 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp47 [new Agent/UDP]
$ns attach-agent $n30 $udp47
set pareto47 [new Application/Traffic/Pareto]
$pareto47 attach-agent $udp47
$pareto47 set packetSize_ 1000
$pareto47 set rate_ 5000kb
set null47 [new Agent/Null]
$ns attach-agent $n45 $null47
$ns connect $udp47 $null47
$ns at 0.53 "$pareto47 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp48 [new Agent/UDP]
$ns attach-agent $n30 $udp48
set pareto48 [new Application/Traffic/Pareto]
$pareto48 attach-agent $udp48
$pareto48 set packetSize_ 1000
$pareto48 set rate_ 5000kb
set null48 [new Agent/Null]
$ns attach-agent $n46 $null48
$ns connect $udp48 $null48
$ns at 0.54 "$pareto48 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp51 [new Agent/UDP]
$ns attach-agent $n31 $udp51
set pareto51 [new Application/Traffic/Pareto]
$pareto51 attach-agent $udp51
$pareto51 set packetSize_ 1000
$pareto51 set rate_ 5000kb
set null51 [new Agent/Null]
$ns attach-agent $n25 $null51
$ns connect $udp51 $null51
$ns at 0.51 "$pareto51 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp52 [new Agent/UDP]
$ns attach-agent $n31 $udp52
set pareto52 [new Application/Traffic/Pareto]
$pareto52 attach-agent $udp52
$pareto52 set packetSize_ 1000
$pareto52 set rate_ 5000kb
set null52 [new Agent/Null]
$ns attach-agent $n15 $null52
$ns connect $udp52 $null52
$ns at 0.52 "$pareto52 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp53 [new Agent/UDP]
$ns attach-agent $n31 $udp53
set pareto53 [new Application/Traffic/Pareto]
$pareto53 attach-agent $udp53
$pareto53 set packetSize_ 1000
$pareto53 set rate_ 5000kb
set null53 [new Agent/Null]
$ns attach-agent $n16 $null53
$ns connect $udp53 $null53
$ns at 0.53 "$pareto53 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp54 [new Agent/UDP]
$ns attach-agent $n31 $udp54
set pareto54 [new Application/Traffic/Pareto]
$pareto54 attach-agent $udp54
$pareto54 set packetSize_ 1000
$pareto54 set rate_ 5000kb
set null54 [new Agent/Null]
$ns attach-agent $n40 $null54
$ns connect $udp54 $null54
$ns at 0.54 "$pareto54 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp55 [new Agent/UDP]
$ns attach-agent $n31 $udp55
set pareto55 [new Application/Traffic/Pareto]
$pareto55 attach-agent $udp55
$pareto55 set packetSize_ 1000
$pareto55 set rate_ 5000kb
set null55 [new Agent/Null]
$ns attach-agent $n30 $null55
$ns connect $udp55 $null55
$ns at 0.51 "$pareto55 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp56 [new Agent/UDP]
$ns attach-agent $n31 $udp56
set pareto56 [new Application/Traffic/Pareto]
$pareto56 attach-agent $udp56
$pareto56 set packetSize_ 1000
$pareto56 set rate_ 5000kb
set null56 [new Agent/Null]
$ns attach-agent $n55 $null56
$ns connect $udp56 $null56
$ns at 0.52 "$pareto56 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp57 [new Agent/UDP]
$ns attach-agent $n31 $udp57
set pareto57 [new Application/Traffic/Pareto]
$pareto57 attach-agent $udp57
$pareto57 set packetSize_ 1000
$pareto57 set rate_ 5000kb
set null57 [new Agent/Null]
$ns attach-agent $n45 $null57
$ns connect $udp57 $null57
$ns at 0.53 "$pareto57 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp58 [new Agent/UDP]
$ns attach-agent $n31 $udp58
set pareto58 [new Application/Traffic/Pareto]
$pareto58 attach-agent $udp58
$pareto58 set packetSize_ 1000
$pareto58 set rate_ 5000kb
set null58 [new Agent/Null]
$ns attach-agent $n46 $null58
$ns connect $udp58 $null58
$ns at 0.54 "$pareto58 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp61 [new Agent/UDP]
$ns attach-agent $n55 $udp61
set pareto61 [new Application/Traffic/Pareto]
$pareto61 attach-agent $udp61
$pareto61 set packetSize_ 1000
$pareto61 set rate_ 5000kb
set null61 [new Agent/Null]
$ns attach-agent $n25 $null61
$ns connect $udp61 $null61
$ns at 0.51 "$pareto61 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp62 [new Agent/UDP]
$ns attach-agent $n55 $udp62
set pareto62 [new Application/Traffic/Pareto]
$pareto62 attach-agent $udp62
$pareto62 set packetSize_ 1000
$pareto62 set rate_ 5000kb
set null62 [new Agent/Null]
$ns attach-agent $n15 $null62
$ns connect $udp62 $null62
$ns at 0.52 "$pareto62 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp63 [new Agent/UDP]
$ns attach-agent $n55 $udp63
set pareto63 [new Application/Traffic/Pareto]
$pareto63 attach-agent $udp63
$pareto63 set packetSize_ 1000
$pareto63 set rate_ 5000kb
set null63 [new Agent/Null]
$ns attach-agent $n16 $null63
$ns connect $udp63 $null63
$ns at 0.53 "$pareto63 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp64 [new Agent/UDP]
$ns attach-agent $n55 $udp64
set pareto64 [new Application/Traffic/Pareto]
$pareto64 attach-agent $udp64
$pareto64 set packetSize_ 1000
$pareto64 set rate_ 5000kb
set null64 [new Agent/Null]
$ns attach-agent $n40 $null64
$ns connect $udp64 $null64
$ns at 0.54 "$pareto64 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp65 [new Agent/UDP]
$ns attach-agent $n55 $udp65
set pareto65 [new Application/Traffic/Pareto]
$pareto65 attach-agent $udp65
$pareto65 set packetSize_ 1000
$pareto65 set rate_ 5000kb
set null65 [new Agent/Null]
$ns attach-agent $n30 $null65
$ns connect $udp65 $null65
$ns at 0.51 "$pareto65 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp66 [new Agent/UDP]
$ns attach-agent $n55 $udp66
set pareto66 [new Application/Traffic/Pareto]
$pareto66 attach-agent $udp66
$pareto66 set packetSize_ 1000
$pareto66 set rate_ 5000kb
set null66 [new Agent/Null]
$ns attach-agent $n31 $null66
$ns connect $udp66 $null66
$ns at 0.52 "$pareto66 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp67 [new Agent/UDP]
$ns attach-agent $n55 $udp67
set pareto67 [new Application/Traffic/Pareto]
$pareto67 attach-agent $udp67
$pareto67 set packetSize_ 1000
$pareto67 set rate_ 5000kb
set null67 [new Agent/Null]
$ns attach-agent $n45 $null67
$ns connect $udp67 $null67
$ns at 0.53 "$pareto67 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp68 [new Agent/UDP]
$ns attach-agent $n55 $udp68
set pareto68 [new Application/Traffic/Pareto]
$pareto68 attach-agent $udp68
$pareto68 set packetSize_ 1000
$pareto68 set rate_ 5000kb
set null68 [new Agent/Null]
$ns attach-agent $n46 $null68
$ns connect $udp68 $null68
$ns at 0.54 "$pareto68 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp71 [new Agent/UDP]
$ns attach-agent $n45 $udp71
set pareto71 [new Application/Traffic/Pareto]
$pareto71 attach-agent $udp71
$pareto71 set packetSize_ 1000
$pareto71 set rate_ 5000kb
set null71 [new Agent/Null]
$ns attach-agent $n25 $null71
$ns connect $udp71 $null71
$ns at 0.51 "$pareto71 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp72 [new Agent/UDP]
$ns attach-agent $n45 $udp72
set pareto72 [new Application/Traffic/Pareto]
$pareto72 attach-agent $udp72
$pareto72 set packetSize_ 1000
$pareto72 set rate_ 5000kb
set null72 [new Agent/Null]
$ns attach-agent $n15 $null72
$ns connect $udp72 $null72
$ns at 0.52 "$pareto72 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp73 [new Agent/UDP]
$ns attach-agent $n45 $udp73
set pareto73 [new Application/Traffic/Pareto]
$pareto73 attach-agent $udp73
$pareto73 set packetSize_ 1000
$pareto73 set rate_ 5000kb
set null73 [new Agent/Null]
$ns attach-agent $n16 $null73
$ns connect $udp73 $null73
$ns at 0.53 "$pareto73 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp74 [new Agent/UDP]
$ns attach-agent $n45 $udp74
set pareto74 [new Application/Traffic/Pareto]
$pareto74 attach-agent $udp74
$pareto74 set packetSize_ 1000
$pareto74 set rate_ 5000kb
set null74 [new Agent/Null]
$ns attach-agent $n40 $null74
$ns connect $udp74 $null74
$ns at 0.54 "$pareto74 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp75 [new Agent/UDP]
$ns attach-agent $n45 $udp75
set pareto75 [new Application/Traffic/Pareto]
$pareto75 attach-agent $udp75
$pareto75 set packetSize_ 1000
$pareto75 set rate_ 5000kb
set null75 [new Agent/Null]
$ns attach-agent $n30 $null75
$ns connect $udp75 $null75
$ns at 0.51 "$pareto75 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp76 [new Agent/UDP]
$ns attach-agent $n45 $udp76
set pareto76 [new Application/Traffic/Pareto]
$pareto76 attach-agent $udp76
$pareto76 set packetSize_ 1000
$pareto76 set rate_ 5000kb
set null76 [new Agent/Null]
$ns attach-agent $n31 $null76
$ns connect $udp76 $null76
$ns at 0.52 "$pareto76 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp77 [new Agent/UDP]
$ns attach-agent $n45 $udp77
set pareto77 [new Application/Traffic/Pareto]
$pareto77 attach-agent $udp77
$pareto77 set packetSize_ 1000
$pareto77 set rate_ 5000kb
set null77 [new Agent/Null]
$ns attach-agent $n55 $null77
$ns connect $udp77 $null77
$ns at 0.53 "$pareto77 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp78 [new Agent/UDP]
$ns attach-agent $n45 $udp78
set pareto78 [new Application/Traffic/Pareto]
$pareto78 attach-agent $udp78
$pareto78 set packetSize_ 1000
$pareto78 set rate_ 5000kb
set null78 [new Agent/Null]
$ns attach-agent $n46 $null78
$ns connect $udp78 $null78
$ns at 0.54 "$pareto78 start"
###################################################
# Trace all queues
$ns trace-all-satlinks $outfile
set udp81 [new Agent/UDP]
$ns attach-agent $n46 $udp81
set pareto81 [new Application/Traffic/Pareto]
$pareto81 attach-agent $udp81
$pareto81 set packetSize_ 1000
$pareto81 set rate_ 5000kb
set null81 [new Agent/Null]
$ns attach-agent $n25 $null81
$ns connect $udp81 $null81
$ns at 0.51 "$pareto81 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp82 [new Agent/UDP]
$ns attach-agent $n46 $udp82
set pareto82 [new Application/Traffic/Pareto]
$pareto82 attach-agent $udp82
$pareto82 set packetSize_ 1000
$pareto82 set rate_ 5000kb
set null82 [new Agent/Null]
$ns attach-agent $n15 $null82
$ns connect $udp82 $null82
$ns at 0.52 "$pareto82 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp83 [new Agent/UDP]
$ns attach-agent $n46 $udp83
set pareto83 [new Application/Traffic/Pareto]
$pareto83 attach-agent $udp83
$pareto83 set packetSize_ 1000
$pareto83 set rate_ 5000kb
set null83 [new Agent/Null]
$ns attach-agent $n16 $null83
$ns connect $udp83 $null83
$ns at 0.53 "$pareto83 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp84 [new Agent/UDP]
$ns attach-agent $n46 $udp84
set pareto84 [new Application/Traffic/Pareto]
$pareto84 attach-agent $udp84
$pareto84 set packetSize_ 1000
$pareto84 set rate_ 5000kb
set null84 [new Agent/Null]
$ns attach-agent $n40 $null84
$ns connect $udp84 $null84
$ns at 0.54 "$pareto84 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp85 [new Agent/UDP]
$ns attach-agent $n46 $udp85
set pareto85 [new Application/Traffic/Pareto]
$pareto85 attach-agent $udp85
$pareto85 set packetSize_ 1000
$pareto85 set rate_ 5000kb
set null85 [new Agent/Null]
$ns attach-agent $n30 $null85
$ns connect $udp85 $null85
$ns at 0.51 "$pareto85 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp86 [new Agent/UDP]
$ns attach-agent $n46 $udp86
set pareto86 [new Application/Traffic/Pareto]
$pareto86 attach-agent $udp86
$pareto86 set packetSize_ 1000
$pareto86 set rate_ 5000kb
set null86 [new Agent/Null]
$ns attach-agent $n31 $null86
$ns connect $udp86 $null86
$ns at 0.52 "$pareto86 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp87 [new Agent/UDP]
$ns attach-agent $n46 $udp87
set pareto87 [new Application/Traffic/Pareto]
$pareto87 attach-agent $udp87
$pareto87 set packetSize_ 1000
$pareto87 set rate_ 5000kb
set null87 [new Agent/Null]
$ns attach-agent $n55 $null87
$ns connect $udp87 $null87
$ns at 0.53 "$pareto87 start"

# Trace all queues
$ns trace-all-satlinks $outfile
set udp88 [new Agent/UDP]
$ns attach-agent $n46 $udp88
set pareto88 [new Application/Traffic/Pareto]
$pareto88 attach-agent $udp88
$pareto88 set packetSize_ 1000
$pareto88 set rate_ 5000kb
set null88 [new Agent/Null]
$ns attach-agent $n45 $null88
$ns connect $udp88 $null88
$ns at 0.54 "$pareto88 start"
