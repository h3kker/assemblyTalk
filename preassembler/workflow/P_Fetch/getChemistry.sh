#!/bin/bash

########### TASK metadata #############
# Task        : getChemistry
# Module      : P_Fetch
# TaskType    : None
# URL         : task://Anonymous/P_Fetch/getChemistry
# createdAt   : 2013-12-20 15:55:46.498849
# ncmds       : 1
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Fetch/getChemistry.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Fetch/getChemistry.sh

# Input       : file://Anonymous/input.fofn
# Output      : file://Anonymous/data/chemistry_mapping.xml

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_Fetch/getChemistry.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_Fetch/getChemistry.log;



echo 'Running task://Anonymous/P_Fetch/getChemistry on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/input.fofn. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task getChemistry commands:
makeChemistryMapping.py --metadata=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/movie_metadata --output=/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/chemistry_mapping.xml --mapping_xml=/groups/csf-ngs/bin/pacbio/smrtanalysis/analysis/etc/algorithm_parameters/2013-05/mapping.xml || exit $?; echo "Task 0 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
