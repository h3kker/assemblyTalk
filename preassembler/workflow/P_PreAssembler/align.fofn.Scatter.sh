#!/bin/bash

########### TASK metadata #############
# Task        : align.fofn.Scatter
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/align.fofn.Scatter
# createdAt   : 2013-12-20 15:55:43.561837
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/align.fofn.Scatter.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/align.fofn.Scatter.sh

# Input       : file://Anonymous/fastq.fofn
# Output      : file://Anonymous/fastq.chunk005of006.fofn
# Output      : file://Anonymous/fastq.chunk001of006.fofn
# Output      : file://Anonymous/fastq.chunk004of006.fofn
# Output      : file://Anonymous/fastq.chunk006of006.fofn
# Output      : file://Anonymous/fastq.chunk002of006.fofn
# Output      : file://Anonymous/fastq.chunk003of006.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/align.fofn.Scatter.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/align.fofn.Scatter.log;



echo 'Running task://Anonymous/P_PreAssembler/align.fofn.Scatter on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task align.fofn.Scatter commands:
TOTAL_LINES=`cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn | wc -l` || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==0" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk001of006.fofn || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==1" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk002of006.fofn || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==2" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk003of006.fofn || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==3" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk004of006.fofn || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==4" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk005of006.fofn || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==5" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk006of006.fofn || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
