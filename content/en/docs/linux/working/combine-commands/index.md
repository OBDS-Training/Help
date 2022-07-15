---
title: "Combine commands"
description: "Declare successive or conditional sets of commands."
lead: "Declare successive or conditional sets of commands."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "working"
weight: 222
toc: true
---

## Successive commands

Generally, successive commands are executed in separate statements.

For instance:

```bash
echo "Some text"
echo "Some more text"
```

![Declaring multiple commands in separate statements.](commands-separate.png)

However, the symbol `;` can be used to combine multiple commands
in a single statement using the syntax `command1; command2`.

For instance:

```bash
echo "Some text"; echo "Some more text"
```

![Declaring multiple commands in a single statement.](commands-semicolon.png)

The statements are executed in order, from left to right.

While there is no major preference toward either syntax, a noticeable difference
between the two approaches is that:

- Separate statements visibly separate the output of the two commands.
  A new prompt is visible for each new command, marking the end of the output
  for one command and the start of the output for the next command.
- Commands combined into a single statement do not demarcate the output of
  consecutive commands.

## Conditional combinations of commands

Commands can be combined logically, to conditionally execute later commands,
depending on the successful completion of earlier commands.

The operator `&&` can be used to execute a command only if the previous command
completed succesfully, using the syntax `command1 && command2`.

The example below illustrates the two scenarios, in which the first command either
completes successfully (first) or fails (second):

```bash
which echo && echo "Some text"
ls missing && echo "Some text"
```

![Declaring multiple commands in a single statement.](command-and-and.png)

<!-- Link definitions -->
