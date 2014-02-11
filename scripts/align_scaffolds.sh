#!/bin/bash
#$ -q public.q
#$ -pe smp 4
#$ -cwd
#$ -N scaffold_align 

module load samtools

export PATH=/groups/csf-ngs/bin/align/bwa/bwa-0.7.5a:$PATH

for fa in abyss-k64/pacbio_abyss_k64-scaffolds.fa sga/scaffolds.n5.fa soap-denovo-k81/U_bromivora.scaffolds.fasta; do
	dir=$(dirname $fa);
	base=$(basename $fa .fa); base=$(basename $base .fasta)
	fa=$(basename $fa)
	pushd $dir
	if [ ! -e "${fa}.bwt" ]; then
		bwa index $fa
	fi
	bwa mem -a -T 60 -k 16 -A 2 -L 4 -t 8 -S -P -k 32 $fa ../filtered_subreads.fastq | samtools view -Sb - > $base.bam
	popd
done
