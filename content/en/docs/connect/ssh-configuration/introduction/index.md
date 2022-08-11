---
title: "Benefits of configuring SSH"
description: "SSH can be used more efficiently when configured."
lead: "SSH can be used more efficiently when configured."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "ssh-configuration"
weight: 110
toc: true
---

## Motivation

In the section
[First connection over SSH]({{< relref "/docs/connect/first-steps/ssh-first-connection" >}}),
we describe how to connect to the CCB cluster, typing all the information necessary to
establish the connection at the Terminal prompt.

When connecting to CCB cluster on a regular basis -- often multiple times a day --,
typing that information becomes a tedious process that is also subject to typographical
errors forcing users to start over the connection process.

Instead, the SSH client can be configured to ease the process of connection to
remote computers.

In the following pages, we describe steps commonly taken to configure an SSH client
for connecting more rapidly and securely to the CCB cluster.

## Prerequisites

This section expects a minimum of familiarity with the Linux command line and
commands that are described in later sections of this website.

In particular, you will be expected to:

- [Execute Bash commands in a Linux environment]({{< relref "/docs/linux/essentials/introduction" >}}).
- [View and edit files in the Terminal]({{< relref "/docs/linux/files-and-directories/view-and-edit" >}}).
- Optionally, [Navigate directories]({{< relref "/docs/linux/files-and-directories/navigate" >}}).

Make sure that you are comfortable with the information listed above before attempting
to configure your SSH client.

You may also find it helpful to keep those pages open while following the instructions
to configure your SSH client.

## Final advice

In doubt, ask a system adminstrator or an experienced colleague to guide you through
the instructions in the following pages.

Those instructions describe a one-time setup process.

Once you have gone through the process and tested that the new SSH configuration works,
you can choose to establish new connections to the CCB cluster using either
the newly configured shortcuts or the username and password as you did for your
[First connection over SSH]({{< relref "/docs/connect/first-steps/ssh-first-connection" >}}).

<!-- Link definitions -->
