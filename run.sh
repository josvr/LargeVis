#!/bin/bash

# Perplexity 5, 20, 35, 50

# Original Layer

python LargeVis_run.py -perp 5 -neigh 15 -input /tmp/export/originalData.txt -output outputOriginalData.txt.p5 -threads 16 > run.log 2>&1
python plot.py -input outputOriginalData.txt.p5 -label /tmp/subset.blp.txt.labels -output jos_orig_plot.p5  >> run.log 2>&1

python LargeVis_run.py -perp 20 -neigh 60 -input /tmp/export/originalData.txt -output outputOriginalData.txt.p20 -threads 16 > run.log 2>&1
python plot.py -input outputOriginalData.txt.p20 -label /tmp/subset.blp.txt.labels -output jos_orig_plot.p20  >> run.log 2>&1

python LargeVis_run.py -perp 35 -neigh 105 -input /tmp/export/originalData.txt -output outputOriginalData.txt.p35 -threads 16 > run.log 2>&1
python plot.py -input outputOriginalData.txt.p35 -label /tmp/subset.blp.txt.labels -output jos_orig_plot.p35  >> run.log 2>&1

python LargeVis_run.py -perp 50 -neigh 150 -input /tmp/export/originalData.txt -output outputOriginalData.txt.p50 -threads 16 > run.log 2>&1
python plot.py -input outputOriginalData.txt.p50 -label /tmp/subset.blp.txt.labels -output jos_orig_plot.p50  >> run.log 2>&1

# Layer 0

python LargeVis_run.py -perp 5 -neigh 15 -input /tmp/export/Layer0.txt -output outputLayer0.txt.p5 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer0.txt.p5 -label /tmp/subset.blp.txt.labels -output jos_l0_plot.p5  >> run.log 2>&1

python LargeVis_run.py -perp 20 -neigh 60 -input /tmp/export/Layer0.txt -output outputLayer0.txt.p20 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer0.txt.p20 -label /tmp/subset.blp.txt.labels -output jos_l0_plot.p20  >> run.log 2>&1


python LargeVis_run.py -perp 35 -neigh 105 -input /tmp/export/Layer0.txt -output outputLayer0.txt.p35 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer0.txt.p35 -label /tmp/subset.blp.txt.labels -output jos_l0_plot.p35 >> run.log 2>&1


python LargeVis_run.py -perp 50 -neigh 150 -input /tmp/export/Layer0.txt -output outputLayer0.txt.p50 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer0.txt.p50 -label /tmp/subset.blp.txt.labels -output jos_l0_plot.p50  >> run.log 2>&1

# LAYER 1
python LargeVis_run.py -perp 5 -neigh 15 -input /tmp/export/Layer1.txt -output outputLayer1.txt.p5 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer1.txt.p5 -label /tmp/subset.blp.txt.labels -output jos_l1_plot.p5  >> run.log 2>&1

python LargeVis_run.py -perp 20 -neigh 60 -input /tmp/export/Layer1.txt -output outputLayer1.txt.p20 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer1.txt.p20 -label /tmp/subset.blp.txt.labels -output jos_l1_plot.p20  >> run.log 2>&1

python LargeVis_run.py -perp 35 -neigh 105 -input /tmp/export/Layer1.txt -output outputLayer1.txt.p35 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer1.txt.p35 -label /tmp/subset.blp.txt.labels -output jos_l1_plot.p35  >> run.log 2>&1

python LargeVis_run.py -perp 50 -neigh 150 -input /tmp/export/Layer1.txt -output outputLayer1.txt.p50 -threads 16 >> run.log 2>&1
python plot.py -input outputLayer1.txt.p50 -label /tmp/subset.blp.txt.labels -output jos_l1_plot.p50  >> run.log 2>&1

# LAYER 2
python LargeVis_run.py -perp 5 -neigh 15 -input /tmp/export/Layer2.txt -output outputLayer2.txt.p5 -threads 16  >> run.log 2>&1
python plot.py -input outputLayer2.txt.p5 -label /tmp/subset.blp.txt.labels -output jos_l2_plot.p5  >> run.log 2>&1

python LargeVis_run.py -perp 20 -neigh 60 -input /tmp/export/Layer2.txt -output outputLayer2.txt.p20 -threads 16  >> run.log 2>&1
python plot.py -input outputLayer2.txt.p20 -label /tmp/subset.blp.txt.labels -output jos_l2_plot.p20  >> run.log 2>&1


python LargeVis_run.py -perp 35 -neigh 105 -input /tmp/export/Layer2.txt -output outputLayer2.txt.p35 -threads 16  >> run.log 2>&1
python plot.py -input outputLayer2.txt.p35 -label /tmp/subset.blp.txt.labels -output jos_l2_plot.p35  >> run.log 2>&1


python LargeVis_run.py -perp 50 -neigh 150 -input /tmp/export/Layer2.txt -output outputLayer2.txt.p50 -threads 16  >> run.log 2>&1
python plot.py -input outputLayer2.txt.p50 -label /tmp/subset.blp.txt.labels -output jos_l2_plot.p50  >> run.log 2>&1

# LAYER 3

python plot.py -input /tmp/export/Layer3.txt -label /tmp/subset.blp.txt.labels -output jos_l3_plot.all   >> run.log 2>&1
~
