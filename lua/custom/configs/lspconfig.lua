local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local navic = require "nvim-navic"

-- attach nvim-navic if language server supports it
local custom_on_attach = function(client, buffer)
  --[[ if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, buffer)
  end ]]
  on_attach(client, buffer)
end

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "rust_analyzer", "cmake", "jedi_language_server", "clangd" }

vim.diagnostic.config {
  virtual_text = false,
  -- update_in_insert = true,
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = custom_on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}

-- Custom configurations for servers
--[[ lspconfig["ccls"].setup {
  on_attach = custom_on_attach,
  capabilities = capabilities,
  init_options = {
    cache = {
      directory = "/tmp/ccls-cache",
    },
  },
} ]]
