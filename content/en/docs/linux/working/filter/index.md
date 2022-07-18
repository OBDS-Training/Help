---
title: "Filter file contents"
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
The regular expression does not always need to include special wildcard characters;
it can be as simple as the exact sequence of characters to search for.

The example below illustrates how the lines of the file `file.txt`
that contain exactly the word `error` can be identified and returned to the
standard output of the Terminal session.

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

## Extract columns from a file

The `cut` command can be used to extract one or more columns from a file.

In particular:

- The option `-d` defines the delimiter that is used to separate columns.
  In unspecified, tabulation is used as a delimiter.
- The option `-f` defines the index (or indices) of the fields to extract.

For instance, the third column of a comma-separated file (comma: `,`)
can be extracted as follows:

```bash
cut -f 3 -d , file2.csv
```

![Extract a column from a file.](cut-f-d.png)

Multiple columns can be declared either as a comma-separated list (e.g., `1,2,4,5,6`)
or using the hyphen `-` (e.g., `1-2,4-6`).

For instance:

```bash
cut -f 1,3 -d , file2.csv
cut -f 1-3 -d , file2.csv
```

![Extract multiple columns from a file.](cut-range.png)

<!-- Link definitions -->

[regular-expression-info]: https://www.regular-expressions.info/quickstart.html
