---
title: "Filter files"
description: "Display a subset of the contents of files."
lead: "Display a subset of the contents of files."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "working"
weight: 223
toc: true
---

## Print lines matching a pattern

The `grep` command can be used to search files and print only lines that
match a given pattern.

The pattern to search for must be given as a [Regular expression →][regular-expression-info].

```bash
grep error file.txt 
```

![Printing lines that match a pattern in a file.](grep.png)

Common options for the `grep` command:

| Option | Long option | Description |
|:------:| ----------- | ----------- |
|  `-i`  | `--ignore-case` | Ignore case (i.e., do not distinguish between upper and lower case characters).  |
|  `-v`  | `--invert-match` | Invert match. Print lines that do not contain a match. |
|  `-c`  | `--count`   | Print the count of matches, not the matches themselves. |
|  `-l`  | `--files-with-matches` | Print the name of each file that contans a match, not the matches themselves. |
|  `-L`  | `--files-without-matches` | Like the `-l` option, but print the name of files that do not contain a match. |
|  `-n`  | `--line-number` | Prefix each match with the number of the line within the file. |
|  `-h`  | `--no-filename` | When searching across multiple files, suppress the output of filenames. |

For instance, the example below illustrates how the `grep` command can be used
to print lines that do _not_ contain the pattern `"error"`.

```bash
grep -v error file.txt
```

![Printing lines that do not match a pattern in a file.](grep-v.png)

<!-- Link definitions -->

[regular-expression-info]: https://www.regular-expressions.info/quickstart.html
