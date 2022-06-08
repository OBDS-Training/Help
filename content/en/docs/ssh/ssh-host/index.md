---
title: "Configure an SSH host"
description: "SSH hosts configures common parameters when connecting to certain hosts."
lead: "SSH hosts configures common parameters when connecting to certain hosts."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "ssh"
weight: 340
toc: true
---

## Motivation

When regularly connecting to one or more remote hosts, it can be tedious to type
or even remember all the parameters in the `ssh` command.
Moreover some parameters remain the same for all remote hosts, while others are
specific to each host.

In this section, we describe how to configure parameters that are specific
to different hosts.

Recommended parameters shared across all remote hosts are described in the page
[Set up an SSH key pair](../ssh-key-pair/#configuring-the-ssh-client).