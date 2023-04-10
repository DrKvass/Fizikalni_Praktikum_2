#set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"graf_v69_hist.png"
set title 	"Histogram pojavnosti"
set xlabel 	"dolžina časovnega intervala med razpadi"
set ylabel 	"pojavnost (freq.)"
set xrange 	[-0.5:12.5]
set xtics 	0,1,12	#start,incrament,max
set yrange 	[0:300] 
set ytics 	0,30,300	#start,incrament,max
set grid
set border lw 2
set key top left 

set style fill solid 1.0

plot 'data.dat' u 1:2 lt 7 lc 7 lw 3 w boxes title "Podatki"
