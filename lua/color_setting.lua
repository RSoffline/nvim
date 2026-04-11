-- 色設定
require("tokyonight").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
})

-- ターミナルに合わせて背景を透過する
vim.cmd.colorscheme("tokyonight")
vim.opt.termguicolors = true
vim.api.nvim_set_hl(0, 'Normal', {bg='NONE'})
vim.api.nvim_set_hl(0, 'NormalNC', {bg='NONE'})
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'SpecialKey', { fg = '#969696', bg = 'NONE' }) -- 空白文字の色
vim.api.nvim_set_hl(0, 'lineNr', { fg = '#9acaee', bg = 'NONE' }) -- 行番号の色
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'FoldColumn', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'VertSplit', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'NONE' })
vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NONE" })

