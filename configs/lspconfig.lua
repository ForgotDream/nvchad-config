local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

capabilities.offsetEncoding = { "utf-16" }

local lspconfig = require "lspconfig"

vim.diagnostic.config {
  update_in_insert = true,
}
-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "rust_analyzer", "pyright", "typst_lsp", "hls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["clangd"].setup {
  cmd = {
    "/opt/clangd/bin/clangd",
    "--header-insertion=never",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--fallback-style=Google",
    "--j=64",
  },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig["typst_lsp"].setup {
  filetypes = {
    "typ",
    "typst",
  },
  on_attach = on_attach,
  capabilities = capabilities,
}

--
-- lspconfig.pyright.setup { blabla}
