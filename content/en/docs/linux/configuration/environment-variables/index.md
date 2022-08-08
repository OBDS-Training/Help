---
title: "Environment variables"
description: "A brief introduction to environment variables."
lead: "A brief introduction to environment variables."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "configuration"
weight: 221
toc: true
---

## Motivation

A variable is a named place in a computer's memory that stores a particular
piece of information (e.g., number, string).

Environment variables are variables defined and available in the shell's environment.
Those variables can be accessed by any program that runs in the shell.
They can be accessed using the `$` (dollar) symbol, followed by the name of the
environment variable (e.g., `$USER`).

Once logged into the CCB cluster, a number of environment variables are set
in the Bash session.
Existing environment variables can be modified, and new environment variables
can be defined at runtime,
including from the `~/.bashrc` file while the login shell is executed.

Some environment variables are identical for all users on the cluster,
other are derived from the username,
and users can also set environment variables themselves.
Many programs require certain environment variables to be set for their
good functioning.

In this page, we describe some of the built-in environment variables,
with a brief description of their purpose and advice on best practices.

## $HOME

The `$HOME` environment variable is set for each user to their own
home directory.

{{< alert icon="👉" text="The '~' symbol is equivalent to the '$HOME' environment variable." />}}

The `echo` command can be used to display the value of `$HOME`.

```bash
echo $HOME
```

![The 'HOME' environment variable.](home.png)

The `$HOME` environment variable can also be used in commands.
For instance, users can list the contents of their home directory as follows.

```bash
ls $HOME
```

## $USER

The `$USER` environment variable is set for each user to their own
username.

The `echo` command can be used to display the value of `$USER`.

```bash
echo $USER
```

For instance, users create a directory named after their own username
as follows.
This is particularly useful to use a consistent naming of personal
directories that is guaranteed to avoid any conflict with other usernames.

```bash
mkdir $USER
```

## $PATH

TODO

## $TMP

TODO

<!-- Link definitions -->
