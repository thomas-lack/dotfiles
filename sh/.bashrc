# include .profile with path extensions
if [[ -r ~/.profile ]]; then
    . ~/.profile
fi

# include highlighting helper "h"
. ~/dotfiles/sh/scripts/h.sh
