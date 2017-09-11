#!/bin/bash

export DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Creating symbolic links"
ln -sf $DOTFILES/vim/vimrc ~/.vimrc
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
echo "Done"
