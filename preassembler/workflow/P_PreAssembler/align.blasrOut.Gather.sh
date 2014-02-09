#!/bin/bash

########### TASK metadata #############
# Task        : align.blasrOut.Gather
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/align.blasrOut.Gather
# createdAt   : 2013-12-20 15:55:41.611740
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/align.blasrOut.Gather.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/align.blasrOut.Gather.sh

# Input       : file://Anonymous/align.chunk005of006.b4
# Input       : file://Anonymous/align.chunk004of006.b4
# Input       : file://Anonymous/align.chunk003of006.b4
# Input       : file://Anonymous/align.chunk002of006.b4
# Input       : file://Anonymous/align.chunk001of006.b4
# Input       : file://Anonymous/align.chunk006of006.b4
# Output      : file://Anonymous/align.b4

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/align.blasrOut.Gather.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/align.blasrOut.Gather.log;



echo 'Running task://Anonymous/P_PreAssembler/align.blasrOut.Gather on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk005of006.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk005of006.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk005of006.b4. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk004of006.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk004of006.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk004of006.b4. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk003of006.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk003of006.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk003of006.b4. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk002of006.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk002of006.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk002of006.b4. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk001of006.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk001of006.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk001of006.b4. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk006of006.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk006of006.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk006of006.b4. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task align.blasrOut.Gather commands:
rm -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 0 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk004of006.b4 >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 1 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk003of006.b4 >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 2 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk001of006.b4 >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 3 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk005of006.b4 >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 4 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk002of006.b4 >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 5 completed at `date -u`" || exit $?;cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.chunk006of006.b4 >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
