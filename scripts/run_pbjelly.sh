#!/bin/bash
#$ -q public.q
#$ -pe smp 4
#$ -cwd
#$ -N armin_pbjelly

module load gridengine
module load python

. /groups/csf-ngs/bin/pacbio/smrtanalysis-2.0.1/etc/setup.sh
. /groups/csf-ngs/bin/assembly/Jelly_13.10.22/setup.sh

Jelly.py $@
