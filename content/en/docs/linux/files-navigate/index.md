---
title: "Navigate directories and files"
description: "Changing directory and listing the contents of directories."
lead: "Changing directory and listing the contents of directories."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "linux"
weight: 240
toc: true
---

## pwd

The working directory is the directory where the Bash session is currently
located, and relative to which commands typed in a Terminal are executed.

The `pwd` command prints the current working directory.

```bash
pwd
```

![Displaying the working directory.](pwd.png)

When you log into the CCB cluster, the working directory is initially set to
the user's home directory.

{{< alert icon="👉" text="The 'pwd' command is entirely harmless. Do not hesitate to experiment and get comfortable with it!" />}}

## ls

Listing the contents of directories is essential to identify files that are
available for use, as well as directories that can be navigated into.

The `ls` command prints the list of files in a given directory.

Alone, the `ls` command prints the list of files and directories in the
working directory.

```bash
ls
```

![Listing file and directories in the current directory.](ls.png)

{{< alert icon="👉" text="Colors are used to indicate the type of each file (directory: dark blue; file: black; symbolic link: light blue)." />}}

Given the path to an existing directory, the `ls` command prints the list of
files in that particular directory.

{{< alert icon="👉" text="The directory path can be absolute or relative to the working directory." />}}

```bash
ls /       # absolute path (starts with '/')
ls ~/.ssh  # relative path  (does not start with '/')
```

The `ls` command also accepts a number of options.
Most commonly, the `-l` option is used to display detailed information about
each file, including permissions, file size, and the timestamp of the latest
update to each file.

```bash
ls -l
```

![Listing file and directories with detailed information.](ls-l.png)

Often, the `-h` option is added to display file sizes in human-readable format,
adding units (e.g., K - kilobyte, M - megabyte, G - gigabyte).
Multiple options can be combined under the same `-` symbol.
The two forms below are equivalent.

```bash
ls -lh
ls -l -h
```

![Listing file and directories with file size in human-readable units.](ls-lh.png)

The `-t` option can be used in combination with the `-l` option to sort files
by modification time (newest first).

```bash
ls -lt
```

![Listing file and directories from the most recently edited to the least recently edited.](ls-lt.png)

{{< alert icon="👉" text="The timestamp indicating the more recent edit to each file is displayed as the field directly on the left on each filename." />}}

The `-a` option can be used to reveal and include hidden files and directories.

```bash
ls -a
```

![Listing hidden files and directories.](ls-a.png)

{{< alert icon="👉" text="Hidden files and directories have a name that start with the '.' symbol, e.g. '.ssh'." />}}

Finally -- to clarify -- options and paths can be combined, to list the contents
of a particular directory with specific options.

```bash
ls -ltah ~/.ssh
```

![Listing the contents of a specific directory using a number of options.](ls-ltah-ssh.png)

{{< alert icon="👉" text="The 'ls' command is entirely harmless. Do not hesitate to experiment and get comfortable with it!" />}}

## cd

Changing the working directory is often essential to run commands in the
appropriate working directory.

Given the path to an existing directory, the `cd` command changes the working directory to
that directory.

```bash
cd /       # absolute path (starts with '/')
cd ~/.ssh  # relative path  (does not start with '/')
```

![Changing directory using a relative path.](cd-ccb_demo.png)

{{< alert icon="👉" text="The directory path can be absolute or relative to the current working directory." />}}

Alone, the `cd` command changes the working directory to the user's home directory.

```bash
cd
```

![Changing directory to the user home directory.](cd-home.png)

{{< alert icon="👉" text="Use the 'ls' command to identify existing directories that you give to the 'cd' command." />}}

The `..` shorthand refers to the parent directory of each directory on the system.
This can be used to move out of a directory.
The shorthand can be combined multiple times in the same path to move out multiple
levels at once.
Some examples are given below.

```bash
cd ..
cd ../..
cd ../../another_directory
```

{{< alert icon="👉" text="The 'cd' command is entirely harmless. Do not hesitate to experiment and get comfortable with it!" />}}
