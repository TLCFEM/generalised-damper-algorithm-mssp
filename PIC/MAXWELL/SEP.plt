set term tikz size 14cm,4cm
set key samplen 0 left bottom Left
set grid
set xrange [-22:22]
set yrange [-450:450]
set xtics -20,10,20
set ytics -400,200,400
set ylabel "force"
set output "SEP.tex"
set multiplot layout 1,3
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.01
set rmargin at screen 0.34
set xlabel "damper displacement"
set label 1 at screen .05,.5 "$\\alpha=0.4$"
set label 2 at screen .05,.4 "$\\eta=100$"
set label 3 at screen .05,.3 "$v=1$"
set label 4 at screen .4,.5 "$E=100$"
plot "SEP" every 2 u 2:4 w l lw 2 lc rgb "#e41a1c" notitle
unset ylabel
unset label 1
unset label 2
unset label 3
unset label 4
set key samplen 0 right bottom Left
set format y ""
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.34
set rmargin at screen 0.67
set xlabel "spring displacement"
plot "SEP" every 2 u 3:4 w l lw 2 lc rgb "#377eb8" notitle
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.67
set rmargin at screen 1.00
set xlabel "total displacement"
plot "SEP" every 2 u ($2)+($3):4 w l lw 2 lc rgb "#4daf4a" notitle
unset multiplot
set output