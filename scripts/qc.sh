#! /bin/bash -1

#load HPC module
module load fastq

fastp \
 -i sample_R1.fastq.gz \
 -I sample_R2.fastq.gz \
 -o sample_R1_trimmed.fastq.gz \
 -O sample_R2_trimmed.fastq.gz \
 --length_required 30 
 --length_required 30 \
 --qualified_quality_phred 20
