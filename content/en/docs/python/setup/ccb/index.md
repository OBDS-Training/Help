---
title: "Using Python on the CCB cluster"
description: "Using Python on the CCB cluster."
lead: "Using Python on the CCB cluster."
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: false
images: []
menu:
  docs:
    parent: "python"
weight: 600
toc: true
---

## Overview

As well as the standard Python versions that you would normally expect, the CCB
cluster administrators additionally preinstalled hundreds of additional packages
available for all to use. These are available via the `python-cbrg` module.

## Basic usage

If you just want to get up and running with set of commonly used bioinformatics
packages curated by the CCB cluster administrators, you can do so with a single
command:

```bash
module load python-cbrg
```

![Load the 'python-cbrg' module.](module-load-python-cbrg.png)

{{< alert icon="👉" text="The Spyder IDE is included in the standard Python installations." />}}

<!-- Link definitions -->
