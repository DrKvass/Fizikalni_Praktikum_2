#set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"Measure_constant_2A.png"
set title 	"2. Meritve F(I)"
set xlabel 	"I [A]"
set ylabel 	"F [N]"
set xrange 	[0:2]
set xtics 	0,0.2,2	#start,incrament,max
set yrange 	[0:0.0009] 
set ytics 	0,0.0001,0.0009	#start,incrament,max
set grid
set border lw 2
set key top right

f(x) = k*x
fit f(x) 'data_2.dat' via k

plot 'data_2.dat' u 1:2 lt 7 lc 7 lw 2 w lp title "Podatki", f(x) lt 7 lc 8 lw 2 w l title "Fit"
