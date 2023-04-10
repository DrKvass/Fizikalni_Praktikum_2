#set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"fit_meritev_v47.png"
set title 	"Graf F(U²)"
set xlabel 	"U² [kV²]"
set ylabel 	"F [N]"
set xrange 	[0:3.7]
set xtics 	0,0.5,3.5	#start,incrament,max
set yrange 	[0:0.032] 
set ytics 	0,0.003,0.03	#start,incrament,max
set grid
set border lw 2
set key top right

f(x) = k*x
#I = 1/(2.998^2 * 10^16*4*3.14)
#g(x) = (1/(2.998^2 * 10^16 *4*3.14))*3.14*0.095^2*x/(2*0.005)
fit f(x) 'data.dat' via k

plot 'data.dat' u 1:2 lt 7 lc 7 lw 2 w lp title "Podatki", f(x) lt 7 lc 8 lw 2 w l title "fit" #, g(x) lt 7 lc 9 lw 2 w l title "ideal" 
