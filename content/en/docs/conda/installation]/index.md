---
title: "Installation"
description: "Installing the Conda package management system."
lead: "Installing the Conda package management system."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "conda"
weight: 610
toc: true
---

## Download the installer

Navigate to the [Latest Miniconda installer links][miniconda-installers-latest].

In a new terminal application, log into the CCB cluster.
Download the latest Miniconda installer for Linux.

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

## Run the installer

```bash
bash Miniconda3-latest-Linux-x86_64.sh -b -p conda
```

Once the installation successfully completes, you may want to delete the installer file.

```bash
rm Miniconda3-latest-Linux-x86_64.sh
```

## Test the installation

```bash
source ~/conda/etc/profile.d/conda.sh
conda activate base
```

<!-- ![Screenshot](path) -->

```bash
which conda
```

## Deactivate the environment

```bash
conda deactivate
```

Screenshot.

We deactivate before setting up and testing the alias in the next section.

## Create a shortcut

Open the `~/.bashrc` file and add the following lines.

```bash
# Create an alias to activate the Conda base environment
alias conda_activate_base='source ~/conda/etc/profile.d/conda.sh && conda activate base'
```

## Test the shortcut

Source the `~/.bashrc` file and test the alias.

```bash
source ~/.bashrc
conda_activate_base
```

Screenshot.

<!-- Link definitions -->

[miniconda-installers-latest]: https://docs.conda.io/en/latest/miniconda.html#latest-miniconda-installer-links
