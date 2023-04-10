set fit quiet
set termila png size 1000, 1000 font "Times-New-Roman,26"
set output 	"graf_lambda.png"
set title 	"Graf lambda I(U)"
set xlabel 	"U [V]"
set ylabel 	"I [pA]"
set xrange 	[-2:0]
set xtics 		#start,incrament,max
set yrange 	[7:-0.3] 
set ytics 		#start,incrament,max
set grid
set border lw 2
set key top right

plot 'lambda.dat' u 1:2 lt 7 lc -1 w p title "Podatki"
