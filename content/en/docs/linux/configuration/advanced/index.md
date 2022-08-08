---
title: "Advanced configuration"
description: "Demonstrating advanced notions of Linux configuration."
lead: "Demonstrating advanced notions of Linux configuration."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "configuration"
weight: 252
toc: true
---

## .bashrc

### Alternative login shells

The `~/.bashrc` file is a script that is only read by the Bash login shell.
The CCB cluster using Bash, this login shell should be the only one that you edit
and worry about.

You may come across mention of other login shells (e.g., `~/.profile`, `~/.bash_profile`).

Those other files perform a task similar to the `~/.bashrc` file, albeit with subtle
differences with respect to the order and the environment in which they are executed.

We strongly discourage users from editing -- or creating -- those other login shells.
Instead, we recommend that users only edit their `~/.bashrc` file.

### Interactive sessions

The `PS1` environment variable

Next, an `if` statement is used to ensure that certain commands are only executed
in interactive Bash session.

For instance,
interactive session are those that are launched in your Terminal every time
that you log into the CCB cluster, in contrast to non-interactive session
that are launched when you submit jobs to the queue manager on the cluster
(more on cluster jobs in a later section of this documentation).

```bash
if [[ $PS1 ]]; then
    <... commands ...>
fi
```

```bash
# Non-interactive shells inherit the path and other variables
# from the calling shell, so this setup is not needed.
# prevents conda env being reset when calling P.run()
if [[ $PS1 ]]; then

    # User specific aliases and functions
    alias emacs='emacs -nw'
    alias R='R --no-save'

    # Set umask for default file permissions
    umask 002

    ### Load environment modules
    # Load the latest version of Git (system version is old)
    module load git/2.31.1

fi # if PS1
```

<!-- Link definitions -->
