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

| | Nodes | Cores (per node) | RAM (per node) |
|-|-------|------------------|----------------|
| Batch nodes | 20 | 24 | 240GB |
| Large nodes | 1 | 40 | 900GB |

## Links

- [SLURM Documentation][slurm-docs]
- [Quick Start User Guide][slurm-quickstart]

<!-- Link definitions -->

[slurm-docs]: https://slurm.schedmd.com/
[slurm-quickstart]: https://slurm.schedmd.com/quickstart.html
