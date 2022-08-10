---
title: "Check your disk space quota"
description: "A brief introduction to best practices in data management using disk space quotas."
lead: "A brief introduction to best practices in data management using disk space quotas."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "organise-and-backup"
weight: 306
toc: true
---

## What is disk space quota?

We describe disk space quota in the section
[Monitor disk usage]({{< relref "/docs/linux/processes/disk-usage" >}}).

Briefly, disk space quota are limits on the amount of disk space that individual users
can use on a shared computing system.

Once a user exceeds their allowed disk space quota -- possibly after a set grace period --
they will not be able to create or edit any file in the filesystem until they either:

- Delete or compress files, to return within their allowed quota (where possible).
- Request an increase to their quota.

## Why monitor your disk usage?

Users who exceed their quota may see some of their commands fail on the CCB cluster,
in particular commands that attempt to create files.

Monitoring disk space usage regularly allows users to anticipate times when they
may approach or exceed their allowed quota, and take preventive action, including:

- Delete unused or intermediate output files.
- Compress large files.
- Request an increase to their quota.

## How to monitor disk usage?

We describe how to monitor disk usage in the section
[Monitor disk usage]({{< relref "/docs/linux/processes/disk-usage#how-to-monitor-disk-usage" >}}).

For instance:

```bash
du -hs ccb_demo
```

![Monitor disk usage using the 'du -hs' command.](du-hs.png)

## How to monitor your quota usage?

The `quota` command can be used to query your current quota usage and total allowance,
across all directories, files, and projects.

The option `-s` displays values in human-readable format (i.e, with units).

```bash
quota -s
```

![Monitor disk quota usage using the 'quota -s' command.](quota-s.png)

<!-- Link definitions -->