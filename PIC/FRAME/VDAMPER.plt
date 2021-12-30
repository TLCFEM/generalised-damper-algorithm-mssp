set term tikz size 14cm,4cm
set key Left right bottom at screen .95,.05 spacing 1 samplen 1 width -5 maxrow 4 opaque
set xrange [0:40]
set xlabel "time (\\si{\\second})"
set ylabel "base shear (\\si{\\kilo\\newton})"
set xtics nomirror in 0,5,40
set yrange [-150:150]
set ytics nomirror in -150,50,150
set margins 0,0,0,0
set grid
set border 15
set output "VDAMPER.tex"
plot "VDAMPER" using 1:2 w lp pointinterval 79 lw 2 lt 1 lc rgb "#e41a1c" title "undamped",\
     "VDAMPER" using 1:3 w lp pointinterval 97 lw 2 lt 2 lc rgb "#377eb8" title "Maxwell with soft spring",\
     "VDAMPER" using 1:4 w lp pointinterval 127 lw 2 lt 3 lc rgb "#4daf4a" title "Maxwell with stiff spring",\
     "VDAMPER" using 1:5 w lp pointinterval 131 lw 2 lt 4 lc rgb "#984ea3" title "viscous damper only"
set output
set term tikz size 6.5cm,4cm
set key Left right bottom at screen .95,.05 spacing 1 samplen 1 width -3 maxrow 2 opaque
set xrange [-120:120]
set xlabel "displacement (\\si{\\milli\\meter})"
set ylabel "damper resistance (\\si{\\kilo\\newton})"
set xtics nomirror in -100,50,100
set yrange [-35:35]
set ytics nomirror in -30,10,30
set margins 0,0,0,0
set grid
set border 15
set output "VDAMPER2.tex"
plot "VDAMPER2" using ($1)*1000:2 w l lw 2 lc rgb "#377eb8" notitle
set output
set output "VDAMPER3.tex"
plot "VDAMPER2" using ($3)*1000:4 w l lw 2 lc rgb "#377eb8" notitle
set output