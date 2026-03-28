# Neovim Configuration (ryusei's dotfiles)

Windows環境（PowerShell）での利用をメインに想定した、LuaベースのNeovim設定ファイル群です。
VS CodeのNeovim拡張機能との共用も考慮された設計になっています。

## 概要
- **プラグインマネージャ**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **特徴**:
  - LSPによる高度なコード補完と定義ジャンプ
  - Telescopeによる高速なファイル/文字列検索
  - Neo-treeによるファイラー機能
  - LazyGitの統合による強力なGit操作
  - ターミナルの背景を透過させるデザイン設定
  - VS Code Neovim拡張利用時は軽量な専用設定 (`my_vscode.lua`) を読み込み

---

## 必須ソフトのインストール (Windows)

Neovim本体以外に、以下のツールをインストールしてください。パッケージマネージャ `winget` を使用するとスムーズです。

### 1. Neovim本体
```powershell
winget install Neovim.Neovim
```

### 2. Git (必須)
プラグインのダウンロードに使用します。
```powershell
winget install Git.Git
```

### 3. Ripgrep (必須)
`Telescope` での高速な文字列検索 (`live_grep`) に必要です。
```powershell
winget install BurntSushi.ripgrep.MSVC
```

### 4. LazyGit (推奨)
Neovim内から強力なGit操作を行うために必要です。
```powershell
winget install JesseDuffield.lazygit
```

### 5. Nerd Fonts (推奨)
アイコンを正しく表示するために、[Nerd Fonts](https://www.nerdfonts.com/)（例: `JetBrainsMono Nerd Font`）のインストールと、ターミナル（Windows Terminalなど）へのフォント設定を推奨します。

### 6. 各種言語ランタイム
LSP（言語サーバー）の動作に必要です。`mason.nvim` を通じて自動インストールされますが、基本のランタイム（Node.js, Python, Rust等）がPCにインストールされている必要があります。

---

## インストール方法 (Windows)

1. PowerShellを開き、Neovimの設定ディレクトリへ移動します。
   ```powershell
   cd $env:LOCALAPPDATA
   ```

2. このリポジトリを `nvim` フォルダとしてクローンします。
   ```powershell
   git clone <このリポジトリのURL> nvim
   ```

3. Neovimを起動します。
   ```powershell
   nvim
   ```
   初回起動時に `lazy.nvim` が自動的にインストールされ、プラグインの同期が始まります。

---

## キーバインド

`<leader>` キーは `Space` に設定されています。

### 一般・基本操作
| キー | 操作 |
| :--- | :--- |
| `<Esc>` | 検索ハイライトの解除 |

### ファイル・検索 (Telescope)
| キー | 操作 |
| :--- | :--- |
| `<leader>f` | ファイル検索 |
| `<leader>g` | 文字列検索 (live grep / ripgrepが必要) |
| `<leader>b` | バッファ一覧 |

### ファイラー・Git
| キー | 操作 |
| :--- | :--- |
| `<leader>e` | Neo-tree (ファイラー) の表示切替 |
| `<leader>lg` | LazyGit の起動 |
| `<leader>hp` | Git 差分のプレビュー (Hunk Preview) |
| `<leader>hb` | Git Blame (行単位の変更履歴) |

### LSP (コード解析)
| キー | 操作 |
| :--- | :--- |
| `gd` | 定義へジャンプ |
| `gr` | 参照箇所を一覧表示 |
| `K` | ホバー情報の表示 |
| `<leader>rn` | シンボル名のリネーム |
| `<C-Space>` | 補完の手動起動 |
| `<CR>` | 補完の確定 |

### 実行・その他
| キー | 操作 |
| :--- | :--- |
| `<leader>r` | Overseer によるタスク実行 |

---

## 拡張機能（プラグイン）の構成

主なプラグインと役割は以下の通りです。

- **LSP / 補完**:
  - `mason.nvim`: 言語サーバーの管理。
  - `nvim-lspconfig`: LSPの各サーバー設定。
  - `nvim-cmp`: 補完エンジン（手動起動 `autocomplete = false` に設定済み）。
- **UI / 外観**:
  - `neo-tree.nvim`: 高機能ファイラー。
  - `telescope.nvim`: ファジーファインダー。
  - `gitsigns.nvim`: エディタの端にGitの変更を表示。
- **編集支援**:
  - `nvim-surround`: 括弧や引用符での囲み操作。
  - `Comment.nvim`: コメントアウトの簡略化。
  - `nvim-autopairs`: 括弧の自動補完。
  - `project.nvim`: プロジェクト単位のディレクトリ管理。

---

## 拡張機能の追加方法

新しいプラグインを追加する場合は、`lua/plugins/core.lua` の `return { ... }` リストの中に設定を記述してください。

**例: `lspsaga.nvim` を追加する場合**
```lua
return {
  -- 既存のプラグイン...

  -- 新しいプラグインを追加
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    }
  },
}
```
保存後、Neovimを再起動するか、`:Lazy install` を実行することで反映されます。
