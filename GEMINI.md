# 概要

このプロジェクトは個人的なneovimの設定です。
gitによりバージョンの管理を行い、設定変更の変遷をたどれるようにしています。
また、githubのプライベートリポジトリを使用することで複数のマシンで同じ設定を使用できるようにしています。

# ルール

- 設定はluaで行います。
- geminiへの指示やgeminiからの回答は日本語で行います。
- geminiは作業を実施したら作業完了後に @gemini_log.md へ作業内容を追記します。
- 新しいプラグインを追加する場合は `lua/plugins/` 配下に適切なカテゴリのディレクトリを作成（または既存のものを使用）し、設定ファイルを作成してください。

# ディレクトリ構造

- `init.lua`: エントリポイント。通常のNeovimとVSCode Neovimを切り替えます。
- `lua/`: 各種設定ファイル
    - `option.lua`: ネイティブオプションの設定
    - `keybind.lua`: キーバインドの設定
    - `color_setting.lua`: カラースキームの設定
    - `plugin_manage.lua`: lazy.nvimの初期化
    - `lsp.lua`: LSPの基本設定
    - `plugins/`: プラグインごとの個別設定（lazy.nvimによって自動ロードされます）
        - `core.lua`: 基礎的なプラグイン
        - `ui/`: 外観に関するプラグイン
        - `editor/`: 編集機能に関するプラグイン
        - `lsp/`: LSP/補完に関するプラグイン
        - `tools/`: その他ツール類
    - `my_vscode.lua`: VSCode Neovim用の設定

# 技術スタック

- **プラグインマネージャ**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **パッケージマネージャ**: [mason.nvim](https://github.com/williamboman/mason.nvim) (LSP, DAP, Linter, Formatterの管理)
- **補完**: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- **構文解析**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **ファジーファインダー**: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

# よく行う作業

- **プラグインの追加**: `lua/plugins/` 配下に `.lua` ファイルを作成し、lazy.nvimのスペックを返却するように記述します。
- **LSPの追加**: `lua/lsp.lua` の `servers` リストにサーバー名を追加し、必要に応じて `mason.nvim` でインストールします。

