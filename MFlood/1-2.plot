set term png medium xffffff
set output "1-2.png"
set ylabel "Transmission Speed(KB/s)"
set xlabel "Time(s)"
set key left top
set title "mflood analysis"
plot "1-2.data" title "1->2" with linespoints