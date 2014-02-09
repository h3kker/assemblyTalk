#!/bin/bash

########### TASK metadata #############
# Task        : filter.summary.Gather
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/filter.summary.Gather
# createdAt   : 2013-12-20 15:55:45.669358
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/filter.summary.Gather.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/filter.summary.Gather.sh

# Input       : file://Anonymous/data/filtered_summary.chunk006of006.csv
# Input       : file://Anonymous/data/filtered_summary.chunk003of006.csv
# Input       : file://Anonymous/data/filtered_summary.chunk002of006.csv
# Input       : file://Anonymous/data/filtered_summary.chunk005of006.csv
# Input       : file://Anonymous/data/filtered_summary.chunk004of006.csv
# Input       : file://Anonymous/data/filtered_summary.chunk001of006.csv
# Output      : file://Anonymous/data/filtered_summary.csv

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/filter.summary.Gather.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/filter.summary.Gather.log;



echo 'Running task://Anonymous/P_Filter/filter.summary.Gather on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk006of006.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk006of006.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk006of006.csv. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk003of006.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk003of006.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk003of006.csv. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk002of006.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk002of006.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk002of006.csv. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk005of006.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk005of006.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk005of006.csv. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk004of006.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk004of006.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk004of006.csv. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk001of006.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk001of006.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk001of006.csv. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task filter.summary.Gather commands:
awk 'NR==1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk006of006.csv > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk 'NR!=1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk006of006.csv >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk 'NR!=1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk002of006.csv >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk 'NR!=1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk003of006.csv >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk 'NR!=1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk005of006.csv >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk 'NR!=1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk004of006.csv >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk 'NR!=1' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk001of006.csv >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
