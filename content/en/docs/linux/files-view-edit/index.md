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

<!-- Link definitions -->
