---
title: "Autocompletion"
description: "The autocompletion functionality saves time and mitigates the risk of typographical errors."
lead: "The autocompletion functionality saves time and mitigates the risk of typographical errors."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "linux"
weight: 210
toc: true
---

## What is autocompletion?

Autocompletion refer to the action of pressing the tabulation key after typing
the first few characters of a command name, allowing the Terminal application
to predict the rest of the command name.

If the prediction unambiguously identifies a single matching command name, the
remaining characters are automatically inserted to complete the command name.
The user can then continue typing the rest of the command line (e.g., options,
inputs).

If the prediction identifies multiple matching command names, no autocompletion
will take place.
Instead, the tabulation key can be pressed a second time to reveal the list
of ambiguous command names that were identified.
If the list of command names identified is excessively large, the terminal
may prompt for a `y` or `n` answer, whether to display the all possibilities.
Either way, the prompt will be returned with the characters typed so far,
encouraging the user to type more characters before attempting to autocomplete
again.

![Autocompleting the 'man' command.](autocomplete-man.png)


## The tabulation key

The tabulation key is located on the left side of most keyboards,
above the Caps Lock key.

![The tabulation key.](tab.png)
<!-- Source: https://skillforge.com/rename-files-fast-with-the-tab-key/ (Google search)  -->

<!-- Link definitions -->
