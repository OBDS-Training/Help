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

<!-- Link definitions -->

[regular-expression-info]: https://www.regular-expressions.info/quickstart.html
