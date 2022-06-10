---
title: "Built-in commands"
description: "A cheatsheet of built-in Bash commands."
lead: "A cheatsheet of built-in Bash commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "bash"
weight: 420
toc: true
---

## Motivation

Once logged into the CCB cluster, commands typed in a Terminal application
are run in a Bash environment.

Bash is the shell, or command language interpreter, for the GNU operating system.
The Bash interpreter includes a number of built-in commands that allow users to
navigate and manage directories and files on the CCB cluster.

In this page, we provide a cheatsheet of the most commonly used commands
along with a brief description of their purpose and advice on best practices.

## Working directory

The working directory is the directory relative to which commands typed in a
Terminal are executed.

The `pwd` command prints the current working directory.

```bash
pwd
```

When you log into the CCB cluster, the working directory is initially set to
the user's home directory.

## List directory contents

Listing the contents of directories is essential to identify files that are
available for use, as well as directories that can be navigated into.

The `ls` command prints the list of files in a given directory.

Alone, the `ls` command prints the list of files in the working directory.

```bash
ls
```

Given the path to an existing directory, the `ls` command prints the list of
files in that particular directory.

{{< alert icon="👉" text="The directory path can be absolute or relative to the working directory." />}}

```bash
ls /       # absolute path (starts with '/')
ls ~/.ssh  # relative path  (does not start with '/')
```

The `ls` command also accepts a number of options.
Most commonly, the `-l` option is used to display detailed information about
each file, including permissions, file size, and the timestamp of the latest
update to each file.

```bash
ls -l
```

Often, the `-h` option is added to display file sizes in human-readable format,
adding units (e.g., K - kilobyte, M - megabyte, G - gigabyte).
Multiple options can be combined under the same `-` symbol.
The two forms below are equivalent.

```bash
ls -lh
ls -l -h
```

<!-- Link definitions -->
