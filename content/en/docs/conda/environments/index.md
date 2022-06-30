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

## Get started

The `conda env` command includes a set of sub-commands to create and manage
Conda environments.

The `conda env --help` command can be used to display the help page and the
list of available sub-commands.

<!-- Screenshot -->

## List environments

The `conda env` command can be used to list existing Conda environments
(for the current user).

<!-- Screenshot -->

{{< alert icon="👉" text="Conda environments are private to each user. Users cannot see each other's Conda environments." />}}


<!-- Link definitions -->
