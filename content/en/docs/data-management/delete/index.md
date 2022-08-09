---
title: "Delete intermediate files"
description: "A brief introduction to best practices in deleting intermediate files."
lead: "A brief introduction to best practices in deleting intermediate files."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "data-management"
weight: 304
toc: true
---

## Which files can be deleted?

If you perform multiple steps of processing on a file
(e.g., filtering, sorting, annotation),
generating and storing multiple copies of that file at the various steps
of processing, you should consider deleting all but the final copy of
that file.

For instance:

```bash
# Run HISAT2 to map reads
hisat2 -f \
  -x $HISAT2_HOME/example/index/22_20-21M_snp \
  -U $HISAT2_HOME/example/reads/reads_1.fa \
  -S example1.sam
# Run samtools view to convert from SAM to BAM
samtools view -bS example1.sam > example1.bam
# Run samtools sort to sort mapped reads
samtools sort example1.bam -o example1.sorted.bam
# Remove intermediate files
rm example1.sam example1.bam
```

In particular:

- The `rm` command is used to delete all files except for the final `example1.sorted.bam`.

<!-- Link definitions -->
