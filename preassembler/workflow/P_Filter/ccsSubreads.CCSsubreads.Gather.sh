#!/bin/bash

########### TASK metadata #############
# Task        : ccsSubreads.CCSsubreads.Gather
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/ccsSubreads.CCSsubreads.Gather
# createdAt   : 2013-12-20 15:55:47.336069
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/ccsSubreads.CCSsubreads.Gather.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/ccsSubreads.CCSsubreads.Gather.sh

# Input       : file://Anonymous/data/ccs_reads.chunk006of006.fasta
# Input       : file://Anonymous/data/ccs_reads.chunk001of006.fasta
# Input       : file://Anonymous/data/ccs_reads.chunk003of006.fasta
# Input       : file://Anonymous/data/ccs_reads.chunk002of006.fasta
# Input       : file://Anonymous/data/ccs_reads.chunk004of006.fasta
# Input       : file://Anonymous/data/ccs_reads.chunk005of006.fasta
# Output      : file://Anonymous/data/ccs_reads.fasta

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/ccsSubreads.CCSsubreads.Gather.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/ccsSubreads.CCSsubreads.Gather.log;



echo 'Running task://Anonymous/P_Filter/ccsSubreads.CCSsubreads.Gather on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk006of006.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk006of006.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk006of006.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk001of006.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk001of006.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk001of006.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk003of006.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk003of006.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk003of006.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk002of006.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk002of006.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk002of006.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk004of006.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk004of006.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk004of006.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk005of006.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk005of006.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk005of006.fasta. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task ccsSubreads.CCSsubreads.Gather commands:
rm -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 0 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk001of006.fasta >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 1 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk003of006.fasta >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 2 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk005of006.fasta >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 3 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk006of006.fasta >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 4 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk002of006.fasta >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 5 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.chunk004of006.fasta >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/ccs_reads.fasta || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
