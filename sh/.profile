# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Set os specific environment settings
case "$(uname -s)" in

  Darwin)
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
    export PATH="$PATH:$JAVA_HOME"
    export PATH="/usr/local/sbin:/usr/local/bin:$PATH:/Users/lack/bin:$HOME/.cargo/bin:$HOME/bin:$HOME/.local/bin"
    ;;

  Linux)
    # SSH section
    eval $(keychain --eval --quiet --agents ssh id_rsa) 

    export XENVIRONMENT="${HOME}/.Xresources"
    export PATH="$PATH:/home/thomas/bin"
    ;;
esac

# include alias definitions from .aliasrc
if [[ -r ~/.aliasrc ]]; then
   . ~/.aliasrc   
fi

# start tmux if not already running
if [ -z "$TMUX" ]
then
  tmux
fi
