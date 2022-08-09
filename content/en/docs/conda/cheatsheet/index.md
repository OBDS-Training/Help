---
title: "Conda cheatsheet"
description: "A cheatsheet of Conda commands."
lead: "A cheatsheet of Conda commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "conda"
weight: 540
toc: true
---

## Search available packages

The `search` command can be used to search for available packages and package versions
programmatically.

For instance:

```bash
mamba search pysam
```

The following websites can also be used to manually search packages available in individual
channels:

- `bioconda`: <https://anaconda.org/bioconda/repo/>
- `conda-forge`: <https://conda-forge.org/feedstock-outputs/index.html>

## Install a specific package version

To install a specific version of a package, add the `=` symbol, followed by the
specific version number.

For instance:

```bash
mamba install pysam=0.19.1
```

Reminder: use the `search` command to identify the the list of versions available for a given package.

```bash
mamba search pysam
```

{{< alert icon="👉" text="The search returns package versions in alphanumeric order, meaning that the most recent versions will be present at the end of the output." />}}

## Dry-run

For several commands, the `--dry-run` option can be used to only display what would have been done,
without actually doing anything.
This can be particularly helpful to safely assess the impact of any command that is likely to
significantly alter the environment.

For instance:

```bash
mamba install pysam --dry-run
```

## Remove packages

The `remove` command can be used to remove installed packages from the environment.

For instance:

```bash
mamba remove samtools
```

<!-- Link definitions -->
