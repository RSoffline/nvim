local function create_file_from_templ(target_file, template_file)
    -- 1. 共通テンプレートファイルのパスを指定
    -- vim.fn.stdpath("config") は標準で「~/AppData/Local/nvim」などを指します
    local template_path = vim.fn.stdpath("config") .. "/templates/" .. template_file

    -- すでにカレントディレクトリに .nvim.lua がある場合は上書き防止でそのまま開く
    if vim.fn.filereadable(target_file) == 1 then
      vim.api.nvim_echo({ { target_file .. "が既に存在するため、既存のファイルを開きます。", "WarningMsg" } }, false, {})
      vim.cmd("edit " .. target_file)
      return
    end

    -- 2. テンプレートファイルが存在するかチェック
    if vim.fn.filereadable(template_path) == 0 then
      vim.api.nvim_echo({ { "テンプレートファイルが見つかりません:\n" .. template_path, "ErrorMsg" } }, false, {})
      return
    end

    -- 3. テンプレートファイルを行ごとのリストとして読み込む
    local lines = vim.fn.readfile(template_path)

    -- 4. 新規ファイルを作成してバッファーを開く
    vim.cmd("edit " .. target_file)

    -- 5. 読み込んだ行をバッファーに流し込む
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

    -- 自動で保存を実行
    vim.cmd("write")
    
    vim.api.nvim_echo({ { "`.nvim.lua` をテンプレートファイルから作成しました。", "Normal" } }, false, {})
end

vim.api.nvim_create_user_command("TemplLocalConf", function()
    local target_file = ".nvim.lua"
    local template_file = ".nvim.lua.tmpl"
    create_file_from_templ(target_file, template_file)
end, {})
