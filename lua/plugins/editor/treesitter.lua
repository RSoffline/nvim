return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    branch = "main",
    opts = {
        install_dir = vim.fn.stdpath("data") .. "/site",
    },
    config = function(_, opts)
        local ts = require("nvim-treesitter")
        ts.setup(opts)
        ts.install {
            "python",
            "rust",
            "gleam",
            "haskell",
        }
    end,
}
