#!/bin/bash
gnuplot << EOF
set pm3d
splot [0:2*pi] [0:2*pi] sin(x)*cos(y)
EOF