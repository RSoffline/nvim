-- 色設定
vim.cmd.colorscheme("wisteria")

-- ターミナルに合わせて背景を透過する
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- ===== 基本透過 =====
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })

-- ===== ガター =====
vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "NONE", fg = "#7aa2f7" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "NONE", fg = "#ff9e64" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })

-- ===== ウィンドウ / 分割 =====
vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", fg = "#3b4261" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", fg = "#3b4261" })

-- ===== UI =====
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3b4261" })

-- ===== カーソル行 =====
-- vim.opt.cursorline = trueの場合のみ有効
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE", fg = "#77aa77", bold = true })

-- ===== ステータスライン =====
vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", fg = "#c0caf5" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", fg = "#565f89" })

-- ===== タブライン =====
vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NONE" })

-- ===== visual mode =====
-- vim.api.nvim_set_hl(0, "Visual", { bg = "#2e3c64", })

-- ===== その他 =====
vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#969696", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {})
