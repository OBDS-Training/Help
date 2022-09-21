---
title: "Configure an SSH host"
description: "SSH hosts configures common parameters when connecting to certain remote hosts."
lead: "SSH hosts configures common parameters when connecting to certain remote hosts."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "ssh-configuration"
weight: 112
toc: true
---

## Motivation

When regularly connecting to one or more remote hosts, it can be tedious to type
or even remember all the parameters in the `ssh` command.
Moreover, some parameters are common for multiple or all remote hosts,
while other parameters are specific to individual hosts.

In this section, we describe how to configure parameters that are specific
to different hosts.

Recommended parameters shared across all remote hosts are described in the earlier
page [Set up an SSH key pair]({{< relref "ssh-key-pair#configuring-the-ssh-client" >}}).

## Configure a remote host

On your personal computer, open the file `~/.ssh/config`.
You may do so using any text editor of your choice, including
graphical applications (e.g., [Sublime Text][sublime-text])
or Terminal text editors such as those listed in the section
[Editing files in the Terminal]({{< relref "/docs/linux/files-and-directories/view-and-edit#editing-files-in-the-terminal" >}}).

Add the following lines in the file, making sure to replace `<username>` by your own username:

```bash
Host ccb1
    Hostname cbrglogin1.molbiol.ox.ac.uk
    User <username>

Host ccb3
    Hostname cbrglogin3.molbiol.ox.ac.uk
    User <username>
```

Then, save and close the file.

Those lines configure three remote hosts.

* The keyword `Host` creates a new host.
* The field `Hostname` configures the real hostname to log into.
* The field `User` specifies the username to log in as.
* The indentation of fields is optional.
  However, four spaces are commonly used for readability.

More information about fields that may be configured is available on the page
[ssh_config(5) - Linux man page →][ssh-config].

## Connect to a configured remote host

You should now be able to log into the CCB cluster using any of the following commands,
to connect to the corresponding remote host:

```bash
ssh ccb1
ssh ccb3
```

Notice how you do not need to specify your username, the hostname,
nor any of the parameters configured for all remote hosts.

In the screenshot below, notice the prompt changing.
Initially, the `ssh` command is typed in the prompt of the personal computer.
Once the connection is established, the prompt of the remote host appears
(in this case, `cbrglogin1`).

![Connecting to a configured SSH host.](ssh-screenshot.png)

<!-- Link definitions -->

[ssh-config]: https://linux.die.net/man/5/ssh_config
[sublime-text]: https://www.sublimetext.com/
