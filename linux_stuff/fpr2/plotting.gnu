set fit quiet
set termila png size 1000, 1000 font "Times-New-Roman,26"
set output 	""
set title 	""
set xlabel 	""
set ylabel 	""
set xrange 	[:]
set xtics 		#start,incrament,max
set yrange 	[:] 
set ytics 		#start,incrament,max
set grid
set border lw 2
set key top right

plot 'FILENAME' u 1:2 lt 7 lc -1 w p title "LINE LEGEND"
