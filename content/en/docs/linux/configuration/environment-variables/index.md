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
weight: 251
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

## Built-in variables

### $HOME

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

### $USER

The `$USER` environment variable is set for each user to their own
username.

The `echo` command can be used to display the value of `$USER`.

```bash
echo $USER
```

![The 'USER' environment variable.](user.png)

For instance, users create a directory named after their own username
as follows.
This is particularly useful to use a consistent naming of personal
directories that is guaranteed to avoid any conflict with other usernames.

```bash
mkdir $USER
```

### $PATH

The `$PATH` environment variable is unquestionably one of the most important
environment variables.

The `$PATH` is stored as a colon-separated (`:` symbol) character string that
represents the list of directories that are searched -- in the given order --
to find executable files that are invoked by users and their scripts.

As such:

- Commands may fail if the directory where they are stored is not listed
  in the `$PATH`.
- Users may need to modify their `$PATH` to add directories that contain
  commands they wish to use.
- Users may need to modify their `$PATH` to remove directories that contain
  command they do not wish to use (e.g., when a command is defined in multiple
  directories).

```bash
echo $PATH
```

![The 'PATH' environment variable.](path.png)

Whenever possible, we recommend using the `module` command to add and remove
programs (i.e., modules) from the `$PATH`.

For instance:

```bash
module rm git/2.31.1
```

![Modify the 'PATH' environment variable using the module command.](module.png)

As an alternative, users may not need to modify their `$PATH` if they provide the full path to the executable file that they wish to run.
However, this approach requires many more keystrokes, and is more prone to typographical mistakes.

For instance:

```bash
/package/git/2.31.1/libexec/git-core/git status
```

### $TMPDIR

The `$TMPDIR` environment variable is set globally to the location of a directory that user should use to store temporary files.

For instance, users can create new temporary directories and files in that directory as follows:

```bash
mkdir $TMPDIR/new_temp_dir
touch $TMPDIR/new_temp_file
```

![The 'TMPDIR' environment variable.](tmpdir.png)

Note that `$TMPDIR` is the same for all users.
To avoid clashes of directories and file names with other users, we recommend creating and using the subdirectory with your own username first.

For instance:

```bash
mkdir $TMPDIR/$USER
mkdir $TMPDIR/$USER/new_temp_dir
touch $TMPDIR/$USER/new_temp_dir/new_temp_file
```

## Custom variables

### Motivation

Environment variables are not restricted to built-in variable names.
Users can define any number of custom environment variable names.

Some programs expect users to define additional environment variables, controlling the behaviour of the program without passing arguments explicitly on the command line.

Expert users may also define custom environment variables for their own purposes (e.g., store a value commonly used on the command line or in their own scripts).

### $TMP

The `$TMP` environment variable is not set by default.

Some programs may expect the value of this variable to be a character string
indicating the location of an existing directory that can be used to store temporary
files during their execution.

We recommend setting the value of `$TMP` to `$TMPDIR`.

We also recommend defining that environment variable in the `~/.bashrc` file, so that the environment variable is immediately set in every Bash session.

In the example below, we define `$TMP` interactively at the prompt
only for demonstration purposes:

```bash
export TMP="$TMPDIR"
```

![Defining the 'TMP' environment variable.](tmp.png)

<!-- Link definitions -->
