#!/bin/bash

########### TASK metadata #############
# Task        : preAssemblerReport
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/preAssemblerReport
# createdAt   : 2013-12-20 15:55:43.716441
# ncmds       : 2
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/preAssemblerReport.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/preAssemblerReport.sh

# Input       : file://Anonymous/data/filtered_subreads.fasta
# Input       : file://Anonymous/filtered_longreads.fasta
# Input       : file://Anonymous/data/corrected.fasta
# Output      : file://Anonymous/results/preAssemblerReport.xml

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/preAssemblerReport.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/preAssemblerReport.log;



echo 'Running task://Anonymous/P_PreAssembler/preAssemblerReport on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/filtered_longreads.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/filtered_longreads.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/filtered_longreads.fasta. Treating file as optional to run task.'
fi
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task preAssemblerReport commands:
seedc=$(fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/filtered_longreads.fasta | awk '{t+=$1}END{print t}')
corrc=$(fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta | awk '{t+=$1}END{print t}')
nread=$(grep -c '>' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta)
recut=
(
cat << EOF 
<?xml version="1.0" encoding="UTF-8"?><report><layout onecolumn="true"/><title>Pre-Assembly</title><attributes><attribute id="1" name="Polymerase Read Bases" value="$(fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta | awk '{t+=$1}END{print t}')" hidden="true">$(fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/filtered_subreads.fasta | awk '{t+=$1}END{print t}')</attribute><attribute id="2" name="Length Cutoff" value="${recut:-3000}" hidden="true">${recut:-3000}</attribute><attribute id="3" name="Seed Bases" value="$seedc" hidden="true">$seedc</attribute><attribute id="4" name="Pre-Assembled Bases" value="$corrc" hidden="true">$corrc</attribute><attribute id="5" name="Pre-Assembled Yield" value="$(echo "scale=3;${corrc}/${seedc}" | bc)" hidden="true">$(echo "scale=3;${corrc}/${seedc}" | bc)</attribute><attribute id="6" name="Pre-Assembled Reads" value="$nread" hidden="true">$nread</attribute><attribute id="7" name="Pre-Assembled Read Length" value="$(echo "$corrc / $nread" | bc)" hidden="true">$(echo "$corrc / $nread" | bc)</attribute><attribute id="8" name="Pre-Assembled N50" value="$(fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta | cut -d' ' -f1 | sort -nr | awk -v corrc=$corrc '{t+=$1;if (t >= corrc / 2){print $1; exit;}}')" hidden="true">$(fastalength /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/data/corrected.fasta | cut -d' ' -f1 | sort -nr | awk -v corrc=$corrc '{t+=$1;if (t >= corrc / 2){print $1; exit;}}')</attribute></attributes></report>
EOF
) > /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/preAssemblerReport.xml || exit $?; echo "Task 0 completed at `date -u`" || exit $?;saxonb9 -xsl:/groups/csf-ngs/bin/pacbio/smrtanalysis/analysis/etc/xsl/brandedGraphReport.xsl -s:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/preAssemblerReport.xml -o:/groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/results/preAssemblerReport.html || exit $?; echo "Task 1 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
