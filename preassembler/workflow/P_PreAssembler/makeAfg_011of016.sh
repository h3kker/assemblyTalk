#!/bin/bash

########### TASK metadata #############
# Task        : makeAfg_011of016
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/makeAfg_011of016
# createdAt   : 2013-12-20 15:55:38.156435
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg_011of016.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg_011of016.sh

# Input       : file://Anonymous/fastq.chunk011of016.fofn
# Input       : file://Anonymous/data/filtered_regions.chunk011of016.fofn
# Output      : file://Anonymous/shortreads.chunk011of016.afg

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg_011of016.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg_011of016.log;



echo 'Running task://Anonymous/P_PreAssembler/makeAfg_011of016 on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk011of016.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk011of016.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk011of016.fofn. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk011of016.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk011of016.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_regions.chunk011of016.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task makeAfg_011of016 commands:
toAfg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/fastq.chunk011of016.fofn /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk011of016.afg  -noSplitSubreads  || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0