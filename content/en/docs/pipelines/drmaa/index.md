---
title: "The DRMAA API"
description: "Setting up the DRMAA API."
lead: "Setting up the DRMAA API."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "pipelines"
weight: 500
toc: true
---

## Motivation

The [Distributed Resource Management Application API (DRMAA) →][drmaa-org]
is used by workflow managers such as [cgatcore →][cgatcore-github]
to communicate with HPC queue managers while submitting and monitoring jobs.

The [drmaa][drmaa-python] package provides a Python interface to the
DRMAA library.

This page describes the setup necessary for using DRMAA on the CCB cluster.
This setup is a prerequisite for using [cgatcore →][cgatcore-github] pipelines.

## Setup

On the CCB cluster, in your `~/.bashrc` file, add the following chunk of code
to set the environment variable `DRMAA_LIBRARY_PATH`.

{{< alert icon="👉" text="If your '.bashrc' file already contains the conditional statement 'if [[ $PS1 ]]', you can add only the 'export' statement within the existing bloc of code." />}}

```bash
if [[ $PS1 ]]; then
    export DRMAA_LIBRARY_PATH=/usr/lib64/libdrmaa.so
fi
```

You are now ready to use the DRMAA library in [cgatcore →][cgatcore-github]
pipelines.

<!-- Link definitions -->

[drmaa-org]: https://www.drmaa.org/
[cgatcore-github]: https://github.com/cgat-developers/cgat-core
[drmaa-python]: https://drmaa-python.readthedocs.io/en/latest/index.html
