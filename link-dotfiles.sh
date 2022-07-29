#!/bin/bash

export DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Creating symbolic links"
ln -sf $DOTFILES/vim/vimrc ~/.vimrc
ln -s $DOTFILES/nvim ~/.config/nvim
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
ln -sf $DOTFILES/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
echo "Done"
