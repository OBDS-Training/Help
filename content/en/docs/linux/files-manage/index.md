---
title: "Manage files and directories"
description: "Creating, renaming, and removing files and directories."
lead: "Creating, renaming, and removing files and directories."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "linux"
weight: 260
toc: true
---

## Creating empty files

The `touch <file>` command can be used to create new empty files.

Multiple files can be created in a single command.

For instance:

```bash
touch a.txt b.csv
```

![Creating files using the 'touch' command.](touch.png)

{{< alert icon="👉" text="In the screenshot above, the zeroes highlighted in red indicate that the new files are empty (i.e., size of 0 bytes)." />}}

If a file already exists, the `touch` command does not edit the contents of the file,
but update the timestamp of the latest edit to the current date-time.

## Creating directories

The `mkdir` command can be used to create new directories.

Multiple directories can be created in a single command.

For instance:

```bash
mkdir dir1 dir2
```

![Creating directories using the 'mkdir' command.](mkdir.png)

## Copying files

The `cp` command can be used to make a copy of a file.

The command requires two arguments:

- first, the filepath to the original file
- second, the path to the file where the copy must be made

For instance:

```bash
cp a.txt a_copy.txt
```

{{< alert icon="👉" text="If the filename of the copy already exists, that file will be overwritten." />}}

## Copying directories

The `cp` command can be used with the option `-r` to _recursively_ copy a directory
and its contents to a new directory.

Similarly to the copy of files the command requires two arguments:

- first, the location of the original directory
- second, the path to the new directory to create as a copy.

{{< alert icon="👉" text="If the directory to create already exists, the copy will be created inside that existing directory." />}}

<!-- Link definitions -->

[gnu-emacs-reference-card]: https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf