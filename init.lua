local is_vscode = os.getenv("VSCNEOVIM") ~= nil

if is_vscode then
    require("my_vscode")
else
    require("option")
    require("plugin_manage")
    require("keybind")
    require("lsp")
end
