set terminal png enhanced size 700, 500 font "arial,14"
set output conf." 1 line.png"
set grid y
set xr [0:*]
set yr [0.1:20]
set logscale y
set key top left

set xlabel "Loop number"
set ylabel "Speedup"

plot conf.".txt" using (column(0) + 1):3 with lines title t0, \
    3 with lines title "Speedup = 3x", \
    2 with lines title "Speedup = 2x", \
    1.15 with lines title "Speedup = 1.15x", \
    0.85 with lines title "Speedup = 0.85x"
