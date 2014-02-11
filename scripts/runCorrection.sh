#!/bin/bash

module load gridengine

# source pacbio software, comes with the complete Celera assembly suite

. /groups/csf-ngs/bin/pacbio/smrtanalysis-2.0.1/etc/setup.sh


illuminaFrg=illuminaShortReads.frg

if [ ! -f $illuminaFrg ]; then
	# assume 220bp insert size +/- 50 - this conforms to various QC estimations (some post-hoc, i.e. from assembly tries)
	fastqToCA -libraryname illumina -insertsize 220 50 -technology illumina -type sanger -innie -mates illumina/440_A_CGTACG_L003.1.fastq,illumina/440_A_CGTACG_L003.2.fastq > $illuminaFrg
fi

pacBioToCA -length 500 -partitions 200 -l ec_pacbio -t 16 -s pacbio.spec -fastq filtered_subreads.fastq $illuminaFrg > run.out 2>&1
