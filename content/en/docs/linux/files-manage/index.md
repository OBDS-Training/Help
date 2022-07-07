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

```bash
touch a.txt b.csv
```

![Creating files using the 'touch' command.](touch.png)

{{< alert icon="👉" text="In the screenshot above, the zeroes highlighted in red indicate that the new files are empty (i.e., size of 0 bytes)" />}}

## Creating directories

The `mkdir` command can be used to create new directories.

Multiple directories can be created in a single command.

```bash
mkdir dir1 dir2
```

![Creating directories using the 'mkdir' command.](mkdir.png)

<!-- Link definitions -->

[gnu-emacs-reference-card]: https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf
