#!/usr/bin/env bash
# SpadesAssembly.sh

function Spades {
    spades.py \
    -1 ~/BINF6308/module-06-Vitali33/data/SRR522244_1.fastq \
    -2 ~/BINF6308/module-06-Vitali33/data/SRR522244_2.fastq \
    -o ~/BINF6308/module-06-Vitali33/results/rhodo
}

Spades # runs the function Spades
