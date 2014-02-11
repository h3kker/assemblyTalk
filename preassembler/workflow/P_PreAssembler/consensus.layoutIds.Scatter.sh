#!/bin/bash

########### TASK metadata #############
# Task        : consensus.layoutIds.Scatter
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/consensus.layoutIds.Scatter
# createdAt   : 2013-12-20 15:55:40.003331
# ncmds       : 17
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/consensus.layoutIds.Scatter.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/consensus.layoutIds.Scatter.sh

# Input       : file://Anonymous/layout.ids
# Output      : file://Anonymous/layout.chunk008of016.ids
# Output      : file://Anonymous/layout.chunk004of016.ids
# Output      : file://Anonymous/layout.chunk002of016.ids
# Output      : file://Anonymous/layout.chunk005of016.ids
# Output      : file://Anonymous/layout.chunk011of016.ids
# Output      : file://Anonymous/layout.chunk016of016.ids
# Output      : file://Anonymous/layout.chunk013of016.ids
# Output      : file://Anonymous/layout.chunk010of016.ids
# Output      : file://Anonymous/layout.chunk006of016.ids
# Output      : file://Anonymous/layout.chunk015of016.ids
# Output      : file://Anonymous/layout.chunk007of016.ids
# Output      : file://Anonymous/layout.chunk003of016.ids
# Output      : file://Anonymous/layout.chunk001of016.ids
# Output      : file://Anonymous/layout.chunk009of016.ids
# Output      : file://Anonymous/layout.chunk014of016.ids
# Output      : file://Anonymous/layout.chunk012of016.ids

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/consensus.layoutIds.Scatter.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/consensus.layoutIds.Scatter.log;



echo 'Running task://Anonymous/P_PreAssembler/consensus.layoutIds.Scatter on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task consensus.layoutIds.Scatter commands:
TOTAL_LINES=`cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids | wc -l` || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==0" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk001of016.ids || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==1" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk002of016.ids || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==2" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk003of016.ids || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==3" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk004of016.ids || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==4" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk005of016.ids || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==5" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk006of016.ids || exit $?; echo "Task 6 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==6" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk007of016.ids || exit $?; echo "Task 7 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==7" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk008of016.ids || exit $?; echo "Task 8 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==8" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk009of016.ids || exit $?; echo "Task 9 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==9" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk010of016.ids || exit $?; echo "Task 10 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==10" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk011of016.ids || exit $?; echo "Task 11 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==11" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk012of016.ids || exit $?; echo "Task 12 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==12" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk013of016.ids || exit $?; echo "Task 13 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==13" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk014of016.ids || exit $?; echo "Task 14 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==14" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk015of016.ids || exit $?; echo "Task 15 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==15" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk016of016.ids || exit $?; echo "Task 16 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
