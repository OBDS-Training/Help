---
title: "Change your SSH password"
description: "Randomly generated passwords stored in emails are not secure. They must be replaced as soon as possible by new, secret, and memorable passwords."
lead: "Randomly generated passwords stored in emails are not secure. They must be replaced as soon as possible by new, secret, and memorable passwords."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "first-steps"
weight: 105
toc: true
---

## Motivation

The initial randomly generated password that you received by email is at risk
of being stolen and misused if your email account were ever hacked.
Separately, the randomness of the password makes it very difficult to remember
and type manually.

It is highly recommended to change that initial password on your first
connection to the CCB cluster.

## Instructions

First, log into the CCB cluster as demonstrated on the page
[First SSH connection]({{< relref "/docs/connect/first-steps/ssh-first-connection" >}}).

Next, type the command `passwd` and press the Return key.
Then, follow the instructions returned by the command in the Terminal.
In particular, when prompted, type (or copy-paste) your current password
(the randomly generated password that you were given in the email),
and then type your new desired password twice, pressing the Return key
each time.

You should then see a message indicating that your password was updated
successfully.

```bash
passwd
```

![Changing an SSH password.](passwd-screenshot.png)

{{< alert icon="👉" text="For privacy and security reasons, the Terminal will not display passwords as you type (or copy-paste) them. If you are having trouble typing your password correctly without seeing it, you can use a text editor to type it, then cut and paste it into the Terminal window when prompted." />}}

<!-- Link definitions -->
