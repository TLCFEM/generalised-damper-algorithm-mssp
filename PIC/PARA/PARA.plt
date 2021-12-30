set term tikz size 6cm,4cm
set key Left right top at screen .95,.95 spacing 1 samplen 2 width 1.5 maxrow 5 opaque
set xrange [-22:22]
set xlabel "displacement/strain"
set ylabel "force/stress"
set xtics nomirror in -20,5,20
set yrange [-150:150]
set ytics nomirror in -100,50,100
set margins 0,0,0,0
set grid
set border 15
set label at screen .05,.3 "$\\eta_1=\\eta_3=1$"
set label at screen .05,.2 "$\\eta_2=\\eta_4=100$"
set label at screen .05,.1 "$g_1=g_2=10$"
set output "PARA.A.tex"
plot "PARA.A" using 1:2 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "$v=0.1$",\
     "PARA.A" using 1:3 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" title "$v=1$",\
     "PARA.A" using 1:4 w lp pointinterval 167 lw 2 lt 3 lc rgb "#4daf4a" title "$v=10$"
set output
set yrange [-850:850]
set ytics nomirror in -600,200,600
set output "PARA.B.tex"
plot "PARA.B" using 1:2 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "$v=0.1$",\
     "PARA.B" using 1:3 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" title "$v=1$",\
     "PARA.B" using 1:4 w lp pointinterval 167 lw 2 lt 3 lc rgb "#4daf4a" title "$v=10$"
set output