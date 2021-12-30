set term tikz size 6cm,4cm
set key Left right top at screen .9,.45 spacing 1 samplen 1 width -2 maxrow 5 opaque
set xrange [-22:22]
set xlabel "displacement/strain"
set ylabel "force/stress"
set xtics nomirror in -20,5,20
set yrange [-450:450]
set ytics nomirror in -400,100,400
set margins 0,0,0,0
set grid
set border 15
set output "QDAMPER.A.tex"
unset label
set label "$\\eta_1=10$" at graph 0.75,0.75 center
set label "$\\eta_2=100$" at graph 0.25,0.75 center
set label "$\\eta_3=100$" at graph 0.25,0.25 center
set label "$\\eta_4=100$" at graph 0.75,0.25 center
plot "QDAMPER" using 1:6 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "reference",\
     "QDAMPER" using 1:2 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" notitle
set output
set output "QDAMPER.B.tex"
unset label
set label "$\\eta_1=10$" at graph 0.75,0.75 center
set label "$\\eta_2=10$" at graph 0.25,0.75 center
set label "$\\eta_3=100$" at graph 0.25,0.25 center
set label "$\\eta_4=100$" at graph 0.75,0.25 center
plot "QDAMPER" using 1:6 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "reference",\
     "QDAMPER" using 1:3 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" notitle
set output
set output "QDAMPER.C.tex"
unset label
set label "$\\eta_1=10$" at graph 0.75,0.75 center
set label "$\\eta_2=100$" at graph 0.25,0.75 center
set label "$\\eta_3=10$" at graph 0.25,0.25 center
set label "$\\eta_4=100$" at graph 0.75,0.25 center
plot "QDAMPER" using 1:6 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "reference",\
     "QDAMPER" using 1:4 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" notitle
set output
set output "QDAMPER.D.tex"
unset label
set label "$\\eta_1=10$" at graph 0.75,0.75 center
set label "$\\eta_2=10$" at graph 0.25,0.75 center
set label "$\\eta_3=10$" at graph 0.25,0.25 center
set label "$\\eta_4=100$" at graph 0.75,0.25 center
plot "QDAMPER" using 1:6 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "reference",\
     "QDAMPER" using 1:5 w lp pointinterval 131 lw 2 lt 2 lc rgb "#377eb8" notitle
set output