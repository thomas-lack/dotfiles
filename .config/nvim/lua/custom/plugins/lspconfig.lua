local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "angularls",
  "cssls",
  "html",
  "svelte",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["tsserver"].setup {
  on_attach = on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx', 'svelte' },
  importModuleSpecifierPreference = 'relative',
  init_options = {
    documentFormatting = true,
    preferences = {
      importModuleSpecifierPreference = 'relative',
    },
  },
  settings = {
      rootMarkers = {".git/"},
      languages = {
          prettier = {
            formatCommand = 'prettierd "${INPUT}"',
            formatStdin = true,
          }
      },
  },
}
-- efm setup example
-- lspconfig["efm"].setup {
--   on_attach = on_attach,
--   filetypes = { 'ts', 'js', 'scss', 'html', 'svelte' },
--   init_options = {documentFormatting = true},
--   settings = {
--       rootMarkers = {".git/"},
--       languages = {
--           prettier = {
--             formatCommand = 'prettierd "${INPUT}"',
--             formatStdin = true,
--           }
--       }
--   },
-- }
