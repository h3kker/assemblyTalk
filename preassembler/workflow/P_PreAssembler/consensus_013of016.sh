#!/bin/bash

########### TASK metadata #############
# Task        : consensus_013of016
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/consensus_013of016
# createdAt   : 2013-12-20 15:55:42.508839
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/consensus_013of016.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/consensus_013of016.sh

# Input       : file://Anonymous/layout.chunk013of016.ids
# Input       : file://Anonymous/corrected.bnk#InitialBank
# Output      : file://Anonymous/consensus.chunk013of016.ctg

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/consensus_013of016.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/consensus_013of016.log;



echo 'Running task://Anonymous/P_PreAssembler/consensus_013of016 on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk013of016.ids ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk013of016.ids'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk013of016.ids. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task consensus_013of016 commands:
make-consensus -A -b /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/corrected.bnk -i /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/layout.chunk013of016.ids -L -w 2 > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/consensus.chunk013of016.ctg || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
