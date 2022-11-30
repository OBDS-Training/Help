---
title: "Install Bioconductor"
description: "Installing Bioconductor."
lead: "Installing Bioconductor."
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: false
images: []
menu:
  docs:
    parent: "r"
weight: 703
toc: true
---

## Motivation

The Bioconductor project provides many R packages focused on the analysis of
biological assays.

## Install BiocManager

Instructions are available on the [main Bioconductor
website][bioconductor-install].

Briefly, first launch RStudio.

Then, run the following command in the R console:

```r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
```

## RTools

When running the command above, you may be prompted with the following warning
message:

![Rtools.](rtools-warning.png)

In which case, please navigate to
<https://cran.rstudio.com/bin/windows/Rtools/>.

![Rtools.](rtools.png)

Click on the link 'RTools x.x' (where `x.x` is a version of RTools). In
particular, select a version of RTools that matches the version of R that you
are currently using.

{{< alert icon="👉" text="The version of R currently active can be displayed in the RStudio console typing 'R.version.string'. For instance:" />}}

![R.version.string](r-version-string.png)

On the next page, click on the link to download the RTools installer (e.g., this
is 'Rtools42 installer' for RTools 4.2).

Then, double-click on the installer file that you just downloaded and progress
through the screens of the installation program.

We recommend leaving all options to their default values.

We also recommend closing RStudio and launching a new RStudio application.

## Install the latest version of Bioconductor

In the R console of the RStudio application, run the following command:

```r
BiocManager::install()
```

You should see messages similar to the following.

![BiocManager::install()](biocmanager-install.png)

In this example, Bioconductor version 3.15 was installed, as the latest version
of Bioconductor compatible with R 4.2.2.

{{< alert icon="👉" text="The 'BiocManager' package automatically uses the version of R running in the current session to determine the version of Biocondutor packages that can be installed in the current R library. We will describe the process of updating R and Bioconductor in a separate section." />}}

<!-- Link definitions -->

[bioconductor-install]: https://www.bioconductor.org/install/
