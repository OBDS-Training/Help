---
title: "File types and extensions"
description: "Understand file types and extensions."
lead: "Understand file types and extensions."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "files-and-directories"
weight: 216
toc: true
---

## Plain text and binary files

File contents can be categorised in two major types:

- Plain text
- Binary

Plain text files contain only characters of readable materials
that can be displayed by most text editors.
However, plain text files cannot contain graphical representations,
nor other computational objects (e.g., images, sounds).

Binary files describe computer files that are not plain text.
Many different types of binary file formats are used to store virtually
any type of of file content whatsoever (e.g., compiled computer programs,
images, sounds, formatted documents).

In bioinformatics, binary file formats are commonly used to store
compressed versions of equivalent plain text files
(e.g., the [SAM][sam-file-format] and [BAM][bam-file-format] file formats).

## File extensions

File extensions are suffixes appended to the end of filenames,
to indicate the file format used in that particular file.

Many programs make use of file extensions in their input and output file names:

- To parse the contents of input files according to their format.
- To indicate the format used to write the contents of their output files.

{{< alert icon="👉" text="Even when programs do not make use of file extensions, we recommend using an appropriate file extension when naming your files. Even the generic '.txt' file extension is a good habit to indicate that the file contains plain text information." />}}

Many file extensions have been -- and continue to be -- created to describe
plain text file formats that structure their contents differently.

Examples of bioinformatics file formats include, among many others:

- `.fasta` -- biological sequence information.
- `.fastq` -- sequence information with quality scores.
- `.sam` -- alignments of sequences to a reference genome.
- `.gtf`, `.bed` -- genomic coordinates of sequence features (e.g., exons, peaks).

{{< alert icon="👉" text="Renaming a file and changing its file extension will not cause any error if the new file extension does not match the format of the contents. A mismatch between file extension and contents may only be detected when the file is actively used by a program that relies on the file extension and subsequently fails to parse the contents of the file." />}}

<!-- Link definitions -->

[sam-file-format]: https://software.broadinstitute.org/software/igv/SAM
[bam-file-format]: https://software.broadinstitute.org/software/igv/BAM
