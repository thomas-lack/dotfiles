{pkgs, ...}: {
  imports = [
    ./keymaps.nix
    ./style.nix
    ./telescope.nix
    ./treesitter.nix
    #./harpoon.nix
    #./folds.nix
    ./lsp.nix
    ./completion.nix
    ./format.nix
    #./lint.nix
    #./debug.nix
    ./lazygit.nix
    ./surround.nix
  ];

  config = {
    globals = {
      mapleader = " ";
    };

    opts = {
      number = true;
      #colorcolumn = "80";
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      wrap = false;
      #swapfile = false; #Undotree
      #backup = false; #Undotree
      undofile = true;
      hlsearch = true;
      incsearch = true;
      termguicolors = true;
      scrolloff = 8;
      signcolumn = "yes";
      updatetime = 50;
      foldlevelstart = 99;
      fileencoding = "utf-8";
      clipboard = "unnamedplus";
    };

    plugins = {
      gitsigns.enable = true;
      #oil.enable = true;
      #undotree.enable = true;
      nvim-tree.enable = true;
      web-devicons.enable = true;
    };

    extraPackages = with pkgs; [
      # Linters
      #commitlint
      eslint_d
      #golangci-lint
      #hadolint
      #html-tidy
      #luajitPackages.luacheck
      #markdownlint-cli
      #nodePackages.jsonlint
      #pylint
      #ruff
      #shellcheck
      #vale
      yamllint
      # Debuggers / misc deps
      #asm-lsp
      #bashdb
      #clang-tools
      #delve
      #fd
      #gdb
      #go
      #lldb_17
      #llvmPackages_17.bintools-unwrapped
      #marksman

      python3
      ripgrep
      rr
      tmux-sessionizer
      zig
    ];
  };
}
