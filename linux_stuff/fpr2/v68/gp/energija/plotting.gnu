set fit quiet
set terminal png size 1000, 1000 font "Times-New-Roman,26"
set output 	"energija.png"
set title 	" Wk(nu)"
set xlabel 	"Nu [PHz]"
set ylabel 	"Wk [eV]"
set xrange 	[0.5:0.9]
set xtics 	0.5,0.05,0.9	#start,incrament,max
set yrange 	[0.5:1.9] 
set ytics 	0.5,0.2,1.9	#start,incrament,max
set grid
set border lw 2
set key top left

f(x) = k*x + n
fit f(x) 'energija.dat' via k, n

plot 'energija.dat' u 1:2 lt 7 lc 7 w p title "Podatki", f(x) lt 7 lc 8 lw 2 w l title "Fit"
