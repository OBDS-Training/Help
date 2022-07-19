---
title: "Searching for files"
description: "Search for files in a directory hierarchy using the command line."
lead: "Search for files in a directory hierarchy using the command line."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "working"
weight: 225
toc: true
---

## Motivation

In the Terminal application, programmatically searching for files
or directories that match certain conditions (e.g., naming pattern)
is a powerful way to apply given commands to groups of related
files in a systematic way.

The `find` command can be used to search for files and/or directories
that match certain conditions.

In particular:

- The first argument to the `find` command is typically the path to the
  directory in which to perform the search.
- The option `-type` takes a single character value
  indicating the type of file that is searched
  (e.g., `f` for file; `d` for directory).
- The option `-name` takes a [Regular expression][regular-expression-info]
  indicating a pattern that must be matched in the basename to produce a hit.

Examples are given in the following sections.

## Search for files

The example below illustrates how the `find` command can be used to find
files -- regular files, not directories -- within the directory `~/ccb_demo`,
and whose basename end with the file extension `.txt`.

```bash
find ~/ccb_demo -type f -name *.txt
```

![Finding files that match a naming pattern.](find-type-file-name-txt.png)

In particular:

- The path `~/ccb_demo` is given as the first argument, indicating that the search
  must be performed only within that particular sub-directory of the user home
  directory.
- The option `-type` is given the value `f`, indicating that only regular files
  should be reported.
- The option `-name` is given the pattern `*.txt`, where the wildcard `*` matches
  anything, as long as the basename of the file ends with `.txt`.

## Search for directories

The example below illustrates how the the `find` command can be used to find
directories within the directory `~/ccb_demo`.

```bash
find ~/ccb_demo -type d
```

![Finding directories.](find-type-d.png)

In particular:

- The path `~/ccb_demo` is given as the first argument, indicating that the search
  must be performed only within that particular sub-directory of the user home
  directory.
- The option `-type` is given the value `f`, indicating that only regular files
  should be reported.
- The option `-name` is not given, meaning that no filter is applied on the basename
  of directories reported; in that case, all directories are reported.

## Cheatsheet

Common options for the `uniq` command are listed below,
in alphabetical order of the option flag.

| Option | Descrition |
|:------:| ---------- |
| `-type` | TODO |
| `-name` | TODO |
| `-maxdepth` | With `-maxdepth levels`, descend at most `levels` (a non-negative integer) levels of directories below the command line arguments. |
| `-mindepth` | With `-mindepth levels`, do  not  apply  any  tests  or actions at levels less than `levels` (a non-negative integer). |
| `-regextype` | With `-regextype type`, use a `type` of regex sytax among the avaialble choices: `emacs` (this is the default), `posix-awk`, `posix-basic`, `posix-egrep` and `posix-extended`. |
|  `-L`  | Follow symbolic links. When find examines or prints information about files, the information used shall be taken from the properties  of the file to which the link points, not from the link itself. |

## Final words

The `find` command is very powerful, with many options documented in the reference
manual page (accessible using the `man find` command).

```bash
man find
```

<!-- Link definitions -->

[regular-expression-info]: https://www.regular-expressions.info/quickstart.html
