return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "master",
  config = function()
    local ts = require("nvim-treesitter.configs")

    -- 基本セットアップ（新API）
    ts.setup({
      ensure_installed =  {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "rust",
        "markdown",
      },
      install_dir = vim.fn.stdpath("data") .. "/site",
      highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
      },
    })
  end,
}
