---
title: "Viewing and editing files"
description: "Viewing and editing files in a Linux shell."
lead: "Viewing and editing files in a Linux shell."
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

## Display the contents of a file

### Full contents

The `cat <file>` command can be used to display the entire contents of a file
in the Terminal application.

For instance:

```bash
cat file2.csv 
```

![Displaying the contents of a file.](cat.png)

{{< alert icon="👉" text="While the 'cat' command is entirely harmless, it is highly inefficient for very large files and may freeze the Terminal application. If that happens, you may interrupt the command using the 'Control' and 'C' keyboard shortcut." />}}

### First lines

The `head <file>` command be used to display the first few lines of a file.

The number of lines displayed can be controlled using the `-n` option.
In the absence of option, the first 10 lines are shown by default.

Example usage:

```bash
head file2.csv
head -n 3 file2.csv
```

![Displaying the first lines of a file.](head.png)

<!-- Link definitions -->
