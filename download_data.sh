#!/usr/bin/env bash
# Mike Cuoco, mcuoco@ucsd.edu
# 6/29/2023

# exit if any non-zero, exit if undefined var
set -euo pipefail

mkdir -p data && cd data

# 1. download pangenome graphs, info at https://github.com/human-pangenomics/hpp_pangenome_resources
wget -nc https://s3-us-west-2.amazonaws.com/human-pangenomics/pangenomes/freeze/freeze1/minigraph/hprc-v1.0-minigraph-grch38.gfa.gz # minigraph GRCh38 graph
wget -nc https://s3-us-west-2.amazonaws.com/human-pangenomics/pangenomes/freeze/freeze1/minigraph/hprc-v1.0-minigraph-chm13.gfa.gz # minigraph CHM13 graph
wget -nc https://s3-us-west-2.amazonaws.com/human-pangenomics/pangenomes/freeze/freeze1/minigraph-cactus/hprc-v1.0-mc-grch38.gfa.gz # minigraph-cactus GRCh38 graph
wget -nc https://s3-us-west-2.amazonaws.com/human-pangenomics/pangenomes/freeze/freeze1/minigraph-cactus/hprc-v1.0-mc-chm13.gfa.gz # minigraph-cactus CHM13 graph

# 2. download assemblies, info at https://github.com/human-pangenomics/HPP_Year1_Assemblies and https://zenodo.org/record/7694116
wget -nc https://zenodo.org/record/5826274/files/HPRC-yr1.agc
