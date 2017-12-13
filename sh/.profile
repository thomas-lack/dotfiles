# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# SSH section
eval $(keychain --eval --quiet --agents ssh id_rsa) 

# set environment variables
export XENVIRONMENT="${HOME}/.Xresources"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="$PATH:$JAVA_HOME:/Users/lack/bin:$HOME/.cargo/bin:/usr/local/bin:$HOME/bin:$HOME/.local/bin"

# include alias definitions from .aliasrc
if [[ -r ~/.aliasrc ]]; then
   . ~/.aliasrc   
fi

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
