---
title: "Linux streams"
description: "Using streams to pass information between commands."
lead: "Using streams to pass information between commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "working"
weight: 220
toc: true
---

## What are streams?

Streams are mechanisms to pass data from one file or command to another.

For instance, a few common scenarios that use streams:

- passing the contents -- not the name ! -- of a file as the input to a command
- passing the output of a command as the input to another command
- writing the output of a command to a (new or existing) file

Some standard streams are commonly referred to in Linux:

- standard input (stdin): the default device (i.e., resource)
  from which input to the system is taken.
- standard output (stdout): the default file descriptor
  where a process (i.e., command) can write output
- standard error (stderr): the default file descriptor
  where a process (i.e., command) can write error messages

By default, both _stdout_ and _stderr_ write to the terminal.
However, it is possible to redirect their respective output to
separate destinations (most commonly, files).
