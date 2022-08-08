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
weight: 530
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

{{< alert icon="👉" text="This section demonstrates the creation and management of Conda environments using a number of demonstration environments. Feel free to remove all those environments at the end of this section." />}}

## Get started

Remember to activate the `base` Conda environment.

For instance, using the alias defined on the page [Install Miniconda]({{< relref "/docs/conda/installation#create-a-shortcut" >}}):

```bash
conda_activate_base
```

The `conda env` command includes a set of sub-commands to create and manage
Conda environments.

{{< alert icon="👉" text="In many cases, the 'conda' and 'mamba' commands can be used interchangeably, as Mamba is implemented as a faster drop-in replacement for Conda." />}}

The `conda env --help` command can be used to display the help page and the
list of available sub-commands.

```bash
mamba env --help
```

![Displaying the help page of the 'mamba env' command.](mamba-env-help.png)

## List environments

The `mamba env list` command can be used to list existing Conda environments
(for the current user).

```bash
mamba env list
```

![Displaying the list of Conda environments that currently exist.](mamba-env-list.png)

{{< alert icon="👉" text="Conda environments are private to each user. Users cannot see each other's Conda environments." />}}

## Create an environment

The `mamba create` command can be used to create a new environment.

```bash
mamba create -n ccb_demo_env
```

![Creating a new environment named 'ccb_demo_env'.](mamba-env-create.png)

In particular:

- The option `-n` declares the name of the environment to create.
  This must be a name that is not used yet (use `mamba env list`
  to list existing environments).

At this point, the command `mamba env list` can be used to verify that
the new environment was created.

```bash
mamba env list
```

![Displaying the list of Conda environments that exist after creating the environment 'ccb_demo_env'.](mamba-env-list-ccb_demo_env.png)

In particular:

- Each environment is listed on a separate line, indicating its name
  and the location of its directory in the filesystem.
- The `*` symbol indicates the environment that is currently active.
  Newly created environments are not automatically activated.
  In this example, the `base` environment is still active at this point.

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

![Activating the newly created 'ccb_demo_env' environment.](conda-activate-ccb_demo_env.png)

Separately, the `mamba list` command can be used to verify that the new environment
does not contain any installed package yet.

```bash
mamba list
```

![Initially, the newly created 'ccb_demo_env' environment does not contain any installed package.](mamba-list-ccb_demo_env.png)

## Install packages in an environment

The `mamba install` command can be used to install packages in the active environment
exactly as in the `base` environment.

For instance, the most recent version of the `python` and `r-base` packages available
can be installed as follows:

```bash
mamba install python r-base
```

![Installing packages in the active environment.](mamba-install-active-environment.png)

{{< alert icon="👉" text="Due to the considerable number of dependencies that need to be installed, the screenshot above only displays the first lines of the package installation plan." />}}

Remember to type `Y` and press the Return key when prompted to proceed with the
package installation plan.

The `mamba list` command can be used to verify that the Conda environment now includes
the requested packages, as well as their dependencies.

```bash
mamba list
```

![Displaying the list of packages installed in the 'ccb_demo_env' environment after installing the packages 'python' and 'r-base'.](mamba-list-ccb_demo_env-installed.png)

{{< alert icon="👉" text="Due to the considerable number of packges installed in the environment, the screenshot above only displays the first lines of output." />}}

The Bash command `which` can also be used to verify that the `python` and `R`
executable files are now available from within the Conda environment.

```bash
which python
which R
```

![Displaying the path to the executable files 'python' and 'R'.](which-python-r.png)

{{< alert icon="👉" text="Incidentally, the example screenshot above reveals that Conda created an alias for the 'R' command, which automatically adds the '--no-save' option. This forces R sessions to quit without saving the R workspace." />}}

## Create an environment from a list of packages

In the previous sections, we have demonstrated two separate steps:

1. creating a new environment
2. installing packages in that new environment

Those two steps can be combined into a single command.

For instance, a new environment named `ccb_demo_env_2` can be created while
immediately installing the latest version of the `python` and `r-base` packages
as follows:

```bash
mamba create -n ccb_demo_env_2 python r-base
```

![Simultaneously creating an environment and installing packages in that environment.](mamba-install-create-environment.png)

Again, the `conda activate` command must be used to manually activate the new environment
before it can be used.
Then, the Bash command `which` can be used to verify that the two executable files are
found in the new environment.

```bash
conda activate ccb_demo_env_2
which python
which R
```

![Activating the newly created 'ccb_demo_env_2' environment, then displaying the path to the executable files 'python' and 'R'.](conda-activate-ccb_demo_env_2.png)

## Remove an environment

The `conda remove` command can be used to remove environments that are not needed anymore
(e.g., test environment, completed project).

Importantly, if the environment that you wish to remove is active, make sure to deactivate it
first, using the command `conda deactivate`.

Then, the `mamba remove` command can be used with a number of options.
In particular:

- The option `--name` specifies the name of the environment to remove.
- The option `--all` indicates that all packages in that environment
  must be removed.
  This option is essential to indicate that the entire environment
  must be removed.

```bash
conda deactivate
mamba remove --name ccb_demo_env_2 --all 
```

![Deactivating and removing the environment named 'ccb_demo_env_2'.](conda-deactivate-remove.png)

The `mamba env list` command can be used to verify that the environment removed is indeed
not listed anymore.

```bash
mamba env list
```

![Displaying the list of environments after removing the environment named 'ccb_demo_env_2'.](mamba-env-list-removed.png)

{{< alert icon="👉" text="We recommend practicing and getting comfortable with the creation and removal of environments. In doubt, it is often much easier and safer to remove an environment and start over." />}}

## Create an environment from a YAML file

Conda supports the the YAML file format for describing Conda environments, as well
the desired channel priority list and environment name.

For instance:

```yaml
name: ccb_demo_yaml
channels:
- bioconda
- conda-forge
- defaults
dependencies:
- python
- r-base
```

Create a file named `ccb_demo.yaml`, use copy and paste to fill it with the contents above,
and save and close the file (for instance, use `nano`).

```bash
nano ~/ccb_demo.yaml
```

![Creatin and editing the file '~/ccb_demo.yaml' using the 'nano' editor.](nano-ccb_demo_yaml.png)

{{< alert icon="👉" text="The name of the file itself does not matter, but we recommend using the same name as the environment that it is used to create." />}}

Then, the `mamba install` command can be used to create an environment using that file,
as follows:

```bash
mamba env create -f ~/ccb_demo.yaml
```

![Creating an environment from a list of packages specified in a YAML file.](mamba-env-create-from-yaml.png)

It is possible to override the name of the environment specified in the YAML using the
option `-n`, to give a different name to the new environment.

For instance:

```bash
mamba env create -n ccb_demo_from_yaml -f ~/ccb_demo.yaml
```

{{< alert icon="👉" text="For traceability, we generally recommend using the name of the enviroment defined in the YAML file." />}}

Again, the `conda activate` command can be used to activate the new environment.

```bash
conda activate ccb_demo_yaml
```

## Export an environment to a YAML file

The `mamba env export` command can be used to display the specifications of an environment
(i.e., name, version, and build of packages installed in the environment).
Those specifications are extremely valuable for reproducibility, as they can be exported
to a YAML file that may be saved for the record, or shared and used to replicate the very
same environment elsewhere.

For instance, the contents in YAML format can be viewed as follows:

```bash
mamba env export -n ccb_demo_env
```

![Exporting the specifications of an environment.](mamba-env-export.png)

In particular:

- The option `-n` specifies the name of the environment to export.

The output of the command above can be redirected to a file using the `>` symbol,
as follows:

```bash
mamba env export -n ccb_demo_env > ~/ccb_demo_env.yaml
```

The exported file can then be used to re-create the environment elsewhere
as demonstrated in section
[Create an environment from a YAML file]({{< relref "#create-an-environment-from-a-yaml-file" >}}).

## Cleanup

Thank you for reading through this section.
Using what you have learned, feel free to remove all demonstration environments
before moving on to the next section.

Remember:

- Use `mamba env list` to display the list of existing environments.
- Use `mamba remove --name <environment_name> --all` to remove an environment
  (replace `<environment_name>` by the name of the environment).

For instance:

```bash
mamba env list
mamba remove --name ccb_demo_env --all
mamba remove --name ccb_demo_yaml --all
```

## Final words

At this point, you have seen the essential commands to create and manage
Conda environments on a daily basis.

To recapitulate:

- `mamba env list` lists the existing environments.
- `mamba create -n <name>` creates an environment called `<name>`.
- `conda activate <name>` activates the (existing) environment
  called `<name>`.
- `mamba install <name1> <name2>` installs the Conda packages
  `<name1>` `<name2>` in the active environment.
- `conda deactivate` deactivates the active environment.
- `mamba remove --name <name> --all` removes the environment
  called `<name>` and all its packages.
- `mamba env export -n <name>` exports the environment called `<name>`
  to a format that can be saved to a file and used to restore the
  environment elsewhere through `mamba env create -f <file>`.

Remember that those commands offer a number of additional options
that are not detailed in this section.
Refer to the help page of the individual commands for further
information (Use `conda <command> --help` and `mamba <command> --help`).

This documentation includes a
[Conda cheatsheet]({{< relref "/docs/conda/cheatsheet" >}})
that describes commands and options relevant to common scenarios
faced by users in their daily work.
Feel free to [Contribute]({{< relref "/docs/help/contributing" >}})!

Finally, this documentation also includes a number of links to
[External resources about Conda]({{< relref "/docs/help/links#conda" >}}).

<!-- Link definitions -->

[conda-concepts-environments]: https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/environments.html
