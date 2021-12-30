set term tikz size 6cm,4cm
set key Left right top at screen .95,.95 spacing 1 samplen 1 width 0 maxrow 5 opaque
set xrange [-22:22]
set xlabel "displacement/strain"
set ylabel "force/stress"
set xtics nomirror in -20,5,20
set yrange [-450:450]
set ytics nomirror in -400,100,400
set margins 0,0,0,0
set grid
set border 15
set label at screen .05,.3 "$\\alpha=0.4$ $v=1$"
set label at screen .05,.2 "$\\eta_1=\\eta_3=1$"
set label at screen .05,.1 "$\\eta_2=\\eta_4=100$"
set output "STEEP.tex"
plot "STEEP" using 1:2 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "$g=1$",\
     "STEEP" using 1:3 w lp pointinterval 113 lw 2 lt 1 lc rgb "#377eb8" title "$g=10$",\
     "STEEP" using 1:4 w lp pointinterval 149 lw 2 lt 1 lc rgb "#4daf4a" title "$g=100$"
set output