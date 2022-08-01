local status_cmp_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not status_cmp_ok then
  return
end

local r = require('setup.utils.remaps')
local function generate_buf_keymapper(bufnr)
	return function(type, input, output, description, extraOptions)
		local options = { buffer = bufnr }
		if extraOptions ~= nil then
			options = vim.tbl_deep_extend('force', options, extraOptions)
		end
		r.noremap(type, input, output, description, options)
	end
end

-- map buttons after language server attaches to current buffer
local on_attach = function(client, bufnr)
	-- enable completion
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	local buf_set_keymap = generate_buf_keymapper(bufnr)
	local cap = client.server_capabilities
	
	-- mappings
	if cap.definitionProvider then
    buf_set_keymap('n', 'gd', vim.lsp.buf.definition, 'Preview definition')
  end
	if cap.implementationProvider then
    buf_set_keymap('n', 'gi', vim.lsp.buf.implementation, 'Go to implementation')
  end
	if cap.codeActionProvider then
    buf_set_keymap('n', '<leader>fa', vim.lsp.buf.code_action, 'Code actions')
    buf_set_keymap('v', '<leader>fa', vim.lsp.buf.range_code_action, 'Range code actions')
  end
  if cap.renameProvider then
    buf_set_keymap("n", "<leader>fr", vim.lsp.buf.rename, "Rename")
  end
  buf_set_keymap("n", "<leader>fe", vim.diagnostic.open_float, "Show line diagnostics")
  buf_set_keymap("n", "[e", vim.diagnostic.goto_prev, "Previous diagnostic")
  buf_set_keymap("n", "]e", vim.diagnostic.goto_next, "next diagnostic")
	buf_set_keymap("n", "<leader>c", function()
    vim.lsp.buf.format({ async = true })
  end, "Format")
end

local lsp_flags = {
	debounce_text_changes = 150,
}

require('lspconfig')['efm'].setup{
	-- settings = {},
	filetypes = { 'ts', 'js', 'scss', 'html', 'svelte' }

}
require('lspconfig')['tsserver'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
}
require('lspconfig')['svelte'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
}
require('lspconfig')['eslint'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
}

local signs = {
  { name = 'DiagnosticSignError', text = '' },
  { name = 'DiagnosticSignWarn', text = '' },
  { name = 'DiagnosticSignHint', text = '' },
  { name = 'DiagnosticSignInfo', text = '' },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
end

local config = {
  virtual_text = true,
  -- show signs
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focus = false,
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
}

vim.diagnostic.config(config)
