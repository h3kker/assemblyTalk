#!/bin/bash
#$ -q public.q
#$ -pe smp 8
#$ -cwd
#$ -N sga_preqc


FQ_BASE="440_A_CGTACG_L003"
SGA_BIN=/groups/csf-ngs/bin/assembly/SGA/bin/sga
ln -sf ../illumina/${FQ_BASE}.{1,2}.fastq .

if [ ! -e $FQ_BASE.fastq ]; then
	$SGA_BIN preprocess --pe-mode 1 $FQ_BASE.{1,2}.fastq > $FQ_BASE.fastq
fi
if [ ! -e $FQ_BASE*fai ]; then
	$SGA_BIN index -a ropebwt -t 8 --no-reverse $FQ_BASE.fastq
fi
$SGA_BIN preqc -t 8 $FQ_BASE.fastq > $FQ_BASE.preqc

