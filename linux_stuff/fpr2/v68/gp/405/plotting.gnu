set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"graf_405.png"
set title 	"Graf lambada = 405nm I(U)"
set xlabel 	"U [V]"
set ylabel 	"I [pA]"
set xrange 	[-1.8:0.1]
set xtics 	-1.8,0.2,0	#start,incrament,max
set yrange 	[-0.3:6] 
set ytics 	0,0.5,6		#start,incrament,max
set grid
set border lw 2
set key top left

plot 'lambda.dat' u 1:2 lt 7 lc 7 w p title "Podatki"
