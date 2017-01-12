set terminal png enhanced size 800, 600 font "arial,20"
set output conf." 2 lines.png"
set grid y
set xr [*:*]
set yr [0.2:20]
set logscale y
set key top left

set xlabel "Loop number"
set ylabel "GCC 6.2 to 4.8 Speedup"

plot conf0.".txt" using (column(0) + 1):3 with lines title t0, \
    conf1.".txt" using (column(0) + 1):3 with lines title t1, \
    3 with lines title "Speedup = 3x", \
    2 with lines title "Speedup = 2x", \
    1.15 with lines title "Speedup = 1.15x", \
    0.85 with lines title "Speedup = 0.85x"
