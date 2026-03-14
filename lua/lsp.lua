local lspconfig = require("lspconfig")

local servers = {
  "pyright",
  "rust_analyzer",
  "jsonls",
  "yamlls",
  "marksman"
}

for _, server in ipairs(servers) do
  lspconfig[server].setup({})
end
