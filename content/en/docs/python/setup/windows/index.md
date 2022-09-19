---
title: "Setup Python on Windows"
description: "Setting up Python on Windows."
lead: "Setting up Python on Windows."
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: false
images: []
menu:
  docs:
    parent: "python"
weight: 601
toc: true
---

## Motivation

Instructions on this page should be followed in order to produce the desired effects, namely:

- Visual Studio Code (VSCode) must be installed before Git Bash,
  so that VSCode may be specified as the default editor for Git.
- Git Bash must be installed before Anaconda Navigator,
  so that Anaconda Navigator may detect Git Bash on the system path.
- VSCode must be installed before Anaconda Navigator,
  so that VSCode may be launched from Anaconda Navigator.

## Install Visual Studio Code

### Download the installer file

In your web browser, navigate to <https://code.visualstudio.com/download>.

### Run the installer

Double-click on the installer file that you just downloaded
and progress through the screens of the installation program.

### Install VSCode extensions

Launch VSCode.

Click on the 'Extension' tab on the left.

- Install 'Python'. (screenshot)

![Install the 'Python' extension.](vscode-extension-python.png)

- Install 'Live Share Extension Pack'. (screenshot)

![Install the 'Live Share Extension Pack' extension.](vscode-extension-liveshare.png)

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

{{< alert icon="👉" text="The various screens of the installer programs are subject to change. As such, we provide guidance below for indicative purposes only." />}}

Notably:

- Scroll to the bottom of the license.
  Click 'Next'.
- Leave the destination location for the installation to the default value.
  Click 'Next'.
- Select 'Add a Git Bash Profile to Windows Terminal' in addition to the components selected by default.
  Click 'Next'.
- Leave the name of the Start Menu folder to be created to the default value.
  Click 'Next'.
- Set the default editor for Git to a text editor program that is installed on your computer
  and that you are comfortable with.
  We recommend [Visual Studio Code][visual-studio-code].
  Click 'Next'.
- Leave the default choice letting Git decide the name for the initial branch
  in newly created repositories.
  Click 'Next'.
- Leave the default choice adjusting your PATH environment.
  You want to be able to use Git from Git Bash, the Command Prompt and the Windows PowerShell
  as well as third-party software looking for Git in PATH (e.g., RStudio Desktop).
  Click 'Next'.
- Leave the default choice using the bundled OpenSSH.
  Click 'Next'.
- Leave the default choice using the OpenSSL library.
  Click 'Next'.
- Select 'Checkout as-is, commit Unix-style line endings'.
  Click 'Next'.
- Leave the default choice using MinTTY.
  Click 'Next'.
- Leave the default behaviour of `git pull` to the default value.
  Click 'Next'.
- Leave the credential manager to the default value.
  Click 'Next'.
- Leave the extra options to their default choices.
  Click 'Next'.
- Leave the experimental options unselected.
  Click 'Install'.

When the installer successfully completes, click 'Finish'.

You may be presented with the Release Notes of the program, which you may choose to read
before you close them.

### Test your installation

Once the installer has completed successfully:

- Open the Windows Start Menu.
- In the Windows Start Menu find and launch 'Git Bash'.
- In the Git Bash for Windows Terminal emulator, type `git` and press the `Return` key.

This should display a help message listing the main subcommands of the Git program.

## Install Anaconda navigator

In your web browser, navigate to <https://www.anaconda.com/>.

### Run the installer

Double-click on the installer file that you just downloaded
and progress through the screens of the installation program.

{{< alert icon="👉" text="The various screens of the installer programs are subject to change. As such, we provide guidance below for indicative purposes only." />}}

- Install for all users (needs administrator rights).
- Accept all defaults.

### Test your installation

- Open the Windows Start Menu.
- In the Windows Start Menu find and launch 'Anaconda Navigator (Anaconda3)'.

If prompted about a new version of Anaconda Navigator available,
click 'Yes' to update.

<!-- Link definitions -->
