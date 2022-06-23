---
title: "Conda | General information"
description: "General information about the Conda package management system."
lead: "General information about the Conda package management system."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "conda"
weight: 600
toc: true
---

## Introduction

The CCB cluster provides many bioinformatics software packages through the
[Environment Modules][modules-readthedocs] system, managed by system
administrators.

When software is not available through the module system, users may use
the [Conda][conda-website] package management system to install software
packages themselves and organise distinct environments that may contain
different version of those software package for different projects.

Additionally, when installing a package, Conda identifies and resolves
package dependencies, installing the latest appropriate version of
every dependency for the target package.

In this section, we provide guidance to install and setup the Conda
package management system for an individual user, we demonstrate
how to install package in distinct environments, and how to activate
environments before using the newly installed software packages.

<!-- Link definitions -->

[modules-readthedocs]: https://modules.readthedocs.io/en/latest/index.html
[conda-website]: https://docs.conda.io/en/latest/
