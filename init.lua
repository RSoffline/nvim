local is_vscode = os.getenv("VSCNEOVIM") ~= nil

if is_vscode then
    require("my_vscode")
else
    require("option")
    require("term")
    require("plugin_manage")
    require("color_setting")
    require("keybind")
    require("lsp")
    require("template")
end
