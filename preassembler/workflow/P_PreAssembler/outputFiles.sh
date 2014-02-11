#!/bin/bash

########### TASK metadata #############
# Task        : outputFiles
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/outputFiles
# createdAt   : 2013-12-20 15:55:46.486915
# ncmds       : 3
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/outputFiles.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/outputFiles.sh

# Input       : file://Anonymous/corrected.bnk#WithConsensus
# Output      : file://Anonymous/data/corrected.fasta
# Output      : file://Anonymous/data/corrected.fastq

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/outputFiles.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/outputFiles.log;



echo 'Running task://Anonymous/P_PreAssembler/outputFiles on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task outputFiles commands:
bank2fasta -b /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk -fastq /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fastq > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta || exit $?; echo "Task 0 completed at `date -u`" || exit $?;trimFastqByQVWindow.py /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fastq --qvCut=59.5 --minSeqLen=500 --out /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/tmp.fastq --fastaOut /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/tmp.fasta || exit $?; echo "Task 1 completed at `date -u`" || exit $?;mv /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/tmp.fastq /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fastq; mv /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/tmp.fasta /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta || exit $?; echo "Task 2 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
