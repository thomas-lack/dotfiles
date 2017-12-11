# include alias definitions from .aliasrc
if [[ -r ~/.aliasrc ]]; then
   . ~/.aliasrc   
fi

# include .profile with path extensions
if [[ -r ~/.profile ]]; then
    . ~/.profile
fi
