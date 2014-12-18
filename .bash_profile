# Load rbenv
if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi;

# Load sexy-bash-prompt
. ~/.bash_prompt

# Load autojump
[[ -s `brew --prefix`/etc/autojump.bash ]] && . `brew --prefix`/etc/autojump.bash

# Load dotfiles
. ~/.dotfiles/init.sh

# ENV variables
export EDITOR="vim"

# bash completion (requires bash 4)
# installation: `brew tap homebrew/versions && brew install bash-completion2`
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

# for the wonderfulness
light_black_on_default "\n`quoteme_pretty`\n\n"