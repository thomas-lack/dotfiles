local opt = vim.opt

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
