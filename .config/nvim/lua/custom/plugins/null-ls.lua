local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettierd.with {
    filetypes = { "html", "json", "markdown", "css", "scss", "javascript", "javascriptangular", "typescript", "typescriptangular", "svelte" },
  },
  b.formatting.fixjson,
  b.diagnostics.eslint_d.with {
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" }
  },
  b.formatting.elm_format,

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
