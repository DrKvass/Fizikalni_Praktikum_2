#set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"graf_v69.png"
set title 	"Graf ln(K0/K) (d)"
set xlabel 	"d [mm]"
set ylabel 	"ln(K0/K)"
set xrange 	[0:8]
set xtics 	0,1,8	#start,incrament,max
set yrange 	[0:0.7] 
set ytics 	0,0.07,0.7	#start,incrament,max
set grid
set border lw 2
set key top left 

f(x) = k*x
fit f(x) 'data.dat' via k

plot 'data.dat' u 1:2 lt 7 lc 7 lw 3 w p title "Podatki", f(x) lt 7 lw 3 lc 4 w l title "Fit"
