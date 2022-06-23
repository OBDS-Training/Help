---
title: "Installation"
description: "Installing the Conda package management system. "
lead: "Installing the Conda package management system."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "conda"
weight: 610
toc: true
---

## Source

This page follows is based on the [Installation →][conda-installation] page of the
Conda documentation.

Specifically, scroll down to the [Regular installation →][conda-regular-installation]
section, and follow the link for the [Linux][conda-regular-installation-linux] operating
system.

![Link to instructions for a regular installation on Linux.](regular-installation-linux.png)

<p align='center'><i>Link to instructions for a regular installation on Linux.</i></p>

## Download the installer

In the page that you navigated to at the end of the previous section,
follow the link to the [Miniconda installer for Linux][miniconda-installer-for-linux].

![Link to the Miniconda installer for Linux.](miniconda-installer-for-linux.png)

<p align='center'><i>Link to the Miniconda installer for Linux.</i></p>

In the table listing various Linux installers, right-click on the link to
`Miniconda3 Linux 64-bit` associated with the most recent version of Python
in the table, and click on `Copy Link Address` (Safari) in the contextual menu,
or equivalent option for your specific web browser.

![Link to the Miniconda installer for Linux.](miniconda-installer-python39.png)

<p align='center'><i>Link to the Miniconda installer for Linux.</i></p>

Log into the CCB cluster over SSH.

For a tidy installation process, we recommend creating and working in a
temporary directory for the duration of the process.
In you home directory create a directory called `conda`, change working directory
to that directory, and download the Conda installer in that new directory using the
link that you copied to your clipboard above.

```bash
mkdir ~/conda
cd ~/conda
wget <url_in_clipboard>
```

Instead of `<url_in_clipboard>`, paste the link address to the installer that you copied
into your clipboard above.

## Verify the installer hash

While optional, we recommend to verify the integrity of the installer that you have just
downloaded, to ensure that the file was not corrupted during the download process.

In your Terminal application, type the `sha256sum` command followed by the name of the
installer file that you just downloaded.

For instance:

```bash
sha256sum <filename>
```

Replace `<filename>` by the name of the installer file that you just downloaded.

![Example output of the `sha256sum` command.](sha256sum-installer.png)

<p align='center'><i>Example output of the `sha256sum` command.</i></p>

Compare the output of the command with the value of the field `SHA256 hash` in the table
of download links, and make sure that it matches the two values are exactly identical.

{{< alert icon="💡" text="A quick way is to copy the hash value printed buy the 'sha256sum' command and paste it in the search field of your web browser on the page of Conda documentation. If the values match, the value next to the file that you downloaded will be highlighted." />}}

![Compare the output of the `sha256sum` command to the hash of the original file.](sha256-compare.png)

<p align='center'><i>Compare the output of the `sha256sum` command to the hash of the original file.</i></p>

## Run the installer

```bash
bash <filename>
```

Replace `<filename>` by the name of the installer file that you just downloaded.

When prompted, press `ENTER` (i.e., the Return key) to continue the installation process.

![Running the Miniconda installer.](miniconda-installer-run.png)

<p align='center'><i>Running the Miniconda installer.</i></p>

Review the End User License Agreement (press the Space bar to scroll down), and
when prompted, type `yes` to accept the license terms.

When prompted, press `ENTER` to confirm your home directory as the location where
Miniconda will be installed.

![Setting the installation directory for Miniconda.](miniconda-directory.png)

<p align='center'><i>Setting the installation directory for Miniconda.</i></p>

When prompted, type `yes` to allow the installer to run `conda init`.

{{< alert icon="👉" text="This last action automatically edits your '~/.bashrc' file." />}}

![Allowing the Miniconda installer to run 'conda init'.](miniconda-init.png)

<p align='center'><i>Allowing the Miniconda installer to run 'conda init'.</i></p>

## Edit your .bashrc file

![Automatically generated contents added to the '~/.bashrc' file.](bashrc-conda-init.png)

<p align='center'><i>Automatically generated contents added to the '~/.bashrc' file.</i></p>

<!-- Link definitions -->

[conda-installation]: https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html
[conda-regular-installation]: https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation
[conda-regular-installation-linux]: https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html#install-linux-silent
[miniconda-installer-for-linux]: https://docs.conda.io/en/latest/miniconda.html#linux-installers
