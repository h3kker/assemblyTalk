#!/bin/bash

########### TASK metadata #############
# Task        : subreads.subreadFastq.Gather
# Module      : P_Filter
# TaskType    : None
# URL         : task://Anonymous/P_Filter/subreads.subreadFastq.Gather
# createdAt   : 2013-12-20 15:55:47.201451
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/subreads.subreadFastq.Gather.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/subreads.subreadFastq.Gather.sh

# Input       : file://Anonymous/data/filtered_subreads.chunk001of006.fastq
# Input       : file://Anonymous/data/filtered_subreads.chunk005of006.fastq
# Input       : file://Anonymous/data/filtered_subreads.chunk002of006.fastq
# Input       : file://Anonymous/data/filtered_subreads.chunk004of006.fastq
# Input       : file://Anonymous/data/filtered_subreads.chunk003of006.fastq
# Input       : file://Anonymous/data/filtered_subreads.chunk006of006.fastq
# Output      : file://Anonymous/data/filtered_subreads.fastq

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Filter/subreads.subreadFastq.Gather.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Filter/subreads.subreadFastq.Gather.log;



echo 'Running task://Anonymous/P_Filter/subreads.subreadFastq.Gather on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk001of006.fastq ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk001of006.fastq'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk001of006.fastq. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk005of006.fastq ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk005of006.fastq'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk005of006.fastq. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk002of006.fastq ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk002of006.fastq'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk002of006.fastq. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk004of006.fastq ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk004of006.fastq'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk004of006.fastq. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk003of006.fastq ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk003of006.fastq'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk003of006.fastq. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk006of006.fastq ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk006of006.fastq'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk006of006.fastq. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task subreads.subreadFastq.Gather commands:
rm -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 0 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk005of006.fastq >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 1 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk003of006.fastq >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 2 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk001of006.fastq >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 3 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk002of006.fastq >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 4 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk004of006.fastq >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 5 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.chunk006of006.fastq >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fastq || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
