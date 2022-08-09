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

TODO

## How often should data be backed up?

Data should be backed up at an interval determined by how often the data changes,
how valuable it is, and how long it takes to perform the backup.

<!-- Link definitions -->

[bcf-file-format]: https://emea.illumina.com/informatics/sequencing-data-analysis/sequence-file-formats.html
[rstudio-server]: https://www.rstudio.com/products/rstudio/download-server/
[rstudio-desktop]: https://www.rstudio.com/products/rstudio/
[jupyter-org]: https://jupyter.org/
[github-com]: https://github.com/
