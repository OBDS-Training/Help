---
title: "Keyboard shortcuts"
description: "Certain keys -- or combinations of keys -- trigger extremely useful functionality in a Bash terminal."
lead: "Certain keys -- or combinations of keys -- trigger extremely useful functionality in a Bash terminal."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "essentials"
weight: 202
toc: true
---

## Navigate the history of commands

The up and down arrow keys can be used to navigate the history of commands
used earlier in a Terminal session (or in an earlier Terminal session altogether).

![Arrow keys.](arrow-keys.png)
<!-- Source: https://www.technipages.com/fix-arrow-keys-not-working-on-photos-app (Google search) -->

{{< alert icon="👉" text="The left and right arrow keys have an entirely unrelated functionality; they navigate one character left or right within the command currently being typed at the prompt." />}}

## Jump to the start/end of a line

The `Control` and `A` keys can be pressed simultaneously to move the cursor
instantly at the start of the current line.

Conversely, `Control` and `E` move the cursor to the end of the line.

## Abort the current command

The `Control` and `C` keys can be pressed simultaneously to interrupt a command
that is currently running in the Terminal application.

In the example below, we demonstrate this using the command `sleep`, which does
nothing but keep the terminal session busy for a set number of seconds.
During that interval of time (i.e., before the command completes),
we press the `Control` and `C` keys simultaneously, to manually interrupt the command.

![Interrupting a running command.](ctrl-c.png)

<!-- Link definitions -->
