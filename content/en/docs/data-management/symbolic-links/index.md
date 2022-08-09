---
title: "Use symbolic links"
description: "A brief introduction to best practices in data management using symbolic links."
lead: "A brief introduction to best practices in data management using symbolic links."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "data-management"
weight: 305
toc: true
---

## What are symbolic links?

We describe symbolic links in the section
[Link to files and directories]({{< relref "/docs/linux/files-and-directories/links#creating-soft-links" >}}).

Briefly, a symbolic link is a shortcuts to target file or directory.

The link itself is materialised as a very small file that only
indicates the location of the target file.

As such:

- The size of the target file does not impact in any way
  the size of the symbolic link.
- A symbolic link will always be smaller than the target
  data file, or a copy of that file
  (unless the target file is empty).

## Why use symbolic links?

A symbolic links make the target file accessible from a different location
(i.e., directory) without the need to make a copy of the file, greatly
reducing disk usage.

## How do I create symbolic links?

We describe the creation of symbolic links in the section
[Creating soft links]({{< relref "/docs/linux/files-and-directories/links#creating-soft-links" >}}).

Briefly:

```bash
ln -s target_file.txt link_file.txt
```

## How to use symbolic links

Symbolic links can be used in place of the original target file.

Often, symbolic links stored in the working directory offer a shorter
alternative to longer file paths to target files located elsewhere
in the filesystem.

For instance:

```bash
ln -s /path/to/target/file.txt link.txt
cat /path/to/target/file.txt
cat link.txt
```

In particular:

- The `ln -s` command is used to create a symbolic link.
- The two `cat` commands are entirely equivalent;
  the first command directly accesses the original file,
  while the second command follows the symbolic link
  ultimately accessing the same target file.

<!-- Link definitions -->
