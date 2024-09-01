# dotfiles

Personal preferences in various dotfiles

## Dependencies

The following software packages should be installed:

- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [tmux](https://github.com/tmux/tmux)
- [zsh](https://github.com/zsh-users/zsh)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [starship](https://starship.rs/)

### Usage

Clone the repo and link the subdirectories into config folders, e.g. `~/.config`.

## How to set up the NixOS configuration

```
sudo nixos-rebuild switch --flake path/to/dotfiles/nixos -L
```
