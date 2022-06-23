---
title: "Backup"
description: "Backup of files contents."
lead: "Backup of files contents."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "conda"
weight: 699
toc: true
---

## .bashrc

```bash
if [[ $PS1 ]]; then
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/a/albrecht/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/a/albrecht/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/a/albrecht/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/a/albrecht/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<

    ## fix to get conda to pick up environments properly  https://github.com/conda/conda/issues/9392
    conda deactivate
    conda activate base
fi # if PS1
```