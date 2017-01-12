set terminal png enhanced size 400, 300 font "arial,14"
set output conf." histo.png"
set boxwidth 0.2 absolute
set grid y
set yrange [0:150]
set xrange [0.5:5.5]

set xlabel "Speedup"
set ylabel "Number of Loops"
set xtics ("0" 0, "1" 1, "2" 2, "3" 3, "4" 4, ">=5" 5)

set key off

# Each bar is half the (visual) width of its x-range.
set boxwidth 0.1 absolute
set style fill solid 1.0 noborder

bin_width = 0.2;

bin_number(x) = floor(x/bin_width)

rounded(x) = bin_width * ( bin_number(x) + 0.5 )

plot conf.".txt" using ($3>1.15? ($3>=5? 5.1:rounded($3)):1/0):(1) smooth frequency with boxes