---
title: "Back up your work"
description: "A brief introduction to best practices in backing up files."
lead: "A brief introduction to best practices in backing up files."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "organise-and-backup"
weight: 302
toc: true
---

## Backups and archives

### What is a backup?

A _backup_ is a copy of important data that is stored in an alternative location,
so that it can be recovered the original data is deleted or becomes corrupted.

### What is an archive?

An _archive_ is a copy of a completed project that has been stored on a remote
computer for long-term storage with limited access.

Computer systems used to archive data often have reduced cost for disk usage
over long periods of time, but longer access time to retrieve data.

Several commercial third-party services are available to archive large amounts of data
(e.g., Amazon Glacier).

{{< alert icon="👉" text="Before using third-party systems, check with funders if they allow data to be hosted externally." />}}

Several public data repositories store research data at no cost, including:

- [European Nucleotide Archive (ENA) - EMBL-EBI][ena-home]
- [ArrayExpress - EMBL-EBI][arrayexpress-home]
- [Gene Expression Omnibus (GEO) - NCBI][ncbi-geo]
- [Short Read Archive (SRA) - NCBI][sra-home]

{{< alert icon="👉" text="Archived data should be carefully organised and annotated with comprehensive metadata for traceability and discoverability." />}}

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

### Environment specifications

The version of programs used in scripts and notebooks should be recorded and backed up.

We describe the use of environment modules in the section
[Using environment modules]({{< relref "/docs/linux/modules" >}}).
When using environment modules, we recommend writing scripts that explicitly load the
version of the module that you wish to use, and back up those scripts.

We also recommend the use of package management systems described in the following sections:

- [Conda]({{< relref "/docs/conda" >}}).

Package managers can be used to automate the process of installing, upgrading, configuring,
and removing computer programs in a consistent manner.

In addition, package managers generally include functionality to export the list of programs
installed in an environment as a text file detailing the name and version of each program
installed in the environment.

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

## How many backup copies should I make?

One backup copy on a reliable computer is often sufficient.

However, it is a good idea to back up key data in more than one place, if possible.

## How do I perform a backup?

The first thing to know is that backups are not run automatically on the CCB cluster.
Users are responsible for performing the backup of their own data.

The `rsync` command is one of the handiest and most reliable backup tools available
on the CCB cluster.

The `rsync` program is a utility for efficiently transferring and synchronizing files
between a computer and a storage drive and across networked computers by comparing
the modification times and sizes of files.
In other words, calls to the `rsync` command will only transfer files that were modified
since the previous backup, saving valuable time during subsequent backups.

A typical backup using the `rsync` command looks as follows:

```bash
rsync -avzh /directory/to/backup username@remote:/backup/directory
```

In particular:

- The option `-a` enables the _archive_ mode enabling all of the following options:
  - `-r` -- Recursively backup the target directory.
  - `-l` -- Copy symlinks as symlinks (i.e., not the target files themselves).
  - `-p` -- Preserve permissions.
  - `-t` -- Preserve modification times.
  - `-g` -- Preserve group.
  - `-o` -- Preserve owner.
  - `-D` -- Preserve device files special files.
- The option `-v` make the command verbose (i.e., prints informative messages as it runs).
- The option `-z` compresses files as it is transferred, reducing the amount of data being transmitted.
- The option `-h` outputs numbers in a more human-readable format (i.e., with units).
- The first positional argument represents the path to the directory that you wish to back up.
- The second positional argument describes the path to the directory on the remote computer
  where you wish to make a backup copy of the original data:

If you use the command above as template:

- Replace `/directory/to/backup` by the path to the directory that you wish to back up.
- Replace `username` by your username on the remote computer.
- Replace `remote` by the URL of the remote computer.
- Replace `/backup/directory` by the path to the directory in which you want to create
  or update the backup.

<!-- Link definitions -->

[bcf-file-format]: https://emea.illumina.com/informatics/sequencing-data-analysis/sequence-file-formats.html
[rstudio-server]: https://www.rstudio.com/products/rstudio/download-server/
[rstudio-desktop]: https://www.rstudio.com/products/rstudio/
[jupyter-org]: https://jupyter.org/
[github-com]: https://github.com/
[ncbi-geo]: https://www.ncbi.nlm.nih.gov/geo/
[ensembl-ftp-download]: http://www.ensembl.org/info/data/ftp/index.html/
[ucsc-genome-browser]: https://hgdownload.soe.ucsc.edu/downloads.html
[ena-home]: https://www.ebi.ac.uk/ena/browser/home
[sra-home]: https://www.ncbi.nlm.nih.gov/sra
[arrayexpress-home]: https://www.ebi.ac.uk/arrayexpress/
