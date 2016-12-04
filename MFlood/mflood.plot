set term png medium xffffff
set output "mflood.png"
set ylabel "Transmission Speed(KB/s)"
set xlabel "Time(s)"
set key left top box
set title "mflood analysis"
plot "mflood-1-2.data" title "1->2" with linespoints,"mflood-4-5.data" title "4->5" with linespoints,"mflood-4-6.data" title "4->6" with linespoints,"mflood-6-7.data" title "6->7" with linespoints,"mflood-7-8.data" title "7->8" with linespoints
