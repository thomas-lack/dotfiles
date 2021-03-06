# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '

# Set os specific environment settings
case "$(uname -s)" in

  Darwin*)
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
    export PATH="$PATH:$JAVA_HOME"
    export PATH="$HOME/.npm-global/bin:$PATH"
    export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/Users/lack/bin:$PATH"
    ;;

  Linux*)
    # SSH section
    eval $(keychain --eval --quiet --agents ssh id_rsa) 

    export XENVIRONMENT="${HOME}/.Xresources"
    export PATH="$HOME/bin:$PATH"
    ;;
esac

# set os independent environment settings
export VISUAL="vim"

# include alias definitions from .aliasrc
if [[ -r ~/.aliasrc ]]; then
   . ~/.aliasrc   
fi

# load highlighting helper function h
# source: https://github.com/paoloantinori/hhighlighter 
HIGHLIGHTHELPER="./dotfiles/sh/scripts/h.sh"
if [ -f $HIGHLIGHTHELPER ]; then
. $HIGHLIGHTHELPER
fi

# start tmux if not already running
if [ -z "$TMUX" ]
then
  tmux
fi
