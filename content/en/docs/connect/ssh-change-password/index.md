---
title: "Change your SSH password"
description: "The randomly generated password that you received by email should be replaced by a new secure and memorable password."
lead: "The randomly generated password that you received by email should be replaced by a new secure and memorable password."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "connect"
weight: 140
toc: true
---

## Motivation

The initial randomly generated password that you received by email is at risk
of being stolen and misused if your email account were ever hacked.
Separately, the randomness of the password makes it very difficult to remember
and type from memory.

It is highly recommended to change that initial password on your first
connection to the CCB cluster.
To do so, in a Terminal logged in the CCB cluster, type the command `passwd`
and press the Return key, as follows:

```bash
passwd
```

![Changing your password.](passwd-screenshot.png)

<p align='center'><i>Changing your password.</i></p>

When prompted, first type your current password (the randomly generated
password that you were given in the email), and then type your new desired
password twice, pressing the Return key after each password.

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display passwords as you type them. If you are having trouble typing your password correctly without seeing it, you can use a text editor to type it, then cut and paste it into the Terminal window when prompted." />}}

You should then see a message indicating that your password was updated
successfully.

<!-- Link definitions -->
