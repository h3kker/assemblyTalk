#!/bin/bash

########### TASK metadata #############
# Task        : filter_006of006
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/filter_006of006
# createdAt   : 2013-12-20 15:55:40.239541
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/filter_006of006.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/filter_006of006.sh

# Input       : file://Anonymous/input.chunk006of006.fofn
# Output      : file://Anonymous/data/filtered_summary.chunk006of006.csv
# Output      : file://Anonymous/data/filtered_regions
# Output      : file://Anonymous/data/filtered_regions.chunk006of006.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/filter_006of006.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/filter_006of006.log;



echo 'Running task://Anonymous/P_Filter/filter_006of006 on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk006of006.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk006of006.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk006of006.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task filter_006of006 commands:
filterPlsH5.py --filter='MinReadScore=0.80,MinSRL=500,MinRL=100' --trim='True' --outputDir=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions --outputSummary=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.chunk006of006.csv --outputFofn=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk006of006.fofn /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.chunk006of006.fofn || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
