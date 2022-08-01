local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use { 'wbthomason/packer.nvim' } -- Have packer manage itself
  use { 'nvim-lua/plenary.nvim' } -- Useful lua functions used by lots of plugins
  use { 'windwp/nvim-autopairs' }
--  use { 'numToStr/Comment.nvim', commit = '2c26a00f32b190390b664e56e32fd5347613b9e2' }
--  use { 'JoosepAlviste/nvim-ts-context-commentstring', commit = '88343753dbe81c227a1c1fd2c8d764afb8d36269' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
--  use { 'moll/vim-bbye', commit = '25ef93ac5a87526111f43e5110675032dbcacf56' }
  use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }
--  use { 'akinsho/toggleterm.nvim', commit = 'aaeed9e02167c5e8f00f25156895a6fd95403af8' }
--  use { 'ahmedkhalf/project.nvim', commit = '541115e762764bc44d7d3bf501b6e367842d3d4f' }
--  use { 'lewis6991/impatient.nvim', commit = '969f2c5c90457612c09cf2a13fee1adaa986d350' }
--  use { 'lukas-reineke/indent-blankline.nvim', commit = '6177a59552e35dfb69e1493fd68194e673dc3ee2' }
--  use { 'goolord/alpha-nvim', commit = 'ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94' }
--
  -- Colorschemes
	use { 'ellisonleao/gruvbox.nvim' }
  use { 'folke/tokyonight.nvim' }
  use { 'lunarvim/darkplus.nvim' }
  use { 'arcticicestudio/nord-vim' }
--
--  -- cmp plugins
  use { 'hrsh7th/nvim-cmp' } -- The completion plugin
  use { 'hrsh7th/cmp-buffer' } -- buffer completions
  use { 'hrsh7th/cmp-path' } -- path completions
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }
--
--  -- snippets
  use { 'L3MON4D3/LuaSnip' } --snippet engine
--  use { 'rafamadriz/friendly-snippets', commit = 'd27a83a363e61009278b6598703a763ce9c8e617' } -- a bunch of snippets to use
--
--  -- LSP
  use { 'neovim/nvim-lspconfig' } -- enable LSP
  use { 'williamboman/mason.nvim' } -- simple to use language server installer
  use { 'williamboman/mason-lspconfig.nvim' } -- bride mason.nvim with lspconfig plugin
  use { 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' } -- for formatters and linters
--  use { 'RRethy/vim-illuminate', commit = 'c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5' }
--
--  -- Telescope
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }
--
--  -- Git
--  use { 'lewis6991/gitsigns.nvim', commit = 'c18e016864c92ecf9775abea1baaa161c28082c3' }
--
--  -- DAP
--  use { 'mfussenegger/nvim-dap', commit = '014ebd53612cfd42ac8c131e6cec7c194572f21d' }
--  use { 'rcarriga/nvim-dap-ui', commit = 'd76d6594374fb54abf2d94d6a320f3fd6e9bb2f7' }
--  use { 'ravenxrz/DAPInstall.nvim', commit = '8798b4c36d33723e7bba6ed6e2c202f84bb300de' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
