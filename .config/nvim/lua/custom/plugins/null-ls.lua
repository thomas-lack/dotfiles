local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettierd.with {
    filetypes = { "html", "json", "svelte", "markdown", "css", "javascript", "javascriptangular", "typescript", "typescriptangular" },
  },
  b.formatting.fixjson,
  b.diagnostics.eslint_d,

  -- Python
  b.diagnostics.flake8,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
