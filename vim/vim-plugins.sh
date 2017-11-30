#!/bin/bash

# create necessary vim folders if not available
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

# add pathogen plugin manager
[ ! -f ~/.vim/autoload/pathogen.vim ] && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# clone or pull plugins
# TODO
