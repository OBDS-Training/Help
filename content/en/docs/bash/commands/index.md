---
title: "Bash commands"
description: "Essential Bash commands."
lead: "Essential Bash commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "bash"
weight: 410
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

When you log into the CCB cluster, the working directory is initially set to
the user's home directory.

The `pwd` command prints the current working directory.

```bash
[username@cbrglogin1 ~]$ pwd
/home/a/username
```

## List directory contents

<!-- Link definitions -->
