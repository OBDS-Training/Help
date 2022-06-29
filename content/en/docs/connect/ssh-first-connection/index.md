---
title: "First SSH connection"
description: "This page describes how to connect to the MRC WIMM CCB high-performance computing (HPC) cluster over SSH for the first time."
lead: "This page describes how to connect to the MRC WIMM CCB high-performance computing (HPC) cluster over SSH for the first time."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "connect"
weight: 130
toc: true
---

## Login nodes

The CCB cluster has three login nodes that users can log into:

- `cbrglogin1.molbiol.ox.ac.uk`
- `cbrglogin2.molbiol.ox.ac.uk`
- `cbrglogin3.molbiol.ox.ac.uk`

## Log in with your username and password

When your account is created on the CCB cluster, you will be sent an email
including your unique username on the CCB cluster and a randomly generated
password.

{{< alert icon="👉" text="You are encouraged to change your initial password on your first connection. More on that after we get you logged into the CCB cluster for the first time." />}}

To log into a login node, open a Terminal on your personal computer and use
the `ssh` command, combining your username, the `@` symbol, and the name of
the login node that you wish to log into.
Conceptually, the command that you type in the Terminal should be structured
as follows:

```bash
ssh <username>@<remote>
```

Replace `<username>` by your own username, and `<remote>` by one of the
login nodes (see [Login nodes]({{< relref "#login-nodes" >}}) section above).
When you have typed the command above, press the Return key to execute it.

![Using the ssh command.](ssh-screenshot.png)

If this is indeed your very first connection, you may be prompted to verify
the authenticity of the host.
If this happens, type `yes` and press the Return key to continue connecting.

When prompted for your password, type it and press the Return key.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your password as you type it. If you are having trouble typing your password correctly without seeing it, you can use a text editor to type it, then cut and paste it into the Terminal window when prompted." />}}

You should now be logged in the MRC WIMM CCB high-performance computing (HPC)
cluster.

Welcome!

<!-- Link definitions -->
