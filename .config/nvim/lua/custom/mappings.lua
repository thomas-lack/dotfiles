local M = {}

M.nvimtree = {
  n = {
    ["<leader>1"] = { "<cmd> :NvimTreeFocus <CR>", "   toggle nvimtree" },
    ["<leader>2"] = { "<cmd> :NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<leader>cf"] = { "<cmd> lua require('nvim-tree.api').fs.create() <CR>", "   create file" },
    ["<leader>df"] = { "<cmd> lua require('nvim-tree.api').fs.remove() <CR>", "   delete file" },
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
    ["gf"] = { "<cmd> Telescope find_files hidden=true <CR>", "  goto file" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep hidden=true <CR>", "   find word" },
    ["gB"] = { "<cmd> Telescope buffers <CR>", "  goto buffer" },
    ["gp"] = { "<cmd> Telescope projects <CR>", "  goto project" },
    ["<leader>fu"] = { "<cmd> lua vim.lsp.buf.references() <CR>", "   find usages" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },

    -- git
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "  git commits" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "  git status" },
    ["<leader>gt"] = nil,


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
    ["<leader>fe"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "   floating error",
    },
    ["<leader>e"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "   goto next error",
    },
    ["<leader>E"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "   goto previous error",
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
