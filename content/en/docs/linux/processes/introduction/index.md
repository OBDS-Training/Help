---
title: "Introduction to Linux processes"
description: "A brief introduction to Linux processes on the CCB cluster."
lead: "A brief introduction to Linux processes on the CCB cluster."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "processes"
weight: 230
toc: true
---

## What is a process?

When you execute a Linux command, the Bash session creates a _process_.

A process is a running instance of a program.

Every process has a process identifier (often abbreviated `pid`).

During execution, a process changes between _states_ depending on its
environment and circumstances.
The most common states are:

- **Running** -- The process is actively running on the
  system.
- **Waiting** -- The process is waiting for an event to occur or for a system
  resource.
- **Stopped** -- The process has been stopped, usually by receiving a
  termination signal (either from the user or the system).
- **Zombie** -- The process has been halted but it still has an entry in the
  table of processes.

## Foreground and background processes

### Foreground

By default, command executed interactively in the Bash session of a Terminal
application are run in the _foreground_.

For instance, the code below launches a process that does nothing but wait
in the foreground for 10 seconds before terminating itself and returning the
prompt to the user:

```bash
sleep 10
```

![Running a command in the foreground.](foreground.png)

In particular:

- A command running in the foreground will not return the Terminal prompt to
  the user until the command has completed.
  In other words, the user cannot execute any other command until the command in
  the foreground has completed.
- The
  [standard output]({{< relref "/docs/linux/working/streams#standard-output" >}})
  and
  [standard error]({{< relref "/docs/linux/working/streams#standard-error" >}})
  are printed in the Terminal application.

### Background

Process can be run in the _background_ to continue using the same Terminal
instance while the process runs.

To run a command in the _background_, add the symbol `&` (ampersand) at the end
of the command.

For instance, the code below launches a process that does nothing but wait
10 seconds in the _background_ before terminating itself.
During those 10 seconds, the user is free to continue using the same Terminal
for launching other commmands, either in the _foreground_ or _background_.

```bash
sleep 10 &
```

When running command in the _background_, it is best to redirect the
[standard output]({{< relref "/docs/linux/working/streams#standard-output" >}})
and
[standard error]({{< relref "/docs/linux/working/streams#standard-error" >}})
to files -- or suppress them altogether -- as the command would otherwise
print its standard output and standard error in the Terminal application.

For instance:

```bash
echo "An example string" > stdout.txt 2> stderr.txt  &
```

In particular, the code above launches a process that:

- Uses the `echo` command to print the character string
  `"An example string"` to the standard output.
- Redirects the standard output of the command to the file `stdout.txt`.
- Redirects the standard error of the command to the file `stderr.txt`.

### Moving a process from foreground to background

To move a process from the _foreground_ to the _background_:

- First, press simultaneously the `Control` and `Z` keys to
  _pause_ the process running in the _foreground_.
- Then, type `bg` and press the `Return` key to send that same process to the
  _background_.

### Moving a process from background to foreground

To move a process from the _background_ to the _foreground_, the process
depends on whether you have one or more processes running in the _background_.

Use the `jobs` command to check how many processes you are running in the background.

```bash
jobs
```

![Running the 'jobs' command.](jobs.png)

If you have a single process running in the _background_:

- Type `fg` and press the `Return` key to bring that process to the
  _foreground_.

If you have more than one process running in the _background_:

- Type `fg` followed by the integer number next to the command that you want to
  bring to the _foreground_ in the output of the `jobs` command (e.g., `fg 2`).

<!-- Link definitions -->
