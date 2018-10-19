set datafile separator "\t"
set size 1.0, 2.0
set multiplot
set origin 0, 1
set size 1.0, 1.0
set key bottom
set border 3
set key w 4
set key nobox
set sample 1000
set xr [650:1200]
set yr [-0.025:0.275]
set xtics nomirror 700,100,1200
set ytics nomirror 0,0.05,0.25
set mxtics 2
set mytics 2
unset grid
set key autotitle columnheader
set xlabel '$T_{i,h}$ (K)'
set ylabel '$\eta$'
plot 'T_ih.dat' using 1:2 w lp lw 4 ps 2 pt 1,\
    '' using 1:3 w lp lw 4 ps 2 pt 2,\
    '' using 1:4 w lp lw 4 ps 2 pt 3,\
    '' using 1:5 w lp lw 4 ps 2 pt 4,\
    '' using 1:6 w lp lw 4 ps 2 pt 5
#
set key bottom
set border 3
set key w 4
set key nobox
set sample 1000
set xr [650:1200]
set yr [-1000:11000]
set xtics nomirror 700,100,1200
set ytics nomirror 0,2000,10000
set mxtics 2
set mytics 2
unset grid
set xlabel '$T_{i,h}$ (K)'
set ylabel '$P$ (W)'
set origin 0,0
set size 1,1
plot 'T_ih.dat' using 1:7 w lp lw 4 ps 2 pt 1,\
    '' using 1:8 w lp lw 4 ps 2 pt 2,\
    '' using 1:9 w lp lw 4 ps 2 pt 3,\
    '' using 1:10 w lp lw 4 ps 2 pt 4,\
    '' using 1:11 w lp lw 4 ps 2 pt 5
unset multiplot
