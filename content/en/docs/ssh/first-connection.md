---
title: "First connection"
description: "Connecting to the MRC WIMM CCB high-performance computing (HPC) cluster for the first time."
lead: "Connecting to the MRC WIMM CCB high-performance computing (HPC) cluster for the first time."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 100
toc: true
---

## Login nodes

The CCB HPC cluster has three login nodes that users can log into:

- `cbrglogin1.molbiol.ox.ac.uk`
- `cbrglogin2.molbiol.ox.ac.uk`
- `cbrglogin3.molbiol.ox.ac.uk`

## Username and password

To log into a login node, open a Terminal on your personal computer and use the `ssh`
command with your username and the name of the login node that you wish to log
into.
Briefly:

```
ssh username@remote
```

{{< alert icon="👉" text="Replace 'username' by your own username, and 'remote' by one of the login nodes above." />}}

If this is indeed your very first connection, you may be prompted to verify the authenticity of the host.
If this happens, type type `yes` and press the Return key to continue connecting.

When prompted for your password, type it and press the Return key.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your password as you type it." />}}

{{< alert icon="👉" text="If you are having trouble typing your password correctly without seeing it, you can use a text editor to type it, then cut and paste it into the Terminal window." />}}


## Setting up an SSH key pair

An SSH key pair secures can be used as an additional layer of security to connect
to your account on the CCB HPC cluster.
Instead of your username and password, you log into the CCB HPC cluster using
a pair of files - one file on your personal computer, one file on the cluster -
which identify your personal computer and the cluster to each other.

To create the SSH key pair, open a Terminal on your personal computer, and type:

```bash
ssh-keygen -t rsa -b 4096
```

When prompted for a filename, press the Return key to accept the default filename.

When prompted for a passphrase, it is recommended to type a password that is 
secret yet memorable to you, as this will be the last line of defense if your
someone gained access to your private SSH key file.
Alternatively, press the Return key without entering a passphrase, leaving your
SSH key pair unprotected.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your passphrase as you type it." />}}

When prompted to confirm your passphrase, type the same answer as you just did and press the Return key.
