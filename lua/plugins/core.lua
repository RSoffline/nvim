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
     },
   })
 end
},

}
