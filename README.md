# Rhodobacter-Genome-Assembly-Pipeline

## Project Overview
This repository contains a series of Bash scripts designed to automate the genome assembly process for Rhodobacter spheroides using Next-Generation Sequencing (NGS) data. The pipeline covers data retrieval, quality trimming, genome assembly, and assembly quality assessment.

## Contents
**RetrieveNGS.sh:** Downloads NGS reads from the SRA database.   
**QualityTrim.sh:** Trims and removes adapters from the sequencing data using Trimmomatic.   
**SpadesAssembly.sh:** Assembles the genome from the trimmed reads using SPAdes.   
**QuastAssessment.sh:** Assesses the quality of the assembled genome with QUAST.   
**sbatch_GenomeAssembly.sh:** SLURM batch script to combine the entire workflow.   

### Prerequisites
Unix-like environment (Linux, macOS)   
SRA Toolkit (for fasterq-dump)   
Trimmomatic   
SPAdes   
QUAST   
Access to an HPC cluster with SLURM scheduling (for sbatch_GenomeAssembly.sh)    

## Installation
Clone the repository to your local machine:   
git clone [URL to your repository]   
cd Rhodobacter-Genome-Assembly-Pipeline   

## Usage
Each script can be run independently as follows:   
bash RetrieveNGS.sh   
bash QualityTrim.sh   
bash SpadesAssembly.sh   
bash QuastAssessment.sh   

To run the entire pipeline on a SLURM-based HPC system:   
sbatch sbatch_GenomeAssembly.sh   

### Output
The final output will be the assembled genome in FASTA format located in ~/WorkingDirectory/NGS/data/results/Rhodobacter.   
Quality assessment reports from QUAST will be available in ~/WorkingDirectory/NGS/data/results/Rhodobacter/quast_results/.   

### Customization
You can modify the scripts to suit different datasets or organisms by changing the SRA IDs, file paths, and other parameters as needed.

## Authors
Vitali Bahatyrevich

## Date
12/30/2023

## Acknowledgments
Northeastern University's Bioinformatics Program
