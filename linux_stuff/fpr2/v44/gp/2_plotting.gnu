set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"2_meritev.png"
set title 	"Meritev 2 m(I)"
set xlabel 	"I [mA]"
set ylabel 	"m [g]"
set xrange 	[0:3100]
set xtics 	0,500,3000	#start,incrament,max
set yrange 	[0:3] 
set ytics 	0,0.5,3		#start,incrament,max
set grid
set border lw 2
set key top right

f(x) = k*x
fit f(x) '2_meritev.dat' via k

plot '2_meritev.dat' u 1:2 lt 7 lc 7 lw 2 w lp title "Podatki", f(x) lt 7 lc 8 lw 2 w l title "Fit"
