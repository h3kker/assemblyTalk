#!/bin/bash

########### TASK metadata #############
# Task        : takeOutTheTrash
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/takeOutTheTrash
# createdAt   : 2013-12-22 02:18:42.984287
# ncmds       : 7
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/takeOutTheTrash.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/takeOutTheTrash.sh

# Input       : file://Anonymous/align.b4
# Input       : file://Anonymous/corrected.bnk#WithConsensus
# Input       : file://Anonymous/consensus.ctg
# Input       : file://Anonymous/layout.ids
# Input       : file://Anonymous/shortreads.afg

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/takeOutTheTrash.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/takeOutTheTrash.log;



echo 'Running task://Anonymous/P_PreAssembler/takeOutTheTrash on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/consensus.ctg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/consensus.ctg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/consensus.ctg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.afg. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task takeOutTheTrash commands:
rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4 || exit $?; echo "Task 0 completed at `date -u`" || exit $?;rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/align.b4.sorted || exit $?; echo "Task 1 completed at `date -u`" || exit $?;rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk || exit $?; echo "Task 2 completed at `date -u`" || exit $?;rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk.lay || exit $?; echo "Task 3 completed at `date -u`" || exit $?;rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.afg || exit $?; echo "Task 4 completed at `date -u`" || exit $?;rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/consensus.ctg || exit $?; echo "Task 5 completed at `date -u`" || exit $?;rm -rf /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.ids || exit $?; echo "Task 6 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
