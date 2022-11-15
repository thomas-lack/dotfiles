return {

  ["goolord/alpha-nvim"] = {
    disable = false,
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

  ['folke/which-key.nvim'] = {
    disable = false,
  },

  ["phaazon/hop.nvim"] = {
    branch = "v2",
    config = function()
      require"hop".setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
  },

  ["famiu/bufdelete.nvim"] = {},

  ["kylechui/nvim-surround"] = {
    config = function()
      require"nvim-surround".setup {}
    end,
  },

  ["kdheepak/lazygit.nvim"] = {
    after = "plenary.nvim",
    setup = function()
      require("core.lazy_load").on_file_open "lazygit.nvim"
    end,
  },

  ["vuki656/package-info.nvim"] = {
    config = function()
      require"package-info".setup {
        autostart = true,
        package_manager = 'npm',
        hide_up_to_date = true,
        hide_unstable_versions = true,
      }
    end,
  },

  ["MunifTanjim/nui.nvim"] = {},

  ["David-Kunz/jester"] = {
    config = function()
      require"jester".setup {
        cmd = "ng test -- -t '$result' -- $file", -- run command
        dap = {
          console = "externalTerminal"
        }
      }
    end,
  },

  ["mfussenegger/nvim-jdtls"] = {},

  ["glepnir/lspsaga.nvim"] = {
    branch = "main",
    config = function()
      local saga = require("lspsaga")
      saga.init_lsp_saga()
    end,
  }
}
