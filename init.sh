#!/bin/bash

# load functions
for i in ~/.dotfiles/functions/*.sh ; do
    if [ -r "$i" ]; then
        . $i
    fi
done

# Handy aliases
alias disapprove=~/.disapprove.sh # uselessness (github.com/qrohlf/look-of-disapproval)
alias gh="hub browse" # open github for the current repo
alias wub="booyah -xdb" # wub == web
alias ls="ls -G" # colored ls output
alias duh="du -sh" # quick file/directory size
alias gitroot='cd $(git rev-parse --show-cdup)' # quickly cd to the repo root
alias mm="middleman"
alias flushdns="sudo killall -HUP mDNSResponder"
