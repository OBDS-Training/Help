---
title: "Compress large files"
description: "A brief introduction to best practices in compressing large files."
lead: "A brief introduction to best practices in compressing large files."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "data-management"
weight: 303
toc: true
---

## Why compress files?

Disk space is a resource that even the largest High Performance Computing (HPC) clusters
can run out of.

It is every user's responsibility to manage their data files and ensure that they do not
use excessive disk space unnecessarily.

Many programs automatically produce output files in compressed formats, to minimise their
footprint on the disk space.
When that is not the case, users are encouraged to compress large files themselves.

## Which files should be compressed?

A rule of thumb is to compress all non-trivial text files greater than 1 MB in size.

The `ls -lh <directory>` command can be used to list files in `<directory>`, along with their
file size in human-readable format (i.e., with units).

## How to compress files?

We describe commands to compress -- and decompress -- files in the page
[Compress and decompress files]({{< relref "/docs/linux/working/compress" >}}).

Briefly:

- The `gzip` command can be used to compress individual files.
- The `tar` command can be used to combine multiple files into a single archive file.

<!-- Link definitions -->
