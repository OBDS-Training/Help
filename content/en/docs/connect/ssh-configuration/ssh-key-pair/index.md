---
title: "Set up an SSH key pair"
description: "SSH key pairs provide a more secure alternative to username and password for logging into remote systems."
lead: "SSH key pairs provide a more secure alternative to username and password for logging into remote systems."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "ssh-configuration"
weight: 111
toc: true
---

## Motivation

An SSH key pair can be used as an additional layer of security to connect to
your account on the CCB HPC cluster.
Instead of typing your username and password, it is possible to log into your
account on the CCB cluster using a pair of files;
one file on your personal computer (the "private" key),
one file on the CCB cluster (the "public" key).
Together, those two files enable your personal computer and the cluster to identify
themselves to each other.

![The concept of SSH key pair.](ssh-key-pair.png)

## Creating an SSH key pair

To create the SSH key pair, open a Terminal session on your personal computer
(i.e., not logged into the CCB cluster), and type:

```bash
ssh-keygen -t ecdsa -b 521
```

In particular:

- The option `-t ecdsa` is important to specify the type of SSH key pair.
- The option `-b 521` indicates the number of bits in the key; a minimum of 2048
is recommended, while larger values generally give additional strength to the
key.

When prompted for a filename, do not type anything, and immediately press the
`Return` key to accept the default filename and location.

When prompted for a passphrase, CCB policy requires a 16 character passphrase.
Private keys without a password are strictly prohibited.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display your passphrase as you type it." />}}

When prompted to confirm your passphrase, type the same passphrase and press
the `Return` key.

Finally, the Terminal should display a message indicating that the key pair was
successfully created.

![Generating an SSH key pair.](ssh-keygen-screenshot.png)

In particular:

- The private key is located at `~/.ssh/id_ecdsa`.
- The public key is located at `~/.ssh/id_ecdsa.pub`.

{{< alert icon="👉" text="You can ignore the key's randomart." />}}

## Adding the public key on the CCB cluster

Finally, the public key
-- generated and saved as a file on your own computer --
needs to be copied to your account on the CCB cluster,
so that the CCB cluster can prove its identity to the client
(see above, [Motivation](#motivation)).

Conceptually, the command that you type in the Terminal on your personal computer
should be structured as follows:

```bash
ssh-copy-id -i ~/.ssh/id_ecdsa <username>@<remote>
```

Replace `<username>` by your own username, and `<remote>` by one of the
login nodes (see [General information]({{< relref "/docs/connect/first-steps/ssh-first-connection#login-nodes" >}})).

If the public key indeed does not exist on your CCB cluster account yet,
you will be prompted for your password.
Type it, and press the `Return` key.

This adds the public key to the file `~/.ssh/authorized_keys` on your
account on the CCB cluster.

![Copying the public SSH key to the CCB cluster.](ssh-copy-id-screenshot.png)

## Configuring the SSH client

Having set up the SSH key pair on your own computer and the CCB cluster,
you still need to configure the SSH client so that it uses the private key
whenever you invoke the `ssh` command, to prove your identity to the CCB cluster,
and _vice versa_.

Open (or create) the file `~/.ssh/config` _on your personal computer_.
You may do so using any text editor of your choice, including
graphical applications (e.g., [Sublime Text][sublime-text])
or Terminal text editors such as those listed in the section
[Editing files in the Terminal]({{< relref "/docs/linux/files-and-directories/view-and-edit#editing-files-in-the-terminal" >}}).

In that file, add the following lines:

```bash
Host *
    IdentityFile ~/.ssh/id_ecdsa
```

Those lines configure the private key pair used for any remote host that you log into
using the `ssh` command.

- The keyword `Host` creates a new set of parameters.
- The pattern `*` matches all hostnames, making those parameters global defaults
  unless overwritten in subsequent declarations.
- The field `IdentityFile` specifies the path to the private SSH key file that
  you created earlier on your personal computer.

Alternatively, if you happen to use different SSH key pairs to connect to different
SSH servers, you may need to explicitly declare the name of the host next to the
`Host` keyword, so that the following configuration settings only apply to that
particular host.

```bash
Host cbrglogin1.molbiol.ox.ac.uk
    IdentityFile ~/.ssh/id_ecdsa
```

More information about fields that may be configured is available on the page
[Advanced client configuration]({{< relref "/docs/connect/ssh-configuration/client-advanced" >}})

{{< alert icon="👉" text="We recommend keeping your SSH configuration file as simple and minimal as possible unless you identify the need for further configuration." />}}

## Log in using your SSH key pair

You can now log into the CCB cluster using the same `ssh` command as before.
You will be prompted to type your SSH passphrase when the SSH key pair is used.

```bash
ssh <username>@<remote>
```

The screenshot below demonstrates the `ssh` command in action.

![Connecting using the SSH key pair.](ssh-screenshot.png)

{{< alert icon="👉" text="MacOS users may be prompted to type their optional passphrase only for the first connection. The macOS keychain is capable of remembering the passphrase and automatically using it for subsequent connections, which is why the the screenshot above does not prompt the user for the passphrase." />}}

<!-- Link definitions -->

[sublime-text]: https://www.sublimetext.com/
