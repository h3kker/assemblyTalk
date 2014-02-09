#!/bin/bash

########### TASK metadata #############
# Task        : filter.plsFofn.Scatter
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/filter.plsFofn.Scatter
# createdAt   : 2013-12-18 20:11:50.725975
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/filter.plsFofn.Scatter.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/filter.plsFofn.Scatter.sh

# Input       : file://Anonymous/input.fofn
# Output      : file://Anonymous/input.chunk002of006.fofn
# Output      : file://Anonymous/input.chunk006of006.fofn
# Output      : file://Anonymous/input.chunk001of006.fofn
# Output      : file://Anonymous/input.chunk005of006.fofn
# Output      : file://Anonymous/input.chunk004of006.fofn
# Output      : file://Anonymous/input.chunk003of006.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/filter.plsFofn.Scatter.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/filter.plsFofn.Scatter.log;



echo 'Running task://Anonymous/P_Filter/filter.plsFofn.Scatter on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task filter.plsFofn.Scatter commands:
TOTAL_LINES=`cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn | wc -l` || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==0" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk001of006.fofn || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==1" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk002of006.fofn || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==2" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk003of006.fofn || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==3" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk004of006.fofn || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==4" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk005of006.fofn || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%6==5" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk006of006.fofn || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
