---
title: "The .bashrc file"
description: "Setting up the .bashrc file."
lead: "Setting up the .bashrc file."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "bash"
weight: 400
toc: true
---

## Motivation

Every time you connect to the CCB cluster, you are given a new session in a
Bash environment.

In those new sessions, you may find yourself repetitively typing the same set of
commands to set up the environment of that session before you are able to work.

The file `~/.bashrc` is a Shell script that Bash runs whenever it is started
interactively.
As such, this file is often edited to include commands that users wish to execute
every time they log in, without the need to explicitly type them every time.

However, you want to be mindful of the commands that you add in this file, as
the automatic execution of those commands may have unintended consequences on the
running of other programs (e.g., remote desktop applications).

New accounts on the CCB cluster are created with a initial `~/.bashrc` file.
It is common for the file to evolve over time, as many programs suggest
additions as part of their installation and setup procedures.
This page describes a version of the `~/.bashrc` that contains a small number
of commands to ease your start on the CCB cluster.
