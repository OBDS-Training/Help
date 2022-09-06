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

Double-click on the installer file that you just downloaded
and progress through the screens of the installation program.

Notably:

- Scroll through the license. Click 'Next'.
- Leave the destination loation of the installation to the default value. Click 'Next'.
- Leave the selected components to the default choices. Click 'Next'.
- Leave the name of the Start Menu folder to the default value. Click 'Next'.
- Set the default editor for Git to a program that is installed on your computer and that you are comfortable with.
  We recommend [Atom][atom-editor], [Notepad++][notepad-plus-plus] or [Visual Studio Code][visual-studio-code]
  as lightweight programs suitable for this purpose. Click 'Next'.
- Let Git decide the name for the initial branch in newly created repositories. Click 'Next'.
- Let the Git installer adjust your PATH environment.
  You want to be able to use Git from Git Bash, the Command Prompt and the Windows PowerShell
  as well as third-party software looking for Git in PATH (e.g., RStudio Desktop). Click 'Next'.
- Leave the installer use the bundled OpenSSH. Click 'Next'.
- Leave the installer use the OpenSSL library. Click 'Next'.
- Leave the installer checkout Windows-style, commit Unix-style line endings. Click 'Next'.
- Leave the installer use MinTTY.
- Leave the default behaviour of `gt pull` to the default value. Click 'Next'.
- Leave the credential manager to the default value. Click 'Next'.
- Leave the extra options to their default choices. Click 'Next'.
- Leave the experimental options unselected. Click 'Install'.

When the installer successfully completes, click 'Finish'.

You may be presented with the Release Notes of the program, which you may choose to read
before you close them.

### Test your installation

Once the installer has completed successfully:

- Open the Windows Start Menu.
- In the Windows Start Menu find and launch `Git Bash`.
- In the Git Bash for Windows Terminal emulator, type `git` and press the `Return` key.

This should display a help message listing the main subcommands of the Git program.

<!-- Link definitions -->

[atom-editor]: https://atom.io/
[notepad-plus-plus]: https://notepad-plus-plus.org/
[visual-studio-code]: https://code.visualstudio.com/
