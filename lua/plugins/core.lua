return {

-- LSP installer
{
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
},

-- LSP config
{
  "neovim/nvim-lspconfig"
},

-- autocomplete
{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = {
        autocomplete = false, -- ←重要（勝手に出さない）
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = {
        { name = "nvim_lsp" },
      },
    })
  end,
},

-- file explorer
{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
        close_if_last_window = true,
        filesystem = {
            follow_current_file = {
                enabled = true
            }
        }
    })
  end
},

-- surround (括弧囲み)
{
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup()
  end
},

-- project manager
{
 "ahmedkhalf/project.nvim",
 config = function()
   require("project_nvim").setup({
     detection_methods = { "pattern" },

     patterns = {
       ".git",
       "pyproject.toml",
       "Cargo.toml",
       "package.json",
       ".nvim.lua",
     }
   })
 end
},

-- Run tasks
{
 "stevearc/overseer.nvim",
 config = function()
   require("overseer").setup()
 end
},

-- lazy git
{
 "kdheepak/lazygit.nvim",
 cmd = {
   "LazyGit"
 },
 dependencies = {
   "nvim-lua/plenary.nvim",
 },
},

-- Telescope
{
 "nvim-telescope/telescope.nvim",
 dependencies = {
   "nvim-lua/plenary.nvim"
 },
 config = function()
   require("telescope").setup({
     defaults = {
       layout_strategy = "horizontal",
       layout_config = {
         prompt_position = "top",
       },
       sorting_strategy = "ascending",
       file_ignore_patterns = {"node_modules", ".git/"}
     },
   })
 end
},

-- コメント
{
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()
  end
},

-- 自動括弧
{
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup()
  end
},

-- Git差分（軽量）
{
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
  end
},

-- tree sitter
{
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
},

-- color scheme
{
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
},
}
