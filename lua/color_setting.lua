-- 色設定
-- ターミナルに合わせて背景を透過する
vim.cmd.colorscheme("tokyonight")
vim.opt.termguicolors = true
vim.api.nvim_set_hl(0, 'Normal', {bg='NONE'})
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'SpecialKey', { fg = '#969696', bg = 'NONE' }) -- 空白文字の色
vim.api.nvim_set_hl(0, 'lineNr', { fg = '#9acaee', bg = 'NONE' }) -- 行番号の色

