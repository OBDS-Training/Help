---
title: "Using environment modules"
description: "A brief introduction to environment modules."
lead: "A brief introduction to environment modules."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "configuration"
weight: 241
toc: true
---

## What are modules?

Environment modules provide a central installation of software available
to multiple users on the same computer system.

Individual software modules can be loaded and unloaded easily using
the `module` command, which dynamically modifies the user's shell
environment as needed.

For each module, configuration files are created and maintained by
system administrators.

As such, new modules can be requested from system administrators
(refer to the [Contact]({{< relref "contact" >}}) section),
subject to time and availability.

{{< alert icon="👉" text="New versions of existing modules generally require less time to review and setup than entirely new modules." />}}

## List available modules

The `module avail` command can be used to list modules currently available.

```bash
module avail
```

This command generally displays an uncessarily large list of modules.

The command can be given a pattern of module names to search for.

For instance:

```bash
module avail python
```

![List module names with the prefix 'python'.](module-avail-python.png)

## Search modules

The `module search` command is an alternative method for searching modules
by keyword.

```bash
module search python
```

![Search modules with the keyword 'python'.](module-search-python.png)

## List modules currently loaded

The `module list` command can be used to list modules that are currently load

```bash
module list
```

![List modules currently loaded.](module-list.png)

<!-- Link definitions -->
