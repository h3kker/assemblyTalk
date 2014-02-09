#!/bin/bash

########### TASK metadata #############
# Task        : toFofn
# Module      : P_Fetch
# TaskType    : None
# URL         : task://Anonymous/P_Fetch/toFofn
# createdAt   : 2013-12-20 15:55:45.191862
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Fetch/toFofn.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Fetch/toFofn.sh

# Input       : file://Anonymous//groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml
# Output      : file://Anonymous/input.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Fetch/toFofn.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Fetch/toFofn.log;



echo 'Running task://Anonymous/P_Fetch/toFofn on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task toFofn commands:
rm -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 0 completed at `date -u`" || exit $?;echo '/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/A02_1/Analysis_Results/m131128_163657_42164_c100589642550000001823099704281491_s1_p0.1.bax.h5' >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 1 completed at `date -u`" || exit $?;echo '/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/A02_1/Analysis_Results/m131128_163657_42164_c100589642550000001823099704281491_s1_p0.2.bax.h5' >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 2 completed at `date -u`" || exit $?;echo '/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/A02_1/Analysis_Results/m131128_163657_42164_c100589642550000001823099704281491_s1_p0.3.bax.h5' >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 3 completed at `date -u`" || exit $?;echo '/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/B01_1/Analysis_Results/m131129_160711_42164_c100589642550000001823099704281492_s1_p0.1.bax.h5' >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 4 completed at `date -u`" || exit $?;echo '/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/B01_1/Analysis_Results/m131129_160711_42164_c100589642550000001823099704281492_s1_p0.2.bax.h5' >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 5 completed at `date -u`" || exit $?;echo '/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/B01_1/Analysis_Results/m131129_160711_42164_c100589642550000001823099704281492_s1_p0.3.bax.h5' >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
