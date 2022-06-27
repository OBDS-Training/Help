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

## Help and information

The `conda --help` command can be used to list the main sub-commands of the `conda`
executable, along with a brief description of their purpose.

```bash
conda --help
```

![Example output of the `conda --help` command.](conda-help.png)

The `conda info` command can be used to display information about your current installation.

```bash
conda info
```

![Example output of the `conda info` command.](conda-info.png)

{{< alert icon="👉" text="You should always include the output of the 'conda info' command with all your bug reports, as that information provides important context for your own situation." />}}

## Configuration

Conda packages are stored in different locations called _channels_.
More information is available in the [Conda documentation][conda-channels].

Configured channels are searched in a specific order when installing packages,
so it is important to configure which channels are searched and in which order.

We recommend the following channels, in decreasing order of priority:

- `bioconda`
- `conda-forge`
- `default`

Adding new channels automatically puts them at the top of the priority list,
so the commands below add channels from the lowest priority channel to the highest
priority one, to produce the desired order of priority described above.

```bash
conda config --add channels defaults
conda config --add channels conda-forge
conda config --add channels bioconda
```

The `conda info` command (described above) can be used to verify the list of channels
that are currently configured, among other pieces of information.

![Section of 'conda info' output listing configured channels.](conda-info-channels.png)

## List packages

The `conda list` command can be used to list the packages installed in the current
environment

```bash
conda list
```

![Example output of the `conda list` command.](conda-list.png)

{{< alert icon="👉" text="The screenshot above represents an example output reporting package version numbers at a certain point in time. It is very likely and entirely normal that your own package version numbers differ from those." />}}

## Update packages

The `conda update` command can be used to updates conda packages (in the current environment)
to the latest compatible version.

The `--all` option checks all packages in the environment (rather than explicitly specifying
individual packages).

```bash
conda update --all
```

In particular, the command will produce a detailed plan, listing packages that may be downloaded to
update those packages in the Conda environment.

We recommend careful reviewing the information detailed in the package update plan before agreeing to
proceed, by typing `y` and pressing the Return key when prompted.

![Example package plan for downloads produced by the 'conda update' command.](conda-update-download.png)

## Search for packages

The `conda search` command can be used to search for packages available in any of the configured channels.

For instance, the example below demonstrates how to search for a Conda package called `mamba`.

```bash
conda search mamba
```

![Extract of an example output for the 'conda search' command.](conda-search.png)

The output of the `conda search` command includes key information for identifying the list of versions
available and potentially selecting a specific build to install.
For instance, the `Channel` column indicates the channel in which each package build is stored, which
can be especially important for packages available from different channels.

## Check if a package is installed

The `conda list` command can be used with the name of a specific package, to list any version of that
package installed in the environment.

The output will be presented as a table, and the table will be empty (i.e., only column headers)
if the package is not installed in the environment.

```bash
conda list mamba
```

![Output of the 'conda list' command for a package that is not currently installed in the environment.](conda-list-mamba-missing.png)

Alternatively, the Bash command `which` can be used to check whether an executable known to be present
in a Conda package is detected on the `PATH`.

```bash
which mamba
```

![Output of the `which` command for an executable that is currently not detected on the 'PATH'.](which-mamba-missing.png)

## Install a package

The `conda install` command can be used to install packages using the `conda` executable.

However, the built-in Conda installer can be quite slow to identify and resolve dependencies
between packages, which led to a re-implementation of the conda package manager in C++,
distributed in the `mamba` package.

To install the `mamba` package, use the command below.

```bash
conda install mamba
```

![Extract of an example output for the 'conda install mamba' command.](conda-install-mamba.png)

<!-- Link definitions -->

[conda-channels]: https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/channels.html
