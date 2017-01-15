set terminal png enhanced size 800, 300 font "arial,14"
set output conf."_all.png"

set grid y
set xr [0:*]
set yr [0.05:30]
set logscale y
set key top left

set xlabel "Loop number"
set ylabel "Speedup"

plot "gcc_".conf.".txt" using (column(0) + 1):1 with lines title "GCC", \
    "icc_".conf.".txt" using (column(0) + 1):1 with lines title "ICC", \
    "clang_".conf.".txt" using (column(0) + 1):1 with lines title "Clang"