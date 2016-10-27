#!/bin/bash

python LargeVis_run.py -input input4158D.txt -output output_vec2D.txt -threads 16
python plot.py -input output_vec2D.txt -label inputLabels.txt -output jos_vec2D_plot

