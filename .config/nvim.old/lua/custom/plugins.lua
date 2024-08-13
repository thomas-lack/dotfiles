local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 60,
        },
        filters = {
          dotfiles = false,
          git_ignored = false,
        }
      })
    end,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    -- opts = {
    --   disable = false,
    -- },
  },

  {
    "rcarriga/nvim-notify",
    lazy = false,
  },

  {
    "phaazon/hop.nvim",
    lazy = false,
    branch = "v2",
    config = function()
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },

  {
    "famiu/bufdelete.nvim",
    lazy = false,
  },

  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
  },

  {
    "vuki656/package-info.nvim",
    lazy = false,
    config = function()
      require("package-info").setup {
        autostart = true,
        package_manager = "npm",
        hide_up_to_date = true,
        hide_unstable_versions = true,
      }
    end,
  },

  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },

  {
    "David-Kunz/jester",
    lazy = false,
    config = function()
      require("jester").setup {
        cmd = "ng test -- -t '$result' -- $file", -- run command
        dap = {
          console = "externalTerminal",
        },
      }
    end,
  },

  {
    "mfussenegger/nvim-jdtls",
  },

  {
    "nvimdev/lspsaga.nvim",
    lazy = false,
    config = function()
      require("lspsaga").setup {
        symbols_in_winbar = {
          enable = false
        }
      }
    end,
  },

  {
    "jackMort/ChatGPT.nvim",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("chatgpt").setup {}
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
