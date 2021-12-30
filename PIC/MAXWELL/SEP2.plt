set term tikz size 14cm,4cm
set key samplen 0 left bottom Left
set grid
set xrange [-15:25]
set xtics -10,10,20
set yrange [-700:700]
set ytics -600,200,600
set ylabel "force"
set output "SEP2.tex"
set multiplot layout 1,3
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.01
set rmargin at screen 0.34
set xlabel "damper displacement"
set label 1 at screen .15,.5 "$\\alpha=0.6$~$v=1$"
set label 2 at screen .15,.4 "$\\eta_1=\\eta_3=40$"
set label 3 at screen .15,.3 "$\\eta_2=\\eta_4=100$"
set label 4 at screen .15,.2 "$g_1=g_2=10$"
set label 5 at screen .4,.8 "$E=100$"
set label 6 at screen .4,.7 "$\\sigma_y=600$"
set label 7 at screen .4,.6 "$h=0.05$"
plot "SEP2" u 2:4 w l lw 2 lc rgb "#e41a1c" notitle
unset ylabel
unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset label 6
unset label 7
set key samplen 0 right bottom Left
set format y ""
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.34
set rmargin at screen 0.67
set xrange [-15:5]
set xtics -10,10,0
set xlabel "spring displacement"
plot "SEP2" u 3:4 w l lw 2 lc rgb "#377eb8" notitle
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.67
set rmargin at screen 1.00
set xrange [-25:25]
set xtics -20,10,20
set xlabel "total displacement"
plot "SEP2" u ($2)+($3):4 w l lw 2 lc rgb "#4daf4a" notitle
unset multiplot
set output