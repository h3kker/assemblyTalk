#!/bin/bash

. /groups/csf-ngs/bin/assembly/cegma_v2.4.010312/bin/cegma.env

for fasta in soap-denovo-k81/pbjelly/jelly.out.fasta sga/pbjelly/jelly.out.fasta abyss-k64/pbjelly/jelly.out.fasta; do
	assembly=${fasta%%/*}
	fasta=$(pwd)/$fasta
	echo $assembly...
	mkdir -p cegma/$assembly
	pushd cegma/$assembly
	qsub -q public.q -pe smp 1 -cwd -N cegma_$assembly -V /groups/csf-ngs/bin/assembly/cegma_v2.4.010312/bin/cegma.sh -g $fasta --threads 4 -o $assembly
	popd
done
