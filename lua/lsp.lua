
vim.lsp.config("pyright", {})
vim.lsp.config("rust_analyzer", {})
vim.lsp.config("jsonls", {})
vim.lsp.config("yamlls", {})
vim.lsp.config("marksman", {})

vim.lsp.enable({
  "pyright",
  "rust_analyzer",
  "jsonls",
  "yamlls",
  "marksman"
})
