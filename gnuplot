reset;
set terminal gif font 'Arial' 12;
set output 'analyzer_delay.png';
set title 'Network-delay' font 'Arial-Bold, 19';
unset key;
set key right top;
set xlabel 'Time';
set ylabel 'Network Delay (ms)';
set autoscale;
set ytics nomirror;
set xrange [:50];
#set yrange [0:1];
set boxwidth 0.9;
set xtics scale 1 nomirror;
set datafile separator ",";
#set xtics rotate
set style line 1 lt 1 lw 0.5;
set style fill solid border -1
set style line 1 lt 1 pt 1 ps 1 lc rgb 'red' lw 2
set style line 2 lt 1 pt 2 ps 1 lc rgb 'green' lw 2
set style line 3 lt 1 pt 3 ps 1 lc rgb 'blue' lw 2
set style line 4 lt 1 pt 4 ps 1 lc rgb 'orange' lw 2
plot '1_2' using 1:2 ls 1 with lines title "node1->node2", '1_3' using 1:2 ls 2 with lines title "node1->node1\\\_vm", '2_4' using 1:2 ls 3 with lines title "node2\\\_vm->node2", '3_4' using 1:2 ls 4 with lines title "node2\\\_vm->node1\\\_vm"
