---
title: "Essential Bash commands"
description: "A cheatsheet of built-in Bash commands."
lead: "A cheatsheet of built-in Bash commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "linux"
weight: 230
toc: true
---

## Overview

This page introduces commands that are completely safe and purely display information
that may be used by users to get help or explore the environment of the CCB cluster

## man

The `man <page>` command can be used to print the reference manual page `<page>`.

For instance, the reference manual page for the command `pwd` can be displayed as follows:

```bash
man pwd
```

![Manual page for the 'pwd' command.](man-pwd.png)

{{< alert icon="👉" text="The manual page is open in an interactive viewer in the Terminal application. To close that interactive viewer, press the `Q` key." />}}

Incidentally -- perhaps confusingly -- the reference manual page for the command `man` is opened as follows:

```bash
man man
```

The ability to access, read, and understand manual pages is one of the first essential skills
to develop as a Bash user.
A lot of information and advice on Bash commands, tips and tricks, is available throughout the Internet.
However, the manual pages accessed through the `man` command correspond to the current version
of each command available on the CCB cluster, and should be considered as the absolute
reference above any other source of information.

## type

The `type <name>` command can be used to identify how `<name>` would be interpreted
if used as a command.

```bash
type pwd
type less
```

![Displaying the type of commands.](type.png)

Identifying commands that are Bash built-in or additional command from third-party
software can be helpful to understand and investigate bugs and unexpected
behaviours.

## which

The `which <program>` command can be used to display the full path to the
command `<program>`.

```bash
which man
```

![Displaying the full path to the executable file for the command 'man'.](which-man.png)

## groups

The `groups` command can be used to print the user groups that a user belongs to.

Alone, the `groups` command display the list of user groups that current user belongs to.

```bash
groups
```

The `groups <username>` command can also be given a username, in which case it will display
the list of user groups that particular user belongs to.

## realpath

The `realpath` command can be used to resolve the absolute file path to a specific
file or directory in the filesystem.

In many cases, files and directories may be referred to through any valid path.
However, in some cases, it may be necessary to identify and use the 'real' path
to a file or directory, meaning the unambiguous absolute path to that file from the
root directory.

```bash
realpath file1.txt
```

![Resolving the absolute path to a file.](realpath.png)

<!-- Link definitions -->
