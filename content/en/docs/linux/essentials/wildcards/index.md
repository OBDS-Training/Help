---
title: "Wildcards"
description: "Using wildcards to specify groups of filenames matching a pattern."
lead: "Using wildcards to specify groups of filenames matching a pattern."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "essentials"
weight: 204
toc: true
---

## What are wildcards?

Wildcards are special characters that match one or more characters
in filenames.

| Wildcard | Meaning |
|:--------:| ------- |
|   `*`    | Matches any sequence of characters. |
|   `?`    | Matches any single character. |
| `[characters]` | Matches any single character in a set. |
| `[!characters]` | Matches any single character _not_ in a set. |
| `[[:class:]]` | Matches any character in the specified class. |

Many commands accept groups of files and directories matched using wildcards.

For instance:

- The `rm` command can be used to remove multiple files and directories
  (remember to use the option `-r` to remove directories using `rm`).
- The `ls` command can be used to list files and the contents of directories.

## Examples

### *

```bash
ls *put.txt
```

![Using the '*' wildcard.](asterisk.png)

### ?

```bash
ls file?.txt
```

![Using the '?' wildcard.](question-mark.png)

### [characters]

```bash
ls file[12].txt
```

![Using the '[characters]' wildcard.](bracket-include.png)

### [!characters]

```bash
ls file[!12].txt
```

![Using the '[!characters]' wildcard.](bracket-exclude.png)

### [[:class:]]

```bash
ls file[[:digit:]].txt
```

![Using the '[[:class:]]' wildcard.](bracket-class.png)

<!-- Link definitions -->
