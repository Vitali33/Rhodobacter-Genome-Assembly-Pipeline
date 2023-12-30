#!/usr/bin/env bash
# QualityTrim.sh

# path to the Trimmomatic program folder with Illumina adapters
PATH_TO_TRIMMOMATIC="/shared/workingdirectory/programs/Trimmomatic-0.39-2/trimmomatic-0.39-2"
function trim {
    trimmomatic PE \ # calls the Trimmomatic tool for paired-end (PE) data
    -threads 1 -phred33 \ # specifies to use 1 CPU thread and phred33 quality score format of the input data
    ~/WorkingDirectory/NGS/data/SRR522244_1.fastq \ # path to the first file of paired-end FASTQ data
    ~/WorkingDirectory/NGS/data/SRR522244_2.fastq \ # path to the second file of paired-end FASTQ data
    ~/WorkingDirectory/NGS/data/trimmed/paired/Rhodobacter.R1.paired.fastq \ # Output file for paired reads, forward
    ~/WorkingDirectory/NGS/data/trimmed/unpaired/Rhodobacter.R1.unpaired.fastq \ # Output file for unpaired reads, forward
    ~/WorkingDirectory/NGS/data/trimmed/paired/Rhodobacter.R2.paired.fastq \ # Output file for paired reads, reverse
    ~/WorkingDirectory/NGS/data/trimmed/unpaired/Rhodobacter.R2.unpaired.fastq \ # Output file for unpaired reads, reverse
    HEADCROP:0 \ # specifies not to trim any bases from the start of the reads.
    ILLUMINACLIP:$PATH_TO_TRIMMOMATIC/adapters/TruSeq3-PE.fa:2:30:10 \ # Instructs Trimmomatic to remove adapter sequences
    LEADING:20 TRAILING:20 SLIDINGWINDOW:4:30 MINLEN:36 # Quality trimming options
}
trim
