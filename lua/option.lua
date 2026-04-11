local opt = vim.opt

-- 基本設定
opt.relativenumber = true
opt.number = true
vim.opt.clipboard = 'unnamedplus'
vim.g.mapleader = " "

-- 空白文字の可視化
vim.opt.list = true
vim.opt.listchars = {
    space = '·',        -- 半角スペースを中点 '·' で表示
    nbsp = '▪',         -- 全角スペースを '%' で表示
    tab = '» ',         -- タブを '» ' (矢印とスペース) で表示
    trail = '·',        -- 行末の不要な空白を '▪' で表示
    eol = '↲',          -- 各行の末尾に改行文字シンボル '↲' を表示
}

-- タブ設定
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

