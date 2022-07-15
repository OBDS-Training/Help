---
title: "Compress and decompress files"
description: "Compress files using gzip and decompress files using gunzip."
lead: "Compress files using gzip and decompress files using gunzip."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "working"
weight: 223
toc: true
---

## Why compress files?

Raw data files and files created during analyses can be large (up to hundreds of GB).

Compressing files is an efficient way to save disk space.

## Compress using gzip

The `gzip` command can be used to compress files.

```bash
gzip file1.txt
```

![Compressing a file using the 'gzip' command.](gzip.png)

By default, the original file is removed, and the file extension `.gz`
is added to the original file name, to form the name of the new
compressed file.

## Decompress using gunzip

The `gunzip` command can be used to decompress files that were compressed
using the `gzip` command.

```bash
gunzip file1.txt.gz
```

![Decompressing a file using the 'gunzip' command.](gzip.png)

## General advice

Many programs support gzip-compressed input files.
For those programs, there is no need to decompress the files before use.


<!-- Link definitions -->
