---
title: "Setting up an SSH key pair"
description: "SSH key pairs provide a more secure alternative to username and password for logging into remote systems."
lead: "SSH key pairs provide a more secure alternative to username and password for logging into remote systems."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: ["ssh-key-pair.svg"]
menu:
  docs:
    parent: "ssh"
weight: 220
toc: true
---

## Creating an SSH key pair

An SSH key pair secures can be used as an additional layer of security to
connect to your account on the CCB HPC cluster.
Instead of typing your username and password, you log into the CCB HPC cluster
using a pair of files; one file on your personal computer, one file on the
cluster.
Together, those two files identify your personal computer and the cluster to
each other.

![The concept of SSH key pair.](ssh-key-pair.png)

_The concept of SSH key pair._

To create the SSH key pair, open a Terminal on your personal computer, and
type:

```bash
ssh-keygen -t rsa -b 4096
```

The option `-t RSA` is important to generate the right type of SSH key pair.
The `-b 4096` option indicates the number of bits in the key; a minimum of 2048 is
recommended, while larger values generally provide additional strength to the
key.

![View of the Terminal while generating an SSH key pair.](ssh-keygen-screenshot.png)

_View of the Terminal while generating an SSH key pair._

When prompted for a filename, immediately press the Return key to accept the
default filename and location.

When prompted for a passphrase, it is recommended to type a password that is
secret yet memorable to you, as this will be the last line of defense if your
someone acquired your private SSH key file.
Alternatively, you can press the Return key immediately without entering a
passphrase, leaving your SSH key pair unprotected.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your passphrase as you type it." />}}

When prompted to confirm your passphrase, type the same answer as you just did
and press the Return key.

Finally, the Terminal should display a message indicating that the key pair was
successfully created.
