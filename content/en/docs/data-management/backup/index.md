---
title: "Backing up data"
description: "A brief introduction to best practices in backing up files."
lead: "A brief introduction to best practices in backing up files."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "data-management"
weight: 302
toc: true
---

## What is a backup?

A backup is a copy of important data that is stored in an alternative location,
so that it can be recovered the original data is deleted or becomes corrupted.

## Where should a backup be made?

A backup copy should be made a computer that is different and preferably physically
distant from the computer where the original data files exist.

A different computer ensures the survival of the data in the event of a failure
affecting specifically the computer where the original data is stored.

A distant location ensure the survival of the data in the event of destructive events
affecting all computers in the location of the computer where the original data is stored.

## Which files should be backed up?

### Experimental raw data

Experimental raw data include files that contain data collected directly from
the experiment and irrecoverable if they were lost.

For instance, FASTQ files are generally considered the raw data files for
sequencing experiments (sometimes, [BCL files][bcf-file-format] are returned
to clients by sequencing facilities, and require conversion to FASTQ files
prior to downstream analyses).

All raw data files that cannot be regenerated in the event of loss must are
a top priority to backup.

### Analysis code

All bespoke code written and executed for a particular project should be
backed up as soon as possible after -- or while -- executing it.

Code typically includes scripts and notebooks executed on the CCB cluster
in a Terminal application or integrated development environment
(e.g., [RStudio Server][rstudio-server], [jupyter][jupyter-org]),
as well as code executed in a similar way on personal computers
(e.g., [RStudio Desktop][rstudio-desktop]).

In particular, all code that is necessary to transform raw data into
output files is a top priority to back up.

We recommend creating a separate [GitHub][github-com] repository for each project,
and using that repository to maintain an up-to-date backup copy of each script and
notebook for the associated project.

## Which files should NOT be backed up?

### Publicly available data sets

Data sets obtained from stable public websites
(e.g.,
[NCBI GEO][ncbi-geo],
[Ensembl FTP Download][ensembl-ftp-download],
[UCSC Genome Downloads][ucsc-genome-browser])
do not need to be backed up.

Instead, the source of those data sets should be recorded,
so that they may be downloaded again if lost or corrupted.

Better yet, the commands executed to download those data sets
should be saved in a script or notebook that is backed up with
the analysis code (see above, [Analysis code](#analysis-code)).

### Shared files

Sometimes, large files re-used across many projects
(e.g., reference genome sequences and annotations,
some publicly available data sets) are downloaded by system administrators
and stored in a shared location accessible by all users of the CCB cluster.

Those shared resources should not be backed up by individual users.

However, users should make sure that they are fully familiar with any
pre-processing that may have been applied to those files (if any), and
keep a record for the accurate reporting of their materials and methods.

### Output files

Output files are the result of running programs -- through scripts and notebooks --
on files that contain experimental raw data.

Output files do not need to be backed up, as they can be regenerated from the
experimental raw data and the analysis code that were backed up
(see above, [Which files should be backed up?](#which-files-should-be-backed-up)).

With that said, it can be beneficial to make copies of some key output files that
are commonly used in downstream analyses and would take a long time to regenerate
(e.g., RNA-seq count matrix).

{{< alert icon="👉" text="A backup of key output files does not contribute toward reproducibility, but can provide a continuity plan in the event of lost or corrupted files, while those files are being regenerated from backed up raw data, scripts and notebooks." />}}

## How often should data be backed up?

Data should be backed up at an interval determined by how often the data changes,
how valuable it is, and how long it takes to perform the backup.

<!-- Link definitions -->

[bcf-file-format]: https://emea.illumina.com/informatics/sequencing-data-analysis/sequence-file-formats.html
[rstudio-server]: https://www.rstudio.com/products/rstudio/download-server/
[rstudio-desktop]: https://www.rstudio.com/products/rstudio/
[jupyter-org]: https://jupyter.org/
[github-com]: https://github.com/
[ncbi-geo]: https://www.ncbi.nlm.nih.gov/geo/
[ensembl-ftp-download]: http://www.ensembl.org/info/data/ftp/index.html/
[ucsc-genome-browser]: https://hgdownload.soe.ucsc.edu/downloads.html