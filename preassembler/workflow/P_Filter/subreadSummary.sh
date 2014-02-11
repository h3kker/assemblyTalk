#!/bin/bash

########### TASK metadata #############
# Task        : subreadSummary
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/subreadSummary
# createdAt   : 2013-12-20 15:55:46.379222
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/subreadSummary.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/subreadSummary.sh

# Input       : file://Anonymous/data/filtered_regions.fofn
# Output      : file://Anonymous/data/filtered_subread_summary.csv

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/subreadSummary.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/subreadSummary.log;



echo 'Running task://Anonymous/P_Filter/subreadSummary on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task subreadSummary commands:
makeFilterSubreadSummary.py --input=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.fofn --output=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subread_summary.csv --debug || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
