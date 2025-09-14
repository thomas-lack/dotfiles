{pkgs, ...}: {
  imports = [
    ./common.nix
    ./direnv.nix
    ./eza.nix
    ./fzf.nix
    ./gnupg.nix
    ./ncmpcpp.nix
    ./starship.nix
    ./tmux.nix
    ./zoxide.nix
    ./zsh.nix
  ];

  # add environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
    NIXPKGS_ALLOW_UNFREE = "1";
  };

  # add paths
  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  # add aliases
  home.shellAliases = {
    vim = "nvim";
    code = "LD_LIBRARY_PATH=$(nix-build '<nixpkgs>' -A stdenv.cc.cc.lib)/lib code";
    y = "yazi";
    n = "cd /etc/nixos";
    d = "cd $HOME/Dropbox/Dokumente";
    ".." = "cd ..";
    "..." = "cd ../..";
    l = "ls -a";
    ll = "ls -l";
    du = "du -h --max-depth=1 . | sort -h";
  };

  # add fonts
  home.packages = with pkgs; [
    nerd-fonts.fira-code
    cascadia-code
  ];
}
