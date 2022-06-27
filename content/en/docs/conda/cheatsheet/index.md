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
weight: 430
toc: true
---

## Install a specific package version

To install a specific version of a package, add the `=` symbol, followed by the
specific version number.

```bash
mamba install pysam=0.19.1
```

Use `mamba search` to identify the the list of versions available for a given package.

```bash
mamba search pysam
```

{{< alert icon="👉" text="The search returns package versions in alphanumeric order, meaning that the most recent versions will be present at the end of the output." />}}

<!-- Link definitions -->
