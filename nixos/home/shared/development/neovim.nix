{
  pkgs,
  inputs,
  ...
  #}: {
  #  programs.neovim = {
  #    enable = true;
  #    extraConfig = ''
  #      mapleader = " ";
  #      number = true;
  #      relativenumber = true;
  #      shiftwidth = 2;
  #      tabstop = 2;
  #      wrap = false;
  #      undofile = true;
  #      hlsearch = true;
  #      incsearch = true;
  #      termguicolors = true;
  #      scrolloff = 8;
  #      signcolumn = "yes";
  #      updatetime = 50;
  #      foldlevelstart = 99;
  #      fileencoding = "utf-8";
  #      clipboard = "unnamedplus";
  #    '';
  #    withRuby = false;
  #    withPython3 = false;
  #    withNodeJs = true;
  #  };
  #}
}: let
  neovimconfig = import ./nixvim;
  nvim = inputs.nixvim.legacyPackages.x86_64-linux.makeNixvimWithModule {
    inherit pkgs;
    module = neovimconfig;
  };
in {
  home.packages = [
    nvim
  ];
}
