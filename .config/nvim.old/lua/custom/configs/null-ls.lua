local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local linting = null_ls.builtins.diagnostics

local sources = {
  -- webdev stuff
  formatting.prettierd.with {
    filetypes = {
      "html",
      "json",
      "markdown",
      "css",
      "scss",
      "javascript",
      "javascriptangular",
      "typescript",
      "typescriptangular",
      "svelte",
    },
  },
  formatting.fixjson,
  linting.eslint_d.with {
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
  },
  formatting.elm_format,

  -- Lua
  formatting.stylua,

  -- cpp
  formatting.clang_format,

  -- Python
  linting.flake8,

  -- Shell
  formatting.shfmt,
  linting.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
