local opt = vim.opt
  
-- clipboard
opt.clipboard = 'unnamedplus'

-- mouse
opt.mouse = 'a'

-- backup
opt.backup = false
opt.writebackup = false

-- command line
opt.cmdheight = 1

-- indent
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.smartindent = true

-- line numbers
opt.number = true
opt.relativenumber = true
opt.nrformats = 'alpha'

-- ruler settings
opt.ruler = true
opt.showcmd = true
opt.colorcolumn = '100'

-- line breaks 
opt.breakindent = true
opt.showbreak = '@'
opt.wrap = false

-- color scheme / color support
opt.syntax = 'on'
opt.termguicolors = true
opt.background = 'dark'
opt.cursorline = true

-- folding
opt.foldmethod = 'syntax'
opt.foldlevel = 4
opt.foldlevelstart = 20

-- buffers
opt.hidden = true
opt.autoread = true

-- searching
opt.hlsearch = true
opt.ignorecase = true

-- scrolling
opt.scrolljump = 8
opt.scrolloff = 3

-- hide fill chars '~'
opt.fillchars = { eob = ' ' }
