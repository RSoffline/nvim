local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr }

  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "gr", vim.lsp.buf.references, opts)
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

local function setup(server, config)
  vim.lsp.config(server, vim.tbl_deep_extend("force", {
    capabilities = capabilities,
    on_attach = on_attach,
  }, config or {}))
end

-- 必要なものだけ
servers = {
    "pyright",
    "rust_analyzer",
    "jsonls",
    "yamlls",
    "marksman",
    "haskell-language-server",
}

for i = 1, #servers do
    setup(servers[i])
end
vim.lsp.enable(servers)
