set term tikz size 6cm,4cm
set key Left right top at screen .95,.95 spacing 1 samplen 1 width -2 maxrow 5 opaque
set xrange [-20:20]
set xlabel "displacement/strain"
set ylabel "force/stress"
set xtics nomirror in -20,5,20
set yrange [-380:380]
set ytics nomirror in -400,100,400
set margins 0,0,0,0
set grid
set border 15
set label at screen .05,.32 "$\\alpha=0.4$ $v=1$"
set label at screen .05,.26 "$\\eta_1=\\eta_3=10$"
set label at screen .05,.18 "$\\eta_2=\\eta_4=100$"
set label at screen .05,.1 "$g_1=g_2=1$"
set output "COMP.tex"
plot "COMP" using 1:2 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "proposed",\
     "COMP" using 3:4 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" title "ODE solver"
set output