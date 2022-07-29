local g = vim.g

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- define leader key
g.mapleader = ' '
map('n', '<space>', '<nop>')

-- buffers
map('n', '<leader>v', '<C-w>v')
map('n', '<leader>h', '<C-w>s')
map('n', '<leader>bn', ':bnext<CR>')
map('n', '<leader>bp', ':bprevious<CR>')

-- split window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<Tab>', '<C-w><C-w>')
map('n', '<S-Tab>', '<C-w><C-p>')

-- searching
map('n', '<CR>', ':noh<CR><CR>:<backspace>') -- press enter to get rid of search results
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- scrolling
map('n', 'J', '10jzz')
map('n', 'K', '10kzz')

-- generic key mappings
map('n', ';', 'A;<ESC>')

-- nvim-tree
map('n', '<leader>2', ':NvimTreeToggle<CR>', opts)

-- bufferline
map('n', 'gt', ':BufferLineCycleNext<CR>')
map('n', 'gT', ':BufferLineCyclePrev<CR>')
