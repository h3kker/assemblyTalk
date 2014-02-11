#!/bin/bash
#$ -q public.q
#$ -pe smp 4
#$ -cwd
#$ -N pacbio_k64_assembly

longreads=filtered_subreads.fastq
assembly=pacbio_abyss_k64

module load gridengine
#module load bwa
# use newer bwa (with mem)!

export PATH=/groups/csf-ngs/bin/align/bwa/bwa-0.7.5a:/groups/csf-ngs/bin/assembly/abyss-1.3.7/bin:/groups/csf-ngs/bin/assembly/abyss-1.3.7/ABYSS:$PATH

# unfortunately we're not allowed to submit to the openmpi queue, so we have to lie to abyss about running in single threaded mode
unset NSLOTS

if [ ! -d "abyss-k64" ]; then
	mkdir abyss-k64
fi

pushd abyss-k64
# it's important to put the file into the current path (bug in abyss)
ln -sf ../$longreads . 
/groups/csf-ngs/bin/assembly/abyss-1.3.7/bin/abyss-pe -j 4 k=64 in='../illumina/440_A_CGTACG_L003.1.fastq ../illumina/440_A_CGTACG_L003.2.fastq' long=$longreads name=$assembly
# BUG in abyss - at this point there will be an error. we have to re-run the alignment manually
bwa mem -a -T 60 -k 16 -A 2 -L 4 -t2 -S -P -k64 $assembly-8.fa $longreads | gzip > $longreads-8.sam.gz
# restart abyss - it picks up the alignment and continues (the magic power of makefiles!)
/groups/csf-ngs/bin/assembly/abyss-1.3.7/bin/abyss-pe -j 4 k=64 in='../illumina/440_A_CGTACG_L003.1.fastq ../illumina/440_A_CGTACG_L003.2.fastq' long=$longreads name=$assembly
abyss-fac -d, *-{unitigs,contigs,scaffolds,long-scaffs}.fa | sed -e s/sum/sum,set/ > pacbio_abyss_k64.summary.csv
popd
