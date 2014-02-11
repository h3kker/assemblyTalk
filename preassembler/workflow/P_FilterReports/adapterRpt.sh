#!/bin/bash

########### TASK metadata #############
# Task        : adapterRpt
# Module      : P_FilterReports
# TaskType    : None
# URL         : task://Anonymous/P_FilterReports/adapterRpt
# createdAt   : 2013-12-20 15:55:46.576215
# ncmds       : 2
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_FilterReports/adapterRpt.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_FilterReports/adapterRpt.sh

# Input       : file://Anonymous/input.fofn
# Output      : file://Anonymous/results/filterReports_adapters.xml

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_FilterReports/adapterRpt.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_FilterReports/adapterRpt.log;



echo 'Running task://Anonymous/P_FilterReports/adapterRpt on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task adapterRpt commands:
makeAdapterReport.py --output=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn --report=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_adapters.xml || exit $?; echo "Task 0 completed at `date -u`" || exit $?;saxonb9 -xsl:/groups/csf-ngs/bin/pacbio/smrtanalysis/analysis/etc/xsl/brandedGraphReport.xsl -s:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_adapters.xml -o:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/filterReports_adapters.html || exit $?; echo "Task 1 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
