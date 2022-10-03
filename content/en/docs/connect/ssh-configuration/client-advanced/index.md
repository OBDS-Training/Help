---
title: "Advanced client configuration"
description: "SSH clients can be extensively configured, with caution."
lead: "SSH clients can be extensively configured, with caution."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "ssh-configuration"
weight: 113
toc: true
---

## Motivation

SSH clients can be configured through the configuration file `~/.ssh/config`.

An example of this is demonstrated in the earlier page
[Set up an SSH key pair]({{< relref "/docs/connect/ssh-configuration/ssh-key-pair#configuring-the-ssh-client" >}}).

Some configuration settings are specific to individual operating systems.
In the sections below, we provide a series of examples for the purpose
of illustration and documentation.

Importantly, all the configuration parameters presented in this page are all optional.
They are presented here for the purpose of information and help.
We do not recommend configuring any of those parameters
in your own environment unless you identified the need for them.

## Examples

### Windows

```bash
Host *
    IdentityFile ~/.ssh/id_ecdsa
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
```

See the [Cheatsheet](#cheatsheet) section below for information about individual settings.

### macOS

```bash
Host *
    IdentityFile ~/.ssh/id_ecdsa
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
    # macOS only
    AddKeysToAgent yes
    UseKeychain yes
    PubkeyAuthentication yes
```

See the [Cheatsheet](#cheatsheet) section below for information about individual settings.

## Cheatsheet

### All operating systems

| Option |  Descrition  |
|:------:| :----------- |
| `IdentityFile` | Path to the private SSH key file on your personal computer. |
| `Port` | Port number to connect on the remote host (default: 22). |
| `Protocol` | Protocol version of SSH to use. |
| `TCPKeepAlive` | Whether TCP keepaline messages are regularly sent, which is useful to notice it the connection dies at any point. |
| `ServerAliveInterval` | Timeout interval in seconds after which the client will request a response from the server if no data has been received recently. |
| `ServerAliveCountMax` | Number of server alive messages which may be sent to the server without receiving any reply before `ssh` disconnects from the server. |
| `ForwardX11` | Whether X11 connections will be automatically redirected over the secure channel of the `ssh` connection. |
| `ForwardX11Trusted` | Whether remote X11 clients are given full access to the original X11 display. |
| `ForwardAgent` | Whether the connection to the authentication agent (if any) is forwarded to the remote machine. |
| `Compression` | Whether to use compression. |
| `XAuthLocation` | Full pathname of the `xauth` program. |
| `PubkeyAuthentication` | Whether to try public key authentication using SSH keys. |

### macOS settings

| Option |  Descrition  |
|:------:| :----------- |
| `AddKeysToAgent` | Whether keys should be automatically added to a running `ssh-agent`. |
| `UseKeychain` | Whether passphrases are stored in the keychain. |

More information about fields that may be configured for macOS is available on the page
[OpenBSD manual page server →][ssh-config-openbds].

More information on the field `UseKeychain` is available on the page
[Technical Note TN2449 →][usekeychain-technical-note].

<!-- Link definitions -->

[ssh-config-linux]: https://linux.die.net/man/5/ssh_config
[ssh-config-openbds]: https://man.openbsd.org/ssh_config
[usekeychain-technical-note]: https://developer.apple.com/library/archive/technotes/tn2449/_index.html
