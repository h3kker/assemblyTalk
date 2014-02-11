#!/bin/bash
#$ -q public.q
#$ -pe smp 1
#$ -cwd
#$ -N soap_k81_assembly

SOAP=/groups/csf-ngs/bin/assembly/SOAPdenovo2-bin-LINUX-generic-r240/SOAPdenovo-127mer

if [ ! -e "U_bromivora.pregraph.done" ]; then
	# -K 81 chosen from SGA preassembly QC output
	# -d 1 KmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted
	$SOAP pregraph -s config -K 81 -p 8 -d 1 -o U_bromivora 1>pregraph.log 2>&1
	if [ -e "U_bromivora.preGraphBasic" ]; then
		touch U_bromivora.pregraph.done
	fi
fi

if [ -e "U_bromivora.pregraph.done" && ! -e "U_bromivora.contig.done" ]; then
	# -M 3 mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging
	$SOAP contig -g U_bromivora -M 3 1>contig.log 2>&1
	if [ -e "U_bromivora.contig" ]; then
		touch U_bromivora.contig.done
	fi
fi

if [ -e "U_bromivora.contig.done" && ! -e "U_bromivora.map.done" ]; then
	$SOAP map -g U_bromivora -s config -p 8 >map.log 2>&1
	if [ -e "U_bromivora.readInGap.gz" ]; then
		touch U_bromivora.map.done
	fi
fi

if [ -e "U_bromivora.map.done" && ! -e "U_bromivora.scaff.done" ]; then
	#  -b 1.5 insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size for large insert size
	#  ( > 1000) when handling pair-end connections between contigs if b is set to larger than 1
	$SOAP scaff -g U_bromivora -b 1.5 -p 8 >scaff.log 2>&1
	if [ -e "U_bromivora.scafStatistics" ]; then
		touch U_bromivora.scaff.done
		# SOAPdenovo2 does not add .fasta to fasta output
		ln -s U_bromivora.scafSeq U_bromivora.scaffolds.fasta
		ln -s U_bromivora.contig U_bromivora.contig.fasta
	fi
fi

