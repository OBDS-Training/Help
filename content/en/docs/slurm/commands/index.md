---
title: "Slurm commands"
description: "A cheatsheet of Slurm commands."
lead: "A cheatsheet of Slurm commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "slurm"
weight: 410
toc: true
---

## Motivation

Once logged into the CCB cluster, a number of Slurm commands can be used to
query resources available and the current workload.

In this page, we provide a cheatsheet of the most commonly used commands along
with a brief description of their purpose and advice on best practices.

## Partitions

Summary information about partitions (i.e., individual job queues) can be
accessed as follows.

```bash
sinfo
```

![Example output for the `sinfo` command.](sinfo.png)

The `sinfo` command displays the name of partitions in the first column, and
additional information in a customisable set of additional columns. The full
list of fields and their description can be found in the [Slurm documentation
→][sinfo-output-fields].

In the example above:

- The asterisk symbol `*` indicates the default partition, to which jobs are
  submitted when users don't request a specific queue.
- The field `AVAIL` uses the value `up` to indicates partition that are
  accepting new jobs.
- The field `TIMELIMIT` indicates the maximum time limit allowed for jobs
  submitted to each partition (in the format hours:minutes:seconds). The value
  `infinite` is used to identify partitions without a job time limit.
- The field `NODES` indicates the number of nodes with each particular
  configuration in each partition.
- The field `STATE` indicates the state of nodes in each partition; for
  instance:
  - The value `alloc` indicates nodes allocated to one or more jobs.
  - The value `idle` indicates nodes that are not allocated to any job.
  - The value `mixed` indicates nodes where some CPUs are allocated a job while
    others are idle.
  - The value `drain` indicates nodes that are currently executing jobs, but do
    not accept new jobs, per administrator request (e.g., for maintenance).

## Nodes

The full list of individual nodes and associated information can be obtained as
follows.

```bash
sinfo --Node --long
```

![Example output of the `sinfo --Node --long` command.](sinfo-node-long-screenshot.png)

In particular:

- The `--Node` option reports a separate line for each node in each partition (a
  node can be shared by multiple partitions).
- The `--long` option reports more detailed information.

More detailed information about the configuration of each individual nodes can
be obtained as follows.

```bash
scontrol show node
```

The full list of nodes above may be excessive. Information about a particular
node can be obtained as follows.

```bash
scontrol show node <nodename>
```

Replace `<nodename>` by the name of the particular node.

<!-- Link definitions -->

[sinfo-output-fields]:
  https://slurm.schedmd.com/sinfo.html#SECTION_OUTPUT-FIELD-DESCRIPTIONS
