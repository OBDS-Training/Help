---
title: "Bash environment variables"
description: "Bash environment variables."
lead: "Bash environment variables."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "profile-and-configuration"
weight: 220
toc: true
---

## Motivation

Once logged into the CCB cluster, a number of environment variables are set
in the Bash session.

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

<!-- Link definitions -->
