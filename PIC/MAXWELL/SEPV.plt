set term tikz size 14cm,4cm
set key Left right bottom at screen .95,.05 spacing 1 samplen 1 width 0 maxrow 5 opaque
set xrange [0:4]
set xlabel "time (\\si{\\second})"
set ylabel "velocity"
set xtics nomirror in 0,.2,4
set yrange [-35:35]
set ytics nomirror in -30,10,30
set margins 0,0,0,0
set grid
set border 15
set output "SEPV.tex"
plot "SEP" using 1:($5)+($6) w lp pointinterval 79 lw 2 lt 1 lc rgb "#4daf4a" title "total",\
     "SEP" using 1:5 w lp pointinterval 131 lw 2 lt 2 lc rgb "#e41a1c" title "damper",\
     "SEP" using 1:6 w lp pointinterval 149 lw 2 lt 3 lc rgb "#377eb8" title "spring"
set output