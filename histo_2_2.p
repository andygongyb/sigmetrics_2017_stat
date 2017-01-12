set terminal png enhanced size 800, 600 font "arial,20"
set output conf." histo 2 unvaforable.png"
set boxwidth 0.2 absolute
set grid y
set yrange [0:20]
set xrange [0.0:1]

set xlabel "GCC 6.2 to 4.8 Speedup"
set ylabel "Number of Loops"

set key top right

# Each bar is half the (visual) width of its x-range.
set boxwidth 0.03 absolute
set style fill solid 1.0 noborder

bin_width = 0.1;

bin_number(x) = floor(x/bin_width)

rounded0(x) = bin_width * ( bin_number(x) + 0.5 ) - 0.015
rounded1(x) = bin_width * ( bin_number(x) + 0.5 ) + 0.015

plot conf0.".txt" using ($3<0.85? (rounded0($3)):1/0):(1) smooth frequency with boxes title t0, \
    conf1.".txt" using ($3<0.85? (rounded1($3)):1/0):(1) smooth frequency with boxes title t1, \