set term tikz size 14cm,4cm
set key Left right bottom at screen .95,.05 spacing 1 samplen 1 width 0 maxrow 5 opaque
set xrange [0:4]
set xlabel "time (\\si{\\second})"
set ylabel "velocity"
set xtics nomirror in 0,.5,6
set yrange [-85:85]
set ytics nomirror in -80,20,80
set margins 0,0,0,0
set grid
set border 15
set output "SEPV2.tex"
plot "SEP2" using 1:($5)+($6) w lp pointinterval 79 lw 2 lt 1 lc rgb "#4daf4a" title "total",\
     "SEP2" using 1:5 w lp pointinterval 131 lw 2 lt 2 lc rgb "#e41a1c" title "damper",\
     "SEP2" using 1:6 w lp pointinterval 149 lw 2 lt 3 lc rgb "#377eb8" title "spring"
set output