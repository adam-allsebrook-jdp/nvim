if vim.g.vscode then
    print("VSCode extension")
else
    print("Neovim")
    require("config")
end
