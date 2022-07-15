---
title: "The Linux pipe"
description: "Using the Linux pipe to pass information between commands."
lead: "Using the Linux pipe to pass information between commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "working"
weight: 221
toc: true
---

## What is the Linux pipe?

The Linux philosophy is that one tool should only perform only one task,
in a way that complex workflows may be broken down into smaller tasks that
can be resolved by combining multiple tools.

The Linux pipe is represented by the symbol `|` and provides a tool connecting
the standard output of one command to the standard input of another command.

For instance, the standard output of a command `command1` can be passed to
the standard input of a command `command2` using the sytanx 
`command1 | command2`.

{{< alert icon="👉" text="The Linux pipe is read from left to right. The standard output of the command on the left is passed to the standard input of the command on the right." />}}

For instance:

```bash
cat file1.txt | head -n 5
```

![Passing the standard output of a command to the standard input of another command using the Linux pipe.](pipe.png)

<!-- Link definitions -->
