set datafile separator ","
set terminal png size 1200,800
set title "Chilled Wine Bottle Exposed to Room Temperature"
set ylabel "Temperature (°C)"
set xlabel "Time"
set xdata time
set timefmt "%Y/%m/%d %H:%M:%S"
set format x "%HH%M"
set key right top
set grid
plot "dataFormatted.csv" using 1:2 with line title 'Control', \
     "dataFormatted.csv" using 1:3 with line title 'Wine'