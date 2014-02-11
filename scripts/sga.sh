#! /bin/bash -x
#$ -q public.q
#$ -pe smp 8
#$ -cwd
#$ -N sga_assembly

#
# Example assembly of 100bp C. elegans data set. The only argument
# this script takes is the overlap length used for the final contig assembly.
#

module load python
module load samtools
export PATH=/groups/csf-ngs/bin/align/bwa/bwa-0.7.5a/bwa:/groups/csf-ngs/bin/assembly/abyss-1.3.7/bin:$PATH

# We assume the data is downloaded from the SRA and converted to fastq files
# Set IN1 and IN2 to be the paths to the data on your filesystem
IN1=440_A_CGTACG_L003.1.fastq
IN2=440_A_CGTACG_L003.2.fastq
out=440_A_CGTACG_L003_sga

# Parameters
SGA_DIR=/groups/csf-ngs/bin/assembly/SGA/bin
SGA_BIN=$SGA_DIR/sga

# Overlap parameter used for the final assembly. This is the only argument
# to the script
OL=75

# The number of threads to use
CPU=8

# To save memory, we index $D reads at a time then merge the indices together
D=4000000

# Correction k-mer value
CK=75

# The minimum k-mer coverage for the filter step. Each 27-mer
# in the reads must be seen at least this many times
COV_FILTER=2

# Overlap parameter used for FM-merge. This value must be no greater than the minimum
# overlap value you wish to try for the assembly step.
MOL=55

# Parameter for the small repeat resolution algorithm
R=10

# The number of pairs required to link two contigs into a scaffold
MIN_PAIRS=5

# The minimum length of contigs to include in a scaffold
MIN_LENGTH=200

# Distance estimate tolerance when resolving scaffold sequences
SCAFFOLD_TOLERANCE=1

# Turn off collapsing bubbles around indels
MAX_GAP_DIFF=0

# First, preprocess the data to remove ambiguous basecalls
if [ ! -e $out.fastq ]; then
	$SGA_BIN preprocess --pe-mode 1 -o $out.fastq $IN1 $IN2
fi

#
# Error correction
#
# Build the index that will be used for error correction
# As the error corrector does not require the reverse BWT, suppress
# construction of the reversed index
if [ ! -e $out.sai ]; then
	$SGA_BIN index -a ropebwt -t $CPU --no-reverse $out.fastq
fi

# Perform error correction with a 41-mer.
# The k-mer cutoff parameter is learned automatically

if [ ! -e reads.ec.k$CK.fastq ]; then
	$SGA_BIN correct -k $CK --discard --learn -t $CPU -o reads.ec.k$CK.fastq $out.fastq
fi

#
# Contig assembly
#

# Index the corrected data.
if [ ! -e reads.ec.k$CK.bwt ]; then
	$SGA_BIN index -a ropebwt -t $CPU reads.ec.k$CK.fastq
fi

# Remove exact-match duplicates and reads with low-frequency k-mers
if [ ! -e reads.ec.k$CK.filter.pass.fa ]; then
	$SGA_BIN filter -x $COV_FILTER -t $CPU --homopolymer-check --low-complexity-check reads.ec.k$CK.fastq
fi

# Merge simple, unbranched chains of vertices
if [ ! -e merged.k$CK.fa ]; then
	$SGA_BIN fm-merge -m $MOL -t $CPU -o merged.k$CK.fa reads.ec.k$CK.filter.pass.fa
fi

# Build an index of the merged sequences
if [ ! -e merged.k$CK.bwt ]; then
	$SGA_BIN index -d 1000000 -t $CPU merged.k$CK.fa
fi

# Remove any substrings that were generated from the merge process
if [ ! -e merged.k$CK.rmdup.fa ]; then
	$SGA_BIN rmdup -t $CPU merged.k$CK.fa
fi

# Compute the structure of the string graph
$SGA_BIN overlap -m $MOL -t $CPU merged.k$CK.rmdup.fa

# Perform the contig assembly without bubble popping
$SGA_BIN assemble -m $OL -g $MAX_GAP_DIFF -r $R -o assemble.m$OL merged.k$CK.rmdup.asqg.gz

#
# Scaffolding/Paired end resolution
# 
CTGS=assemble.m$OL-contigs.fa
GRAPH=assemble.m$OL-graph.asqg.gz

# Realign reads to the contigs
$SGA_DIR/sga-align --name U_bromivora.pe $CTGS $IN1 $IN2

# Make contig-contig distance estimates
$SGA_DIR/sga-bam2de.pl -n $MIN_PAIRS --prefix libPE U_bromivora.pe.bam

# Make contig copy number estimates
$SGA_DIR/sga-astat.py -m $MIN_LENGTH U_bromivora.pe.refsort.bam > libPE.astat

$SGA_BIN scaffold -m $MIN_LENGTH --pe libPE.de -a libPE.astat -o scaffolds.n$MIN_PAIRS.scaf $CTGS
$SGA_BIN scaffold2fasta -m $MIN_LENGTH -a $GRAPH -o scaffolds.n$MIN_PAIRS.fa -d $SCAFFOLD_TOLERANCE --use-overlap --write-unplaced scaffolds.n$MIN_PAIRS.scaf
