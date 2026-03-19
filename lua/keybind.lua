local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-----------------------------
-- Telescope（主役）
-----------------------------
local tb = require("telescope.builtin")

map("n", "<leader>f", tb.find_files, opts)
map("n", "<leader>g", tb.live_grep, opts)
map("n", "<leader>b", tb.buffers, opts)

-----------------------------
-- Neo-tree（補助）
-----------------------------
map("n", "<leader>e", "<cmd>Neotree toggle float<CR>", opts)

-----------------------------
-- Git
-----------------------------
map("n", "<leader>lg", "<cmd>LazyGit<CR>", opts)
map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>hb", "<cmd>Gitsigns blame_line<CR>", opts)

-----------------------------
-- 実行
-----------------------------
map("n", "<leader>r", "<cmd>OverseerRun<CR>", opts)

-----------------------------
-- ノイズ除去
-----------------------------
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)
