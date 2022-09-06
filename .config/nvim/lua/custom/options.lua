local opt = vim.opt
local g = vim.g

-- backup
opt.backup = false
opt.writebackup = false

-- line numbers
opt.number = true
opt.relativenumber = true
opt.nrformats = 'alpha'

-- line breaks 
opt.breakindent = true
opt.showbreak = '@'
opt.wrap = true

-- folding
opt.foldmethod = 'syntax'
opt.foldlevel = 4
opt.foldlevelstart = 20

-- scrolling
opt.scrolljump = 8
opt.scrolloff = 3

-- color scheme / color support
opt.syntax = 'on'
opt.cursorline = true

-- snippets
g.luasnippets_path = '~/.config/snippets/'

-- lazygit
g.lazygit_floating_window_winblend = 0 -- transparency
g.lazygit_floating_window_scaling_factor = 0.9
g.lazygit_floating_window_corner_chars = {"╭", "╮", "╰", "╯"}
g.lazygit_floating_window_use_plenary = 0
g.lazygit_use_neovim_remote = 1
