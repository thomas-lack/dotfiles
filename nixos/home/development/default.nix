{ config, ... }:

{

  imports = [
    ./git.nix
    ./neovim.nix
		./java.nix
		./javascript.nix
  ];

}