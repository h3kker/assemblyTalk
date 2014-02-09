#!/bin/bash

########### TASK metadata #############
# Task        : overviewRpt
# Module      : P_Fetch
# TaskType    : None
# URL         : task://Anonymous/P_Fetch/overviewRpt
# createdAt   : 2013-12-20 15:55:45.396486
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Fetch/overviewRpt.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Fetch/overviewRpt.sh

# Input       : file://Anonymous/input.fofn
# Output      : file://Anonymous/results/overview.xml

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Fetch/overviewRpt.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Fetch/overviewRpt.log;



echo 'Running task://Anonymous/P_Fetch/overviewRpt on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task overviewRpt commands:
makeOverviewReport.py --output=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/overview.xml || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
