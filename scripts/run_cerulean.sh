blasr filtered_subreads.fastq pacbio_abyss_k64-contigs.fa -minMatch 10 -minPctIdentity 70 -bestn 30 -nCandidates 30 -maxScore -500 -nproc 8 -noSplitSubreads -out pacbio_abyss_k64

cd /groups/csf-ngs/bin/assembly/Cerulean
python src/Cerulean.py --dataname pacbio_abyss_k64 --basedir /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/abyss-k64 --nproc 8
