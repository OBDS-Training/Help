---
title: "First steps with Conda"
description: "Configuring Conda and installing mamba."
lead: "Configuring Conda and installing mamba."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "conda"
weight: 420
toc: true
---

## Pre-requisite

Activate the `base` Conda environment, as demonstrated in the page [Install Miniconda]({{< relref "/docs/conda/installation" >}}).

## Conda sub-commands

The `conda --help` command can be used to list the main sub-commands of the `conda`
executable, along with a brief description of their purpose.

```bash
conda --help
```

The `conda info` command can be used to display information about your current installation.

```bash
conda info
```

{{< alert icon="👉" text="You should always include the output of the 'conda info' command with all your bug report, as it provide essential context for your own situation." />}}
