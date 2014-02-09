#!/bin/bash

########### TASK metadata #############
# Task        : subreadRpt
# Module      : P_FilterReports
# TaskType    : None
# URL         : task://Anonymous/P_FilterReports/subreadRpt
# createdAt   : 2013-12-20 15:55:39.218355
# ncmds       : 2
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_FilterReports/subreadRpt.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_FilterReports/subreadRpt.sh

# Input       : file://Anonymous/data/filtered_subread_summary.csv
# Output      : file://Anonymous/results/filterReports_filterSubreadStats.xml

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_FilterReports/subreadRpt.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_FilterReports/subreadRpt.log;



echo 'Running task://Anonymous/P_FilterReports/subreadRpt on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subread_summary.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subread_summary.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subread_summary.csv. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task subreadRpt commands:
makeFilterSubreadReport.py /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subread_summary.csv --report=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_filterSubreadStats.xml --output=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results || exit $?; echo "Task 0 completed at `date -u`" || exit $?;saxonb9 -xsl:/groups/csf-ngs/bin/pacbio/smrtanalysis/analysis/etc/xsl/brandedGraphReport.xsl -s:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_filterSubreadStats.xml -o:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_filterSubreadStats.html || exit $?; echo "Task 1 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
