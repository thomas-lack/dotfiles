#!/bin/bash

export DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

PLUGINLIST=(
    https://github.com/tpope/vim-fugitive
    https://github.com/tpope/vim-surround
    https://github.com/tpope/vim-repeat
    https://github.com/scrooloose/nerdtree
    https://github.com/Quramy/tsuquyomi
    https://github.com/airblade/vim-gitgutter
    https://github.com/alvan/vim-closetag
    https://github.com/Raimondi/delimitMate
    https://github.com/editorconfig/editorconfig-vim
    https://github.com/NLKNguyen/papercolor-theme
    https://github.com/morhetz/gruvbox
    https://github.com/othree/html5.vim
    https://github.com/kien/rainbow_parentheses.vim
    https://github.com/easymotion/vim-easymotion
    https://github.com/w0rp/ale
    https://github.com/junegunn/fzf.vim
    https://github.com/itchyny/lightline.vim
    https://github.com/maximbaz/lightline-ale
    https://github.com/qpkorr/vim-bufkill
    https://github.com/flazz/vim-colorschemes
    https://github.com/ryanoasis/vim-devicons
    https://github.com/pangloss/vim-javascript
    https://github.com/heavenshell/vim-jsdoc
    https://github.com/Valloric/YouCompleteMe
    https://github.com/scrooloose/nerdcommenter.git
    https://github.com/vim-IDE/MatchTagAlways
    https://github.com/luochen1990/rainbow
    https://github.com/artur-shaik/vim-javacomplete2.git
    https://github.com/vim-scripts/SearchComplete
    https://github.com/SirVer/ultisnips
    https://github.com/gko/vim-coloresque
    https://github.com/prettier/vim-prettier
    https://github.com/HerringtonDarkholme/yats.vim
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

# link personal color scheme into colorscheme folder
ln -sf  $DOTFILES/vim/colors/lack.vim ~/.vim/bundle/vim-colorschemes/colors/lack.vim 
ln -sf  $DOTFILES/vim/colors/lack-solid.vim ~/.vim/bundle/vim-colorschemes/colors/lack-solid.vim 
