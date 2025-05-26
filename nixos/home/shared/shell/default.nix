{pkgs, ...}: {
  imports = [
    ./common.nix
    ./zsh.nix
    ./starship.nix
    ./fzf.nix
    ./tmux.nix
    ./eza.nix
    ./ncmpcpp.nix
    ./zoxide.nix
    ./gnupg.nix
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
