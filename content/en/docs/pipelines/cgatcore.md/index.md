---
title: "The cgatcore library"
description: "Using cgatcore pipelines."
lead: "Using cgatcore pipelines."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "pipelines"
weight: 710
toc: true
---

## Motivation

CGAT-core is a workflow management system that allows users to build data
analysis pipelines.

The `cgatcore` python package provides a set of libraries and helper
functions that enable researchers to design and build computational workflows
for large-scale data analysis workflows.

In-depth documentation about cgatcore is available on
[ReadTheDocs →][cgatcore-readthedocs].

In this page, we provide advice for setting up the `cgatcore` workflow
management system on the WIMM CCB cluster.

## Setup

On the CCB cluster, create the file `~/.cgat.yml` and add the following lines
in it.

```yaml
cluster:
    queue_manager: slurm
    queue: batch
tmpdir: /tmp
```

First, the section `cluster` defines the program acting as queue manager and the name
of the queue to which jobs will be submitted using the DRMAA library.

The field `tmpdir` defines the temporary directory used by cgatcore for writing
temporary files during the execution of workflows.

<!-- Link definitions -->

[cgatcore-readthedocs]: https://cgat-core.readthedocs.io/en/latest/
