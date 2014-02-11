#!/bin/bash

########### TASK metadata #############
# Task        : statsRpt
# Module      : P_FilterReports
# TaskType    : None
# URL         : task://Anonymous/P_FilterReports/statsRpt
# createdAt   : 2013-12-20 15:55:46.351962
# ncmds       : 2
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_FilterReports/statsRpt.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_FilterReports/statsRpt.sh

# Input       : file://Anonymous/data/filtered_summary.csv
# Output      : file://Anonymous/results/filterReports_filterStats.xml

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_FilterReports/statsRpt.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_FilterReports/statsRpt.log;



echo 'Running task://Anonymous/P_FilterReports/statsRpt on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task statsRpt commands:
makeFilterStatsReport.py --skipPrePlots --output=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_summary.csv --report=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_filterStats.xml || exit $?; echo "Task 0 completed at `date -u`" || exit $?;saxonb9 -xsl:/groups/csf-ngs/bin/pacbio/smrtanalysis/analysis/etc/xsl/brandedGraphReport.xsl -s:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_filterStats.xml -o:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_filterStats.html || exit $?; echo "Task 1 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
