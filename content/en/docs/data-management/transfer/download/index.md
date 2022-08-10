---
title: "Download publicly available files"
description: "A brief introduction to downloading publicly available files."
lead: "A brief introduction to downloading publicly available files."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "transfer"
weight: 311
toc: true
---

## Public data repositories

Public data repositories provide platforms for distributing commonly used reference
data sets (e.g., reference genomes, gene annotations), as well as experimental data sets
associated with published work.

For instance:

- [FTP Download - Ensembl][ensembl-ftp]
- [ArrayExpress - EMBL-EBI][arrayexpress]
- [ENA Browser - European Nucleotide Archive - EMBL-EBI][ena-browser]
- [Gene Expression Omnibus - NCBI][geo]
- [Home - SRA - NCBI][sra]

It is often necessary to download data files from those public repositories onto
the CCB cluster before they can be used by programs running on the CCB cluster.

A number of Linux commands are available to download remote files.

## wget

The `wget` command is a free software package for retrieving files using
HTTP, HTTPS, FTP and FTPS; the most widely used Internet protocols.

For instance:

```bash
wget ftp://ftp.ensembl.org/pub/release-102/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz
```

By default, the `wget` command downloads files in the working directory.
We recommend using the `cd` command to set the working directory before using the `wget` command.

Alternatively, the `-P` option can be used to set a directory prefix where all files and subdirectories will be
saved.

For instance:

```bash
wget \
  -P ~/ccb_demo \
  ftp://ftp.ensembl.org/pub/release-102/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz
```

## rsync

We describe the `rsync` command in the section
[How do I perform a backup?]({{< relref "/docs/data-management/organise-and-backup/backup#how-do-i-perform-a-backup" >}}).

While the `rsync` command is more commonly used to perform and retrieve backups,
its synchronisation functionality can also be used to download files and directories.

## curl

The `curl` command can be used to download individual files.

For instance:

```bash
curl \
  -o ~/ccb_demo/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz \
  ftp://ftp.ensembl.org/pub/release-102/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz
```

In particular:

- The option `-o` can be used to declare the location and filename of the downloaded file.

Alternatively, the options `-O -J` can be used together, to automatically identify
the filename of the original file on the remote computer, and save the file locally
with the same name.
However, in that case, the file can only be downloaded in the working directory.
We recommend using the `cd` command to set the working directory before using those options.

For instance:

```bash
cd ~/ccb_demo
curl \
  -O -J \
  ftp://ftp.ensembl.org/pub/release-102/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz
```

In particular:

- `-O` save the file locally using the basename of the original file ()
- `-J` ensures that `-O` respects the basename of the original file on the remote computer,
  instead of extracting a basename from the URL (useful when the two are different).

<!-- Link definitions -->

[ensembl-ftp]: http://www.ensembl.org/info/data/ftp/index.html/
[arrayexpress]: https://www.ebi.ac.uk/arrayexpress/
[ena-browser]: https://www.ebi.ac.uk/ena/browser
[geo]: https://www.ncbi.nlm.nih.gov/geo/
[sra]: https://www.ncbi.nlm.nih.gov/sra
