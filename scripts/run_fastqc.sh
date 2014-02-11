#!/bin/bash

/sw/lenny/arch/x86_64/FastQC/fastqc -o fastqc/ -t 4 illumina/440_A_CGTACG_L003.1.fastq
/sw/lenny/arch/x86_64/FastQC/fastqc -o fastqc/ -t 4 illumina/440_A_CGTACG_L003.2.fastq

# split result files to modules for easier parsing in R
for d in fastqc/440_A_CGTACG_L003.1_fastqc fastqc/440_A_CGTACG_L003.2_fastqc; do
	pushd $d
	perl ~solexa/bin/splitFastQC.pl fastqc_data.txt
	popd
done

