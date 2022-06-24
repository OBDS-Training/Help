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
weight: 410
toc: true
---

## Download the installer

In a new Terminal application, log into the CCB cluster.

Download the latest Miniconda installer for Linux using the following command.

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

For reference, the URL to the installer file was obtained from the
[Latest Miniconda installer links][miniconda-installers-latest].

## Run the installer

Use `bash` to execute the installer file.

The option `-b` runs the installer in 'batch' mode (without manual intervention).

The option `-p` specifies the installation path, the location where Conda will
be installed.
We recommend specifying `~/conda`, which will create a directory `conda` in your
home directory.

```bash
bash Miniconda3-latest-Linux-x86_64.sh -b -p ~/conda
```

{{< alert icon="👉" text="Some of the instructions below expect on this installation path. If you decide to change it, be sure to adapt the following instructions accordingly." />}}

Once the installation successfully completes, you may want to delete the installer
file.

```bash
rm Miniconda3-latest-Linux-x86_64.sh
```

## Test the installation

Before going further, we recommend testing that the new installation of Conda works
as expected.

First, the `source` command executes a script that makes Conda discoverable in the
Bash environment of your Terminal application.

Then, the `conda` command is used to activate the `base` environment that was
created during the installation process.

```bash
source ~/conda/etc/profile.d/conda.sh
conda activate base
```

![Screenshot](test-interactively.png)

The `which` command can also be used to verify that the `conda` command
is found on the `PATH`, in the expected location.

```bash
which conda
```

![Screenshot](conda-which.png)

## Deactivate the environment

Before going further, we recommend deactivating the `base` environment.

To do so, the `conda` command is used with the `deactivate` sub-command.

```bash
conda deactivate
```

<!-- ![](test-interactively.png) -->

{{< alert icon="👉" text="Deactivating at this point will allow us to test again in the next section, after setting up a shortcut." />}}

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
