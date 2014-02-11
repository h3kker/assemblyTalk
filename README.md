assemblyTalk
============

Documentation + Presentation of *de novo* genome assembly efforts on a 20Mb protist. 

## Presentation + Report

See [report.html](http://h3kker.github.io/assemblyTalk/report.html) for analysis results. The report was generated using R and knitr.

`slides.md` contains the presentation held. To create the HTML slides [slides.html](http://h3kker.github.io/assemblyTalk/slides.html), you need pandoc and reveal.js (included here with a hacked stylesheet).

## Scripts

All scripts that were used in assembly and report generation are in the subfolder `scripts/` or otherwise documented in [report.html](http://h3kker.github.io/assemblyTalk/report.html).

Breakdown:

- `run_abyss_k64_uncorrected.sh`

Assembly with Abyss + Scaffolding using Pacbio reads. Includes workarounds for not being able to use MPI and a crash in the abyss pipeline when running the BWA alignment.

- `run_cerulean.sh`

Call blasr and Cerulean to scaffold Abyss contigs. 

- `run_sga_preqc.sh`

SGA quality control for Illumina Libraries.

- `sga.sh`

Run all stages of the SGA assembler. Tries to be intelligent about previously finished stages. Unlike all other scripts, it does not have a `run_` prefix for unknown reasons.

- `run_soap.sh`

Run SOAP-denovo with `k=81`. 

- `runCorrection.sh`

pacBioToCA pipeline. Use camel case for script name for unknown reasons.

- `run_preassembly.sh`

start SMRTanalysis pipeline

- `run_pbjelly.sh`

This is only the wrapper script. Please see [report.html](http://h3kker.github.io/assemblyTalk/report.html#toc_69) for details.

- `run_cegma.sh`

Analyses an assembly for presence of core genes (CEGMA pipeline).

- `align_scaffolds.sh`, `calc_pileup.pl`, `error_profile.pl`

BWA alignment of PacBio reads to Assembly scaffolds and various analysis scripts (need to run `module load perl5lib` to set env).


## Data Analysis

Most data analysis with R and knitr. To rerun the report, go to the `data/` subfolder and do the following in R:

  library('knitr')
  knit('../report.Rmd')
  markdownToBsHTML('report.md', output='report.html')

`markdownToBsHTML` is a hack to produce nicer results, but includes javascript and stylesheets from Bootstrap (uses `markdown.html` as a template). This is not necessary, `markdownToHTML` is enough.

## Raw Data

Raw data is **not** included! 
