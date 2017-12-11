# set java home environment
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$JAVA_HOME/bin:$PATH

# add additional path informations
export PATH="$PATH:/Users/lack/bin:$HOME/.cargo/bin:/usr/local/bin:$HOME/bin:$HOME/.local/bin"

# include alias definitions from .aliasrc
if [[ -r ~/.aliasrc ]]; then
   . ~/.aliasrc   
fi

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
