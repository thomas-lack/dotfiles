return {

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["phaazon/hop.nvim"] = {
    branch = "v2",
    config = function()
      require"hop".setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
       require "custom.plugins.null-ls"
    end,
  },

}