local M = {}

M.disabled = {
  n = {
    -- telescope
    ["<leader>gt"] = "",
    ["<leader>cm"] = "",
    ["<leader>ff"] = "",
    -- nvimtree
    ["<leader>e"] = "",
    ["<C-n>"] = "",
    -- lspconfig
    ["<leader>ca"] = "",
    ["<leader>ra"] = "",
    ["gd"] = "",
    -- blankline
    ["<leader>cc"] = "",
    -- line numbers
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
  },
}

M.nvimtree = {
  n = {
    ["<leader>1"] = { "<cmd> :NvimTreeFocus <CR>", " focus nvimtree" },
    ["<leader>2"] = { "<cmd> :NvimTreeToggle <CR>", " toggle nvimtree" },
  },
}

M.tabufline = {
  n = {
    -- cycle through buffers
    ["gt"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      " goto next buffer",
    },
    ["gT"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      " goto prev buffer",
    },
  },
}

M.telescope = {
  n = {
    -- find
    ["gf"] = { "<cmd> Telescope find_files hidden=true <CR>", " goto file" },
    ["gB"] = { "<cmd> Telescope buffers <CR>", " goto buffer" },
    ["gp"] = { "<cmd> Telescope projects <CR>", " goto project" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep hidden=true <CR>", " find word" },
    ["<leader>fu"] = { "<cmd> lua vim.lsp.buf.references() <CR>", " find usages" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", " find help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", " find old files" },
    ["<leader>sk"] = { "<cmd> Telescope keymaps <CR>", " show keys" },

    -- git
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", " git commits" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", " git status" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", " pick hidden term" },

    -- theme switcher
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", " nvchad themes" },
  },
}

M.nvterm = {
  t = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      " toggle floating term",
    },
  },
  n = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      " toggle floating term",
    },
    ["tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      " toggle floating term",
    },
    ["th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      " new horizontal term",
    },
    ["tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      " new vertical term",
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
      " lsp formatting",
    },
    ["<leader>fe"] = {
      function()
        vim.diagnostic.open_float()
      end,
      " floating error",
    },
    ["<leader>e"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      " goto next error",
    },
    ["<leader>E"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      " goto previous error",
    },
  },
}

M.gitsigns = {
  n = {
    ["<leader>gb"] = {"<cmd> Gitsigns blame_line <CR>", " git blame"},
    ["<leader>gh"] = {"<cmd> Gitsigns preview_hunk <CR>", " git hunk preview"},
    ["<leader>gp"] = {"<cmd> Gitsigns prev_hunk <CR>", " git previous hunk"},
    ["<leader>gn"] = {"<cmd> Gitsigns next_hunk <CR>", " git next hunk"}
  }
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", " LazyGit" },
    ["<leader>gf"] = { "<cmd> LazyGitFilterCurrentFile <CR>", " LazyGit current File" },
  }
}

M.jester = {
  n = {
    ["<leader>ta"] = { "<cmd> lua require\"jester\".run_file({cmd=\"bun run test\"}) <CR>", " test all" },
    ["<leader>tf"] = { "<cmd> lua require\"jester\".run_file({cmd=\"bun run test -- $file\"}) <CR>", " test file" },
    ["<leader>tn"] = { "<cmd> lua require\"jester\".run() <CR>", " test nearest" },
    ["<leader>la"] = { "<cmd> lua require\"jester\".run_file({cmd=\"bun run lint\"}) <CR>", " lint all" },
  }
}

M.package_info = {
  n = {
    ["<leader>tp"] = { "<cmd> lua require\"package-info\".show() <CR>", " toggle package info" },
    ["<leader>dp"] = { "<cmd> lua require\"package-info\".delete() <CR>", " delete package" },
    ["<leader>ip"] = { "<cmd> lua require\"package-info\".install() <CR>", " install package" },
    ["<leader>up"] = { "<cmd> lua require\"package-info\".change_version() <CR>", " update package version" },
  }
}

M.lspsaga = {
  n = {
    ["<leader>ff"] = { "<cmd> Lspsaga lsp_finder <CR>", " lsp finder" },
    ["<leader>a"] = { "<cmd> Lspsaga code_action <CR>", " lsp code_action" },
    ["<leader>r"] = { "<cmd> Lspsaga rename <CR>", " lsp rename" },
    ["gd"] = { "<cmd> Lspsaga peek_definition <CR>", " goto definition" },
    ["<leader>3"] = { "<cmd> Lspsaga LSoutlineToggle <CR>", " lsp rename" },
  }
}

M.generic = {
  n = {
    [';'] = {"A;<ESC>", "End line with ';'"},
    ["<leader>tl"] = { "<cmd> set nu! <CR>", "toggle line number" },
    ["<leader>tr"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
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
    ["<leader>q"] = {"<cmd> %bdelete <bar> edit# <bar> normal`\" <CR>", "Close other buffers"},
    ["<leader>x"] = {"<cmd> Bdelete <CR>", "Close current buffer"},
    ["gn"] = {"<C-I>", "Go next in buffer history"},
    ["gb"] = {"<C-O>", "Go back in buffer history"},
  }
}

return M
