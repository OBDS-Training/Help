---
title: "Setting up an SSH key pair"
description: "SSH key pairs provide a more secure alternative to username and password for logging into remote systems."
lead: "SSH key pairs provide a more secure alternative to username and password for logging into remote systems."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "ssh"
weight: 220
toc: true
---

## Motivation

An SSH key pair can be used as an additional layer of security to connect to
your account on the CCB HPC cluster.
Instead of typing your username and password, it is possible to log into your
account on the CCB cluster using a pair of files;
one file on your personal computer (the "private" key),
one file on the CCB cluster (the "public" key).
Together, those two files identify your personal computer and the cluster to
each other.

![The concept of SSH key pair.](ssh-key-pair.png)

<p align='center'><i>The concept of SSH key pair.</i></p>

## Creating an SSH key pair

To create the SSH key pair, open a Terminal on your personal computer, and
type:

```bash
ssh-keygen -t rsa -b 4096
```

The option `-t rsa` is important to generate the right type of SSH key pair.
The `-b 4096` option indicates the number of bits in the key; a minimum of 2048 is
recommended, while larger values generally provide additional strength to the
key.

![Generating an SSH key pair.](ssh-keygen-screenshot.png)

<p align='center'><i>Generating an SSH key pair.</i></p>

When prompted for a filename, immediately press the Return key to accept the
default filename and location.

When prompted for a passphrase, it is recommended to type a password that is
secret yet memorable to you, as this will be the last line of defense if
anyone maliciously acquired your private SSH key file.
Alternatively, you can press the Return key immediately without entering a
passphrase, leaving your SSH key pair unprotected.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your passphrase as you type it." />}}

When prompted to confirm your passphrase, type the same answer as you just did
and press the Return key.

Finally, the Terminal should display a message indicating that the key pair was
successfully created.

## Configuring the SSH client

Having generated the SSH key pair, you need to configure the SSH client
so that it uses the private key when the `ssh` command is invoked,
to prove its identity to the CCB cluster.

Open - or create - the file `~/.ssh/config` on your personal computer.
In that file, add the following lines:

```bash
Host *
    IdentityFile ~/.ssh/id_rsa
    Port 22
    Protocol 2
    TCPKeepAlive yes
    ServerAliveInterval 300
    ServerAliveCountMax 2
    ForwardX11 yes
    ForwardX11Trusted yes
    ForwardAgent yes
    Compression yes
    XAuthLocation /opt/X11/bin/xauth
    AddKeysToAgent yes               # macOS only
    UseKeychain yes                  # macOS only
```

{{< alert icon="👉" text="Do not include the lines that state 'macOS only' if you are a Windows or Linux user." />}}

## Adding the public key on the CCB cluster

Finally, the public key needs to be copied to your account on the CCB cluster,
so that the CCB cluster can prove its identity to the client.

Conceptually, the command that you type in the Terminal should be structured as follows:

```bash
ssh-copy-id <username>@<remote>
```

Replace `<username>` by your own username, and `<remote>` by one of the
login nodes (see [General information](../general-information/#login-nodes)).

If the public key indeed does not exist on your CCB cluster account yet,
you will be prompted for your password.
Type it, and press the Return key.
This adds the public key to the file `~/.ssh/authorized_keys` on your
account on the CCB cluster.

![Copying the public SSH key to the CCB cluster.](ssh-copy-id-screenshot.png)

<p align='center'><i>Copying the public SSH key to the CCB cluster.</i></p>

## Log in with your SSH key pair

You can now log into the CCB cluster using the same `ssh` command as before,
without the need to type in your account password.
However, if you have set a passphrase on your SSH key pair, you will be
prompted to type this passphrase when the SSH key pair is used.

```bash
ssh <username>@<remote>
```
