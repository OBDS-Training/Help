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
    parent: "configuration"
weight: 250
toc: true
---

## Motivation

Every time you open a new shell on the CCB cluster, you are given a new session in a
Bash environment in your Terminal application.

In those new sessions, you may find yourself repetitively typing the same set of
commands to set up the environment of that session before you are able to work.

The file `~/.bashrc` is a Shell script that Bash runs whenever it is started
interactively.
As such, this file is often edited to include commands that users wish to execute
every time they log in, without the need to explicitly type them every time.

However, you want to be mindful of the commands that you add in this file, as
the automatic execution of those commands may have unintended consequences on the
running of other programs (e.g., remote desktop applications).

New accounts on the CCB cluster are created with a initial copy of `~/.bashrc` file.
It is common for the file to evolve over time, as many programs suggest
additions as part of their installation and setup procedures.

The `~/.bashrc` file is a hidden file -- its name starts with a `.` (dot) symbol --
so it will only be listed by the `ls` command with the `-a` option.

In this page, we provide an example that contains elements specific to the WIMM
CCB cluster, as well as aliases and optional elements that may not be relevant to
all users.

## Contents

Please carefully read the comments and review the elements that are relevant to
you.
You may choose to replace the entire contents of your `.bashrc` file, or select
portions of the example below.

```bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
alias emacs='emacs -nw'
alias R='R --no-save'

### Load environment modules
# Load the latest version of Git (system version is old)
module load git/2.31.1
```

{{< alert icon="👉" text="If you decide to edit you '~/.bashrc' file, carefully consider any difference between the contents below and the initial contents of the file and whether you take responsibility for any edit. This documentation may occasionally be out of date with respect to current best practices and the contents of the initial file have been carefully reviewed by system administrators." />}}

## Explanation

### Comments

First, it is important to clarify that, in the contents above,
all the lines that start with the `#` symbol are purely comments
that are only added for information purposes and future reference,
without any impact on the functionality of the file.

### /etc/bashrc

The first chunk of code -- repeated below --
executes a script that sets up system-wide functions and aliases.
That script is exclusively and safely managed by system administrators, and
it is highly recommended to keep this as the first bit of code in your `~/.bashrc`
file at all times.

```bash
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
```

{{< alert icon="👉" text="The 'if ... then' block ensures that the file exists before attempting to execute it." />}}

### Aliases

The next chunk of code uses the `alias` command to create aliases.
Aliases are essentially shortcuts that condense arbitrarily complex (sequences of) commands
as single-word keywords, reducing keystrokes and improving speed and efficiency.

While the `alias` command can be used to define shortcuts interactively in the Bash session,
aliases are most commonly defined in the `~/.bashrc` file, to make them available as soon as
users open a new shell.

In this example:

- We change the meaning of the `emacs` command to automatically apply the
  option `-nw` (synonym to `--no-window-system`).
  This force the Emacs editor to open within the terminal rather than attempting to
  open it as a GUI (i.e., windowed) application.
- We change the meaning of the `R` command to automatically apply the option `--no-save`.
  This forces the R program to discard the workspace at the end of each session instead of
  offering to interactively save the workspace to a file.
  Large workspaces
  -- that contain many objects or large data sets --
  can significantly increase the time that it takes for R sessions to start and end
  (up to several minutes).

```bash
alias emacs='emacs -nw'
alias R='R --no-save'
```

Other common aliases include:

- `la`, to list all files (including hidden files) in long form,
  with human readable file sizes, and file type indicators.

```bash
alias la='ls -alhF'
```

- Overriding the `rm` command to force an interactive prompt before every removal.

```bash
alias rm='rm -i'
```

{{< alert icon="👉" text="If you decide to create your own aliases, be mindful of overriding any existing command name, as aliases take precedence over commands with the same name." />}}

### Modules

The next chunk of code uses the `module` command to put a version of the `git`
program on the `PATH` that is more recent than the version originally installed with
the operating system.

```bash
module load git/2.31.1
```

{{< alert icon="🛑" text="Some modules produce output messages when they are loaded. If you are an X2Go user, do not load those modules from your '~/.bashrc' file, as any output message produced during by the login shell will interfere with X2Go." />}}

<!-- Link definitions -->
