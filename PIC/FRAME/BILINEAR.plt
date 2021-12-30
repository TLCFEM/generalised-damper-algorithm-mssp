set term tikz size 14cm,4cm
set key samplen 0 left bottom Left
set grid
set xrange [-45:130]
set xtics -50,25,200
set yrange [-25:25]
set ytics -25,5,20
set ylabel "force (\\si{\\kilo\\newton})"
set output "BILINEAR.tex"
set multiplot layout 1,3
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.01
set rmargin at screen 0.34
set xlabel "damper displacement (\\si{\\milli\\meter})"
plot "BILINEAR" every 2 u ($2)*1000:3 w l lw 2 lc rgb "#e41a1c" notitle
unset ylabel
set key samplen 0 right bottom Left
set format y ""
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.34
set rmargin at screen 0.67
set xrange [-80:20]
set xtics -100,100,0
set xlabel "spring displacement (\\si{\\milli\\meter})"
plot "BILINEAR" every 2 u ($1)*1000:3 w l lw 2 lc rgb "#377eb8" notitle
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.67
set rmargin at screen 1.00
set xrange [-90:90]
set xtics -100,50,150
set xlabel "total displacement (\\si{\\milli\\meter})"
plot "BILINEAR" every 2 u ($1)*1000+($2)*1000:3 w l lw 2 lc rgb "#4daf4a" notitle
unset multiplot
set output