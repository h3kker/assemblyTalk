#!/bin/bash

########### TASK metadata #############
# Task        : ccsSubreads_002of006
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/ccsSubreads_002of006
# createdAt   : 2013-12-20 15:55:42.385176
# ncmds       : 2
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/ccsSubreads_002of006.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/ccsSubreads_002of006.sh

# Input       : file://Anonymous/input.chunk002of006.fofn
# Input       : file://Anonymous/data/filtered_regions.chunk002of006.fofn
# Output      : file://Anonymous/data/ccs_reads.chunk002of006.fastq
# Output      : file://Anonymous/data/ccs_reads.chunk002of006.fasta

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/ccsSubreads_002of006.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/ccsSubreads_002of006.log;



echo 'Running task://Anonymous/P_Filter/ccsSubreads_002of006 on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk002of006.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk002of006.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk002of006.fofn. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk002of006.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk002of006.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk002of006.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task ccsSubreads_002of006 commands:
pls2fasta /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk002of006.fofn /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk002of006.fasta -trimByRegion -regionTable /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk002of006.fofn  -ccs || exit $?; echo "Task 0 completed at `date -u`" || exit $?;pls2fasta /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk002of006.fofn /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk002of006.fastq -trimByRegion -regionTable /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk002of006.fofn  -ccs -fastq || exit $?; echo "Task 1 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
