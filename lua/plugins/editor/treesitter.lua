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
            "typst",
            "html",
            "xml",
            "plantuml",
            "mermaid",
        }

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(args.match)
                if not lang then return end

                local parser = vim.treesitter.get_parser(args.buf, lang)
                if not parser then return end

                vim.treesitter.start(args.buf, lang)
            end,
        })
    end,
}
