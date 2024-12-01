{pkgs, ...}: {
  extraPackages = with pkgs; [
    # Formatters
    alejandra
    #asmfmt
    #astyle
    black
    #cmake-format
    #gofumpt
    #golines
    #gotools
    isort
    nodePackages.prettier
    prettierd
    #rustfmt
    shfmt
    stylua
  ];

  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        html = ["prettierd" "prettier"];
        javascript = ["prettierd" "prettier"];
        json = ["prettier"];
        lua = ["stylua"];
        markdown = ["prettier"];
        nix = ["alejandra"];
        python = ["isort" "black"];
        sh = ["shfmt"];
        svelte = ["prettierd" "prettier"];
        typescript = ["prettierd" "prettier"];
      };
      format_on_save = {
        lspFallback = true;
        timeoutMs = 2000;
      };
    };
  };

  extraConfigLuaPre =
    /*
    lua
    */
    ''
      -- Formatting function for conform
      _G.format_with_conform = function()
      	local conform = require("conform")
      	conform.format({
      		lsp_fallback = true,
      		async = false,
      		timeout_ms = 2000,
      	})
      end
    '';
}
