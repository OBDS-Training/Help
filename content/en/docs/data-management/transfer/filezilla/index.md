---
title: "Transfer files using FileZilla"
description: "A brief introduction to transferring files using FileZilla."
lead: "A brief introduction to transferring files using FileZilla."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "transfer"
weight: 310
toc: true
---

## What is FileZilla?

The [FileZilla Client][filezilla-org-download] Client is a free solution for transferring
files between computers via FTP/SFTP/FTPS protocols.

Most commonly, the FileZilla Client is used to transfer files between a local computer
-- where the FileZilla Client is installed -- and a remote computer (e.g., the CCB cluster).

While connected to a remote computer, the main window of the FileZilla typically looks as
follows:

![Example view of the FileZilla Client (main window).](filezilla.png)

## Create site profiles

We encourage users to create a profile for each remote computer that they regularly
connect to using FileZilla.

A profile stores all the information necessary to connect to a remote computer.
When a profile is correctly set up, users can select a profile and click the
`Connect` button, saving time and avoiding typographical mistakes.

The FileZilla Site Manager can be open from the menu as follows:

- Click of `File`.
- In the menu, click on `Site Manager...`.

![The FileZilla Site Manager.](filezilla-site-manager.png)

In particular:

- Click the button `New site` to initialise a new profile.
- Type a short yet descriptive name for the profile.
- In the field `Protocol:`, choose `SFTP - SSH File Transfer Protocol`.
- In the field `Host:`, type the URL of one of the login nodes
  (see [General information]({{< relref "/docs/connect/ssh-first-connection#login-nodes" >}})).
- You may leave the field `Port:` empty.
- In the field `Logon Type:`
  - Choose `Key file` if you have created an SSH Key pair
  (see [Set up an SSH key pair]({{< relref "ssh-key-pair" >}})).
- In the field `User:`, type your username on the CCB cluster.
- In the field `Key file:`, select the private SSH key that you
  created on your personal computer (typically located at `~/ssh/id_rsa`).
  - You may be prompted to convert your private key file to a format
    supported by FileZilla.
    If so, click `Yes` and follow the one-time instructions in the next
    section below.
    At the end of the process, the converted key should be automatically
    selected.
  - When setting up subsequent profiles, select the converted key directly.
- Click `OK` to save the profile (this usually closes the Site Manager).
- Reopen the Site Manager, select the profile, and click `Connect`.

## Convert a private SSH key file

The private SSH key file generated using the `ssh-keygen` command is not
directly supported by the FileZilla client.

When selecting a private key file generated using the `ssh-keygen` command,
the FileZilla Client may prompt you to convert the key file to a format
supported by the FileZilla Client.

![Prompt to convert the private key file.](filezilla-convert-ssh-key.png)

Click `Yes`.

If your private key file is protected by a passphrase, you may be prompted
to type that passphrase, to temporarily unlock the private key file during
the conversion process, and protect the converted key file with the same
passphrase.

![Prompt to type the optional passphrase.](filezilla-passphrase.png)

When prompted to select a filename for the converted key file:

- In the field `Save As:`, type a descriptive filename
  (e.g., `id_rsa.filezilla`).
- In the field `Where:`, navigate your local filesystem and select
  an appropriate location (e.g., `~/.ssh`).
- Click the `Save` button.

![Prompt to choose a filename and location for the converted key file.](filezilla-save-converted-key.png)

<!-- Link definitions -->

[filezilla-org-download]: https://filezilla-project.org/download.php?platform=osx
