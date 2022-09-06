---
title: "Microsoft Windows setup"
description: "Microsoft Windows requires some additional setup to connect to the SSH cluster more conveniently."
lead: "Microsoft Windows requires some additional setup to connect to the SSH cluster more conveniently."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "first-steps"
weight: 103
toc: true
---

## Install Git Bash for Windows

### Motivation

Microsoft Windows does not have a built-in Terminal emulator
(The MS Windows Command Prompt `cmd.exe` is a command-line interpreter 
that does not include many of the commands needed to connect to
the CCB cluster).

The primary function of the Git Bash for Windows program is to provide
a Bash emulation used to run Git from the command line.
Conveniently, in its effort to offer that functionality,
the Terminal emulator of Git Bash for Windows also includes
all the commands that you will need to connect to the CCB cluster.

### Download the installer file

In your web browser, navigate to <https://git-scm.com/downloads>.

In the 'Downloads' section, click on 'Windows'.

![Downloads page for the git-scm website.](git-scm-downloads.png)

On the next page, click on the first link
'Click here to download the latest 32-bit version of Git for Windows'.

### Run the installer

Double-click on the installer file that you just downloaded.

In particular, during the execution of the installer:

- In the screen 'Choosing the default editor used by Git', choose 'Use Atom as Git's default editor'.
- Leave all other options to their default choice, unless you have specific reasons not to.

### Test your installation

Once the installer has completed successfully:

- Open the Windows Start Menu.
- In the Windows Start Menu find and launch `Git Bash`. 
- In the Git Bash for Windows Terminal emulator, type `git` and press the `Return` key.

This should display a help message listing the main subcommands of the Git program.

<!-- Link definitions -->
