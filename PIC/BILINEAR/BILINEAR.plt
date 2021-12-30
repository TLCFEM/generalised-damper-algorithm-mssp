set term tikz size 6cm,4cm
set key Left right top at screen .95,.95 spacing 1 samplen 2 width -2 maxrow 5 opaque
set xrange [-19:19]
set xlabel "displacement/strain"
set ylabel "force/stress (\\num{e2})"
set xtics nomirror in -20,5,20
set yrange [-6.5:6.5]
set ytics nomirror in -6,2,6
set margins 0,0,0,0
set grid
set border 15
set output "BILINEAR.A.tex"
plot "BILINEAR" using 1:($2/100) w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "ODE solver",\
     "BILINEAR" using 3:($4/100) w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" title "proposed"
set output
set output "BILINEAR.B.tex"
plot "BILINEAR" using 5:($6/100) w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "ODE solver",\
     "BILINEAR" using 7:($8/100) w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" title "proposed"
set output