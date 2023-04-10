set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"plot_all_ohm.png"
set title 	"Resonančne krivulje primerjano med sabo"
set xlabel 	"√(C/Cr)"
set ylabel 	"U/Ui"
set xrange 	[0.8:1.2]
set xtics 	0.8,0.05,1.2	#start,incrament,max
set yrange 	[0:33] 
set ytics 	0,5,30	#start,incrament,max
set grid
set border lw 2
set key top right

plot '0_ohm.dat' u 1:2 lt 7 lc 7 lw 2 w lp title "0 Ohmov", '5_ohm.dat' u 1:2 lt 7 lc 6 lw 2 w lp title "5 Ohmov", '15_ohm.dat' u 1:2 lt 7 lc 2 lw 2 w lp title "15 Ohmov"
