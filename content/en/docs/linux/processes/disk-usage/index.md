---
title: "Monitor disk usage"
description: "A brief introduction to monitoring disk usage."
lead: "A brief introduction to monitoring disk usage."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "processes"
weight: 232
toc: true
---

## Why monitoring disk usage?

CCB accounts are subject to charging as a result of the costs associated with the
necessary storage and computing facilities.

To ensure fair usage of the shared disk resources, the CCB cluster enforces quotas
that restrict the amount of disk space that users may utilise to store files for
their various projects.

Users are encouraged to regularly check their disk usage, to manage their files
and remain within their disk usage quota or request an increase to their quota
(at an additional cost).
Refer to the [Help]({{< relref "/docs/help/contact" >}}) section for ways to
contact system administrators and request increase to your quotas.

## How to monitor disk usage?

The `du` command can be used to estimate file space usage.

The option `-h` is commonly used to display values in human-readable form
(i.e., with units).

By default, the `du` command reports the size of each directory in the working
directory.

For instance:

```bash
du -h
```

![Example output for the 'du -h' command.](du-h.png)

The option `-s` is commonly used to summarise the total disk space usage across
all the contents of the directory.

Moreover, the `du` command can be given the path to a target directory,
instead of the working directory.

For instance:

```bash
du -hs ~/ccb_demo
```

![Example output for the 'du -hs' command.](du-hs.png)

<!-- Link definitions -->
