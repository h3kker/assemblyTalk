#!/bin/bash

########### TASK metadata #############
# Task        : filterLongReadsByLength
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/filterLongReadsByLength
# createdAt   : 2013-12-20 15:55:40.961005
# ncmds       : 4
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/filterLongReadsByLength.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/filterLongReadsByLength.sh

# Input       : file://Anonymous/data/filtered_subreads.fasta
# Output      : file://Anonymous/filtered_longreads.fasta

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/filterLongReadsByLength.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/filterLongReadsByLength.log;



echo 'Running task://Anonymous/P_PreAssembler/filterLongReadsByLength on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task filterLongReadsByLength commands:
l= || exit $?; echo "Task 0 completed at `date -u`" || exit $?;l=${l:-3000} || exit $?; echo "Task 1 completed at `date -u`" || exit $?;fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta | awk -v len=$l '($1 < len ){ print $2 } '| fastaremove /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta stdin > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/filtered_longreads.fasta  || exit $?; echo "Task 2 completed at `date -u`" || exit $?;if [ ! -s /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/filtered_longreads.fasta ]; then echo 'Empty long reads'; exit 1; fi || exit $?; echo "Task 3 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
