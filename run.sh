#!/bin/bash

rm run.log

# Original Layer

python LargeVis_run.py -input /tmp/export/originalData.txt -output outputOriginalData.txt -threads 16 > run.log 2>&1
python plot.py -input outputOriginalData.txt -label /tmp/subset.blp.txt.labels -output jos_orig_plot_p50  >> run.log 2>&1

# Layer 0

python LargeVis_run.py -input /tmp/export/Layer0.txt -output outputLayer0.txt -threads 16 >> run.log 2>&1
python plot.py -input outputLayer0.txt -label /tmp/subset.blp.txt.labels -output jos_l0_plot_p50  >> run.log 2>&1

# LAYER 1

python LargeVis_run.py -input /tmp/export/Layer1.txt -output outputLayer1.txt -threads 16 >> run.log 2>&1
python plot.py -input outputLayer1.txt -label /tmp/subset.blp.txt.labels -output jos_l1_plot_p50  >> run.log 2>&1

# LAYER 2

python LargeVis_run.py -input /tmp/export/Layer2.txt -output outputLayer2.txt -threads 16  >> run.log 2>&1
python plot.py -input outputLayer2.txt -label /tmp/subset.blp.txt.labels -output jos_l2_plot_p50  >> run.log 2>&1

# LAYER 3

python plot.py -input /tmp/export/Layer3.txt -label /tmp/subset.blp.txt.labels -output jos_l3_plot   >> run.log 2>&1
~
