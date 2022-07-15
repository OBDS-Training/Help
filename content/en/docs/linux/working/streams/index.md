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

## Redirecting streams

Streams can be redirected to new destinations -- including files -- using
the symbols `>`, `<`, and variants thereof.

### Standard input

The contents of a file can be redirected to the standard input of a command
using the syntax `command < file`.

For instance:

```bash
head < file2.csv
```

![Redirecting a file to the standard input of a command.](stdin.png)

### Standard output

Conversely, the standard output of a command can be redirected to a file
using the syntax `command > file`.

For instance:

```bash
echo "Some text" > file.txt
```

![Redirecting the standard output of a command to a file.](stdout.png)

{{< alert icon="👉" text="The symbol '>' overwrites the output file with the new contents. See the operator '>>' in the following section for appending contents to a file." />}}

### Appending contents to a file

In contrast to the single symbol `>` which overwrites the contents of a file
with the standard output of a command,
the operator `>>` can be used to _append_ that standard output to the file,
using the syntax `command >> file`.

For instance:

```bash
echo "Some more text" >> file.txt
```

![Appending the standard output of a command to a file.](stdout-append.png)

<!-- Link definitions -->
