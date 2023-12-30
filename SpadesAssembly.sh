#!/usr/bin/env bash
# SpadesAssembly.sh

function Spades {
    spades.py \
    -1 ~/WorkingDirectory/NGS/data/trimmed/paired/Rhodobacter.R1.paired.fastq \
    -2 ~/WorkingDirectory/NGS/data/trimmed/paired/Rhodobacter.R2.paired.fastq \
    -o ~/WorkingDirectory/NGS/data/results/Rhodobacter
}

Spades # runs the function Spades
