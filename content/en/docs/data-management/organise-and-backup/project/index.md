---
title: "Collaboration projects"
description: "A brief introduction to projects on the CCB cluster."
lead: "A brief introduction to projects on the CCB cluster."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "organise-and-backup"
weight: 301
toc: true
---

## Overview

Collaboration projects are an easy, secure way for you to share your research
data with other people on the cluster. Each project represents a single
collaboration and can be as big - or as small - as it needs to be. And you can
have as many as you need! Data stored in a project is automatically given the
correct permissions so that only other people in the project can see it. You
just pick the logical set of data and define the people it needs to be shared
with, then we create the project for you and update the list of people as time
goes on so that it's always correct. They're a secure, convenient way to share
data.

## How do collaboration projects work?

Each collaboration project has its own project space in the `/project/`
directory. Here’s an example of a project with just two members:

```
/project/ccbadmin/
                 /dtooke/
                 /emacmahon/
                 /shared/
```

Each member of the project gets their own directory, which can be used to store
project data which doesn’t typically need to be shared; anyone in the project
can read it, but only the owner can add or remove data. Each project
additionally gets a shared directory which is for data which will be used by
multiple people, and anyone can create new directories and files in it. New data
which is created in the project space is automatically added to the correct
group so that only the project members can see it.

## Important safety points

It's a common misconception that the `shared/` directory allows anyone in the
project to read and write the data. This is not the case. The data is still
owned by the user who creates it, is charged against their quota and is only
writable by them by default. **This is deliberate.** As much as it may seem
attractive to have all data in the directory immediately writable by anyone in
the group, that would be dangerous. Multiple people editing the same file at the
same time runs a non-trivial chance of unrecoverable data loss and multiple
people with edit access to a directory allows any one of them to delete all the
files with a single mistyped command. As such, we recommend **against** trying
to "fix" this.

## How do I join an existing collaboration project

Please ask the PI in charge of the project to contact us via
<genmail@molbiol.ox.ac.uk> and ask for your username to be added.

## Successful projects

There's a few things you can do to maximise the likeihood that your projects
will be successful. We'd recommend you take the following points into account
before you start.

You should aim to create a collaboration project for a set of logically
connected data, e.g. a specific research project. Creating a collaboration
project for a list of people and then thinking about the data they may want to
share will risk that you end up with poorly defined data boundries and have to
unentangle the data at a future data.

You should create a new collaboration project for each logically separate set of
data. Adding different data to an existing collaboration project and then adding
more people will likely lead to the same problems described above.

Please tell us if the permissions on the data in your project aren’t working for
you. Trying to work around an issue on your own is more likely to make the
problem worse and take longer overall.

Please tell us if someone leaves the project and no longer needs access to the
data. Leaving accounts with access to data they don’t need is a security and
privacy risk.

## How do I set up a collaboration project

Setting up a new collaboration project is quick and easy.

{{< alert icon="👉" text="Only PIs may request new projects." />}}

1. Decide the purpose of the project. Each project should be for a single
   requirement, e.g. data for a lab or data for a research project. If different
   people need access to different logical data sets, these should be multiple
   projects. Simmarly, if the same people need access to different logical data
   sets, these should also be multiple projects.
2. Choose a name for the project that isn’t already in use in `/project/`.
3. Decide which user accounts should have access to the data.
4. Send an e-mail to <genmail@molbiol.ox.ac.uk> with the details.
5. We’ll set up the project and add the members; each member will get a welcome
   e-mail.

## What about my other directories?

The collaboration projects are an addition to your existing options, not a
replacement, meaning that you can have several different locations for your
data. Our suggestion for organising your data would be the following:

`/home/some_directory/$USER/` : ideal for small private data such as documents
or configuration files which are private to you

`/project/project1/$USER/` : used to store data which is part of project1 but
won’t typically be used by other people

`/project/project1/shared/` : used to store data which is part of project1 and
is likely to be used by multiple people

## How does this affect my quota?

Your quota is based on your account. As such, any data which you own is charged
against your personal quota, wherever it is. It is not currently possible for us
to allocate quota to collaboration projects directly.

## Getting help

You can email the CCB team using the email address <genmail@molbiol.ox.ac.uk>.
Using this address ensures your email is logged and assigned a tracking number,
and will go to all the core team, which means the appropriate person or people
will be able to pick it up.

## Copyright

This text is copyright University of Oxford and MRC and may not be reproduced or
redistributed without permission.

## Author

Duncan Tooke (<duncan.tooke@imm.ox.ac.uk>) and Kevin Rue-Albrecht
(<kevin.rue-albrecht@imm.ox.ac.uk>).

<!-- Link definitions -->
