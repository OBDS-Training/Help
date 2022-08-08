---
title: "Resilience to loss of connection"
description: "A brief introduction to running processes immune to loss of connection."
lead: "A brief introduction to running processes immune to loss of connection."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "processes"
weight: 233
toc: true
---

## What happens when the connection is lost?

The connection to a Bash session on the CCB cluster may be lost for a number
of reasons:

- Loss of internet connection anywhere between your computer and the CCB cluster.
- Power loss causing an unexpected outage of CCB systems.
- Loss of connection to the University VPN (if applicable).

When the connection to a Bash session is lost, the `HUP` (hangup) signal is sent
to the Bash session.
The `HUP` signal prompts the Bash session to terminate commands that are currently
running, potentially resulting in lost work for users.

## How to run commands immune to loss of connection?

The `nohup` command can be used to run a command that is immune to the `HUP` signal.

The process launched by the `nohup` command will ignore any `HUP` signal, and
continue running until the command completes.

By default, the standard output of the process launched by the `nohup` command is
redirected to a file `nohup.out` in the working directory, unless the command
explicitly redirects the standard output to another file.

By default, the standard error of the process launched by the `nohup` command is
not saved.
However, the command can explicitly redirect the standard error to a file using
the operator `2>`.

The `&` symbol is commonly added at the end of `nohup` command, to launch those
commands in the background.

For instance:

```bash
nohup wc -l file.txt > stdout.txt 2> stderr.txt &
```

![Running a command immune to hangup signals.](nohup.png)

In particular:

- The `nohup` command is used to make the command immune to the `HUP` signal;
  the command will continue to run even in the event of network connection loss
  problems.
- The `wc` command is used to count the number of lines in the file `file.txt`.
- The standard output of the command is redirected to the file `stdout.txt`.
- The standard error of the command is redirected to the file `stderr.txt`.

<!-- Link definitions -->
