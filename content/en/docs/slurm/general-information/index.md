---
title: "General information"
description: "General information about the SLURM workload management system."
lead: "General information about the SLURM workload management system."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "slurm"
weight: 500
toc: true
---

## Introduction

The CCB cluster is high-performance computing system shared by many users
who run programs using a pool of computational resources to process data
simultaneously.

However, the resources that may be used at any point in time are limited
by the total amount of resources available on the CCB cluster.

To ensure fair access to all users, the CCB cluster uses the Slurm workload
manager.
Users are required to submit their work as job scripts that describe the
commands they wish to execute, and the amount of resources that they wish
to grant to those commands during their execution.
In turn, Slurm controls the execution of submitted jobs when sufficient
resources are available, and manages a queue of pending work while waiting
for sufficient resources to become available.

## Resources

The table below summarises the types of compute nodes available.

|             | Nodes | Cores (per node) | RAM (per node) |
|-------------|-------|------------------|----------------|
| Large nodes | 1     | 40               | 900GB          |
| Batch nodes | 20    | 24               | 240GB          |

{{< alert icon="👉" text="In addition, the cluster contains 4 x NVIDIA Titan RTX cards for parallel and multi-core tasks such as deep learning." />}}

The full list of compute nodes and associated information can be obtained as follows.

```bash
sinfo --Node --long
```

![Example output of the `sinfo --Node --long` command.](sinfo-node-long-screenshot.png)

<p align='center'><i>Example output of the `sinfo --Node --long` command.</i></p>

More information about individual compute nodes can be obtained using commands detailed
in the page [Slurm commands]({{< relref "/docs/slurm/commands" >}}).

## Links

- [SLURM Documentation][slurm-docs]
- [Quick Start User Guide][slurm-quickstart]
- [WIMM CCB Computing Infrastructure][ccb-computing]

<!-- Link definitions -->

[slurm-docs]: https://slurm.schedmd.com/
[slurm-quickstart]: https://slurm.schedmd.com/quickstart.html
[ccb-computing]: https://www.imm.ox.ac.uk/research/units-and-centres/mrc-wimm-centre-for-computational-biology/resources/computing
