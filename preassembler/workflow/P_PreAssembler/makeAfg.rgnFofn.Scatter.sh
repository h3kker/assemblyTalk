#!/bin/bash

########### TASK metadata #############
# Task        : makeAfg.rgnFofn.Scatter
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/makeAfg.rgnFofn.Scatter
# createdAt   : 2013-12-20 15:55:44.316122
# ncmds       : 17
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg.rgnFofn.Scatter.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg.rgnFofn.Scatter.sh

# Input       : file://Anonymous/data/filtered_regions.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk015of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk001of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk004of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk016of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk010of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk011of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk007of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk009of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk014of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk003of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk006of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk008of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk002of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk013of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk012of016.fofn
# Output      : file://Anonymous/data/filtered_regions.chunk005of016.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg.rgnFofn.Scatter.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg.rgnFofn.Scatter.log;



echo 'Running task://Anonymous/P_PreAssembler/makeAfg.rgnFofn.Scatter on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task makeAfg.rgnFofn.Scatter commands:
TOTAL_LINES=`cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn | wc -l` || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==0" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk001of016.fofn || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==1" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk002of016.fofn || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==2" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk003of016.fofn || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==3" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk004of016.fofn || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==4" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk005of016.fofn || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==5" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk006of016.fofn || exit $?; echo "Task 6 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==6" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk007of016.fofn || exit $?; echo "Task 7 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==7" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk008of016.fofn || exit $?; echo "Task 8 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==8" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk009of016.fofn || exit $?; echo "Task 9 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==9" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk010of016.fofn || exit $?; echo "Task 10 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==10" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk011of016.fofn || exit $?; echo "Task 11 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==11" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk012of016.fofn || exit $?; echo "Task 12 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==12" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk013of016.fofn || exit $?; echo "Task 13 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==13" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk014of016.fofn || exit $?; echo "Task 14 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==14" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk015of016.fofn || exit $?; echo "Task 15 completed at `date -u`" || exit $?;awk "($TOTAL_LINES-NR+1)%16==15" /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk016of016.fofn || exit $?; echo "Task 16 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
