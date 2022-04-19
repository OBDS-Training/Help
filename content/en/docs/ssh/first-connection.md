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
    parent: "ssh"
weight: 210
toc: true
---

## Username and password

To log into a login node, open a Terminal on your personal computer and use
the `ssh` command, combining your username, the `@` symbol, and the name of
the login node that you wish to log into.
Conceptually:

```bash
ssh <username>@<remote>
```

Replace `<username>` by your own username, and `<remote>` by one of the
login nodes (see [General information](../general-information/#login-nodes)).

{{< alert icon="👉" text="If this is indeed your very first connection, you may be prompted to verify the authenticity of the host. If this happens, type `yes` and press the Return key to continue connecting." />}}

When prompted for your password, type it and press the Return key.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your password as you type it. If you are having trouble typing your password correctly without seeing it, you can use a text editor to type it, then cut and paste it into the Terminal window when prompted." />}}

You should now be logged in the MRC WIMM CCB high-performance computing (HPC)
cluster.
Welcome!
