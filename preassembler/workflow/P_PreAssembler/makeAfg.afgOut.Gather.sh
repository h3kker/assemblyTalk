#!/bin/bash

########### TASK metadata #############
# Task        : makeAfg.afgOut.Gather
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/makeAfg.afgOut.Gather
# createdAt   : 2013-12-20 15:55:37.915929
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg.afgOut.Gather.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg.afgOut.Gather.sh

# Input       : file://Anonymous/shortreads.chunk007of016.afg
# Input       : file://Anonymous/shortreads.chunk010of016.afg
# Input       : file://Anonymous/shortreads.chunk014of016.afg
# Input       : file://Anonymous/shortreads.chunk001of016.afg
# Input       : file://Anonymous/shortreads.chunk006of016.afg
# Input       : file://Anonymous/shortreads.chunk015of016.afg
# Input       : file://Anonymous/shortreads.chunk012of016.afg
# Input       : file://Anonymous/shortreads.chunk003of016.afg
# Input       : file://Anonymous/shortreads.chunk009of016.afg
# Input       : file://Anonymous/shortreads.chunk008of016.afg
# Input       : file://Anonymous/shortreads.chunk004of016.afg
# Input       : file://Anonymous/shortreads.chunk013of016.afg
# Input       : file://Anonymous/shortreads.chunk002of016.afg
# Input       : file://Anonymous/shortreads.chunk016of016.afg
# Input       : file://Anonymous/shortreads.chunk011of016.afg
# Input       : file://Anonymous/shortreads.chunk005of016.afg
# Output      : file://Anonymous/shortreads.afg

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/makeAfg.afgOut.Gather.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/makeAfg.afgOut.Gather.log;



echo 'Running task://Anonymous/P_PreAssembler/makeAfg.afgOut.Gather on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk007of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk007of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk007of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk010of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk010of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk010of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk014of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk014of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk014of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk001of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk001of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk001of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk006of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk006of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk006of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk015of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk015of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk015of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk012of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk012of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk012of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk003of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk003of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk003of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk009of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk009of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk009of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk008of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk008of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk008of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk004of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk004of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk004of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk013of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk013of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk013of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk002of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk002of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk002of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk016of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk016of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk016of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk011of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk011of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk011of016.afg. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk005of016.afg ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk005of016.afg'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk005of016.afg. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task makeAfg.afgOut.Gather commands:
awk '{ if (/^iid:[0-9]+$/) {print "iid:"++iid} else {print}; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk007of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk012of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk003of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk009of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk008of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk010of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk004of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk014of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk001of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk006of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk013of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk002of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk016of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk011of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk005of016.afg /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.chunk015of016.afg > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/shortreads.afg  || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
