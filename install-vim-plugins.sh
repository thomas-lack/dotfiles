#!/bin/bash

PLUGINLIST=(
    https://github.com/alvan/vim-closetag
    https://github.com/ctrlpvim/ctrlp.vim
    https://github.com/editorconfig/editorconfig-vim
    https://github.com/morhetz/gruvbox
    https://github.com/othree/html5.vim
    https://github.com/scrooloose/nerdtree
    https://github.com/kien/rainbow_parentheses.vim
    https://github.com/vim-syntastic/syntastic
    https://github.com/Quramy/tsuquyomi
    https://github.com/leafgarland/typescript-vim
    https://github.com/vim-airline/vim-airline
    https://github.com/vim-airline/vim-airline-themes
    https://github.com/qpkorr/vim-bufkill
    https://github.com/flazz/vim-colorschemes
    https://github.com/ryanoasis/vim-devicons
    https://github.com/tpope/vim-fugitive
    https://github.com/airblade/vim-gitgutter
    https://github.com/pangloss/vim-javascript
    https://github.com/heavenshell/vim-jsdoc
    https://github.com/tpope/vim-surround
    https://github.com/Valloric/YouCompleteMe
    https://github.com/scrooloose/nerdcommenter.git
    https://github.com/vim-IDE/MatchTagAlways
    https://github.com/Townk/vim-autoclose
    https://github.com/luochen1990/rainbow
  )
  
# create necessaryt clone https://github.com/scrooloose/nerdcommenter.git vim folders if not available
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

# add pathogen plugin manager
[ ! -f ~/.vim/autoload/pathogen.vim ] && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# clone or pull plugins
cd ~/.vim/bundle
for i in "${PLUGINLIST[@]}"
do
  git clone $i
done

