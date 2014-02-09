#!/bin/bash

########### TASK metadata #############
# Task        : useFastqAsShortReads
# Module      : P_PreAssembler
# TaskType    : None
# URL         : task://Anonymous/P_PreAssembler/useFastqAsShortReads
# createdAt   : 2013-12-20 15:55:38.982295
# ncmds       : 16
# LogPath     : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/useFastqAsShortReads.log
# Script Path : /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/useFastqAsShortReads.sh

# Input       : file://Anonymous//groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml
# Output      : file://Anonymous/fastq.fofn

########### END TASK metadata #############

cat /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/workflow/P_PreAssembler/useFastqAsShortReads.sh >> /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/result-nonsensitive/log/P_PreAssembler/useFastqAsShortReads.log;



echo 'Running task://Anonymous/P_PreAssembler/useFastqAsShortReads on' `uname -a`;

echo 'Started on' `date -u`;
echo 'Validating existence of Input Files'
if [ -f /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml ]
then
echo 'Successfully found /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml'
else
echo 'WARNING: Unable to find necessary input file /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/preassembly/input.xml. Treating file as optional to run task.'
fi
echo 'Successfully validated input files'

# Task useFastqAsShortReads commands:
awk '{if ((int((NR-1)/4) % 16) == 0) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk1of16.fastq  || exit $?; echo "Task 0 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 1) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk2of16.fastq  || exit $?; echo "Task 1 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 2) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk3of16.fastq  || exit $?; echo "Task 2 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 3) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk4of16.fastq  || exit $?; echo "Task 3 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 4) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk5of16.fastq  || exit $?; echo "Task 4 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 5) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk6of16.fastq  || exit $?; echo "Task 5 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 6) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk7of16.fastq  || exit $?; echo "Task 6 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 7) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk8of16.fastq  || exit $?; echo "Task 7 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 8) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk9of16.fastq  || exit $?; echo "Task 8 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 9) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk10of16.fastq  || exit $?; echo "Task 9 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 10) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk11of16.fastq  || exit $?; echo "Task 10 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 11) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk12of16.fastq  || exit $?; echo "Task 11 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 12) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk13of16.fastq  || exit $?; echo "Task 12 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 13) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk14of16.fastq  || exit $?; echo "Task 13 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 14) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk15of16.fastq  || exit $?; echo "Task 14 completed at `date -u`" || exit $?;awk '{if ((int((NR-1)/4) % 16) == 15) print ; }' /groups/csf-ngs/projects/20131203_Armin_PacbioEC/data/sga/440_A_CGTACG_L003.fastq > /groups/csf-ngs/data/smrtanalysis/tmpqJEzOA/chunk16of16.fastq  || exit $?; echo "Task 15 completed at `date -u`" || exit $?;


echo 'Finished on' `date -u`;
# Success
exit 0
