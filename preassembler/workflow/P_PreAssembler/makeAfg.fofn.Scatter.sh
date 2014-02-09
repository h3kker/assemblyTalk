#!/bin/bash

########### TASK metadata #############
# Task        : makeAfg.fofn.Scatter
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/makeAfg.fofn.Scatter
# createdAt   : 2013-12-20 15:55:46.894273
# ncmds       : 17
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg.fofn.Scatter.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg.fofn.Scatter.sh

# Input       : file://Anonymous/fastq.fofn
# Output      : file://Anonymous/fastq.chunk006of016.fofn
# Output      : file://Anonymous/fastq.chunk005of016.fofn
# Output      : file://Anonymous/fastq.chunk015of016.fofn
# Output      : file://Anonymous/fastq.chunk002of016.fofn
# Output      : file://Anonymous/fastq.chunk007of016.fofn
# Output      : file://Anonymous/fastq.chunk011of016.fofn
# Output      : file://Anonymous/fastq.chunk010of016.fofn
# Output      : file://Anonymous/fastq.chunk008of016.fofn
# Output      : file://Anonymous/fastq.chunk012of016.fofn
# Output      : file://Anonymous/fastq.chunk004of016.fofn
# Output      : file://Anonymous/fastq.chunk009of016.fofn
# Output      : file://Anonymous/fastq.chunk003of016.fofn
# Output      : file://Anonymous/fastq.chunk013of016.fofn
# Output      : file://Anonymous/fastq.chunk016of016.fofn
# Output      : file://Anonymous/fastq.chunk014of016.fofn
# Output      : file://Anonymous/fastq.chunk001of016.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg.fofn.Scatter.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg.fofn.Scatter.log;



echo 'Running task://Anonymous/P_PreAssembler/makeAfg.fofn.Scatter on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task makeAfg.fofn.Scatter commands:
TOTAL_LINES=`cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn | wc -l` || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==0" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk001of016.fofn || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==1" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk002of016.fofn || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==2" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk003of016.fofn || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==3" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk004of016.fofn || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==4" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk005of016.fofn || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==5" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk006of016.fofn || exit $?; echo "Task 6 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==6" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk007of016.fofn || exit $?; echo "Task 7 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==7" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk008of016.fofn || exit $?; echo "Task 8 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==8" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk009of016.fofn || exit $?; echo "Task 9 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==9" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk010of016.fofn || exit $?; echo "Task 10 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==10" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk011of016.fofn || exit $?; echo "Task 11 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==11" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk012of016.fofn || exit $?; echo "Task 12 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==12" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk013of016.fofn || exit $?; echo "Task 13 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==13" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk014of016.fofn || exit $?; echo "Task 14 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==14" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk015of016.fofn || exit $?; echo "Task 15 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==15" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk016of016.fofn || exit $?; echo "Task 16 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
