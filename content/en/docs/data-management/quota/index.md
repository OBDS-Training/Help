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
    parent: "data-management"
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

```bash
du -hs ccb_demo
```

![Example output for the &lsquo;du -h&rsquo; command.](du-hs.png)

<!-- Link definitions -->
