local M = {}

M.nvimtree = {
  n = {
    ["<leader>2"] = { "<cmd> :NvimTreeToggle <CR>", "   toggle nvimtree" },
  },
}

M.tabufline = {
  n = {
    -- cycle through buffers
    ["gt"] = {
      function()
        require("core.utils").tabuflineNext()
      end,
      "  goto next buffer",
    },

    ["gT"] = {
      function()
        require("core.utils").tabuflinePrev()
      end,
      "  goto prev buffer",
    },
  },
}

M.telescope = {
  n = {
    -- find
    ["gf"] = { "<cmd> Telescope find_files <CR>", "  goto file" },
    ["<leader>f"] = { "<cmd> Telescope live_grep <CR>", "   find in files" },
    ["gB"] = { "<cmd> Telescope buffers <CR>", "  goto buffer" },
    ["gp"] = { "<cmd> Telescope projects <CR>", "  goto project" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },

    -- git
    ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "  git status" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "   pick hidden term" },

    -- theme switcher
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
  },
}

M.nvterm = {
  t = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "   toggle floating term",
    },
  },
  n = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "   toggle floating term",
    },
    ["tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "   toggle floating term",
    },
    ["th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "   new horizontal term",
    },
    ["tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "   new vertical term",
    },
  }
}

M.hop_nvim = {
  n = {
    ["<leader><leader>"] = {"<cmd> HopWord <CR>", "Jump to word"},
  }
}

M.lspconfig = {
  n = {
    ["<leader>c"] = {
      function()
        vim.lsp.buf.format()
      end,
      "   lsp formatting",
    },
  },
}

M.generic = {
  n = {
    [';'] = {"A;<ESC>", "End line with ';'"},
  }
}

M.searching = {
  n = {
    ["<CR>"] = {"<cmd> :noh<CR><CR>:<backspace>", "Delete search results"},
    ["n"] = {"nzz", "next and center"},
    ["N"] = {"Nzz", "previous and center"},
  }
}

M.scrolling = {
  n = {
    ["J"] = {"10jzz", "10 lines below"},
    ["K"] = {"10kzz", "10 lines up"},
  },
  v = {
    ["J"] = {"10jzz", "10 lines below"},
    ["K"] = {"10kzz", "10 lines up"},
  }
}

M.buffers = {
  n = {
    ["<leader>v"] = {"<C-w>v", "Create vertical buffer"},
    ["<leader>h"] = {"<C-w>s", "Create horizontal buffer"},
    ["<leader>q"] = {"w<bar>%bd<bar>e#<bar>bd#<CR>", "Close other buffers"},
    ["gn"] = {"<C-I>", "Go next in buffer history"},
    ["gb"] = {"<C-O>", "Go back in buffer history"},
  }
}

return M
