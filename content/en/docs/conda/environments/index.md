---
title: "Use Conda environments"
description: "Creating and managing Conda environments."
lead: "Creating and managing Conda environments."
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

## Motivation

Different projects often require different versions of the same program,
or even mutually incompatible versions of different programs.

Conda provides the possibility to create and manage distinct environments,
each containing a set of software packages that is independent from
all other Conda environments on the same computer.

Upon initial installation
(see section [Install Miniconda]({{< relref "/docs/conda/installation" >}})),
the Conda installer automatically creates an environment called `base`.
We recommend keeping the `base` environment as minimal as possible,
and creating new Conda environments for testing and working as required
by individual projects.
A notable exception is the `mamba` package that we recommend installing
directly in the `base` environment
(see section [First steps with Conda]({{< relref "/docs/conda/first-steps" >}})).

## Get started

The `conda env` command includes a set of sub-commands to create and manage
Conda environments.

{{< alert icon="👉" text="In many cases, the 'conda' and 'mamba' commands can be used interchangeably, as Mamba is implemented as a faster drop-in replacement for Conda." />}}

The `conda env --help` command can be used to display the help page and the
list of available sub-commands.

```bash
mamba env --help
```

<!-- Screenshot -->

## List environments

The `conda env list` command can be used to list existing Conda environments
(for the current user).

```bash
mamba env list
```

<!-- Screenshot -->

{{< alert icon="👉" text="Conda environments are private to each user. Users cannot see each other's Conda environments." />}}

## Create an environment

The `mamba create` command can be used to create a new environment.

```bash
mamba create -n ccb_demo_env
```

<!-- Screenshot -->

In particular:

- The option `-n` declares the name of the environment to create.
  This must be a name that is not used yet (use `mamba env list`
  to list existing environments).

At this point, the command `mamba env list` can be used to verify that
the new environment was created.

```bash
mamba env list
```

<!-- Screenshot -->

## Activate an environment

Conda environments do not take effect until they are activated.

In effect, a Conda environment is a directory that contains a specific collection
of conda packages.
Activating an environment loads all the packages that are installed in the directory
associated with that environment.
More information on Conda environments is available in the
[Conda documentation][conda-concepts-environments].

The `conda activate <name>` command can be used to activate an environment
using the name of that environment.

For instance, the `ccb_demo_env` environment that we created above can be activated
as follows:

```bash
conda activate ccb_demo_env
```

<!-- Screenshot -->

Separately, the `mamba list` command can be used to verify that the new environment
does not contain any installed package yet.

```bash
mamba list
```

<!-- Screenshot -->

## Install packages in an environment

The `mamba install` command can be used to install packages in the active environment
exactly as in the `base` environment.

For instance, the most recent version of the `python` and `r-base` packages available
can be installed as follows:

```bash
mamba install python r-base
```

<!-- Screenshot -->

Remember to type `Y` and press the Return key when prompted to proceed with the
package installation plan.

The `mamba list` command can be used to verify that the Conda environment now includes
the requested packages, as well as their dependencies.

```bash
mamba list
```

<!-- Screenshot -->

The Bash command `which` can also be used to verify that the `python` and `R`
executable files are now available from within the Conda environment.

```bash
which python
which R
```

<!-- Screenshot -->

## Create an environment from a list of packages

The two steps of
(1) creating a new environment,
and (2) installing packages in that new environment;
can be combined into a single command.

For instance, a new environment named `ccb_demo_env_2` can be created while
immediately installing the latest version of the `python` and `r-base` packages
as follows:

```bash
mamba create -n ccb_demo_env_2 python r-base
```

<!-- Screenshot -->

Again, the `conda activate` command must be used to manually activate the new environment
before it can be used.
Then, the Bash command `which` can be used to verify that the two executable files are
found in the new environment.

```bash
conda activate ccb_demo_env_2
which python
which R
```

<!-- Screenshot -->

## Remove an environment

The `conda remove` command can be used to remove environments that are not needed anymore
(e.g., test environment, completed project).

```bash
conda deactivate
mamba remove --name ccb_demo_env_2 --all 
```

Importantly, if the environment that you wish to remove is active, make sure to deactivate it
first, using the command `conda deactivate`.

Then, the `mamba remove` command can be used with a number of options.
In particular:

- The option `--name` specifies the name of the environment to remove.
- The option `--all` indicates that all packages in that environment
  must be removed.
  This option is essential to indicate that the entire environment
  must be removed.

<!-- Link definitions -->

[conda-concepts-environments]: https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/environments.html
