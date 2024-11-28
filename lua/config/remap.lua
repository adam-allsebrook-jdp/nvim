vim.g.mapleader = " "

-- Move selected block up/ down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append next line to current line
vim.keymap.set("n", "J", "mzJ`z")
-- keep cursor in the middle when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete highlighted word into void and paste over it
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank into system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- replace hovered over word
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- chmod +x file
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true })

-- https://github.com/vscode-neovim/vscode-neovim?tab=readme-ov-file#%EF%B8%8F-api
local vscode = require('vscode-neovim')

local function vscodeMap(mode, keys, command)
    vim.keymap.set(mode, keys, function () vscode.call(command) end, { noremap = true })
end

local function vscodeMapN(keys, command)
    vscodeMap("n", keys, command)
end

local function vscodeMapI(keys, command)
    vscodeMap("i", keys, command)
end

vscodeMapN("<leader>ff", "workbench.action.quickOpen")
vscodeMapN("<leader>fs", "workbench.action.showAllSymbols")
vscodeMapN("<leader>o", "workbench.action.files.openFolder")
vscodeMapN("<leader>fo", "editor.action.formatDocument")
vscodeMapN("K", "editor.action.showHover")
vscodeMapN("<leader>r", "editor.action.referenceSearch.trigger")
vscodeMapN("<leader>n", "workbench.action.files.newUntitledFile")
vscodeMapN("<leader>se", "workbench.action.openSettingsJson")
vscodeMapN("<leader>ke", "workbench.action.openGlobalKeybindingsFile")
vscodeMapN("<leader>fj", "Format JSON")
vscodeMapN("<leader><tab>", "github.copilot.toggleCopilot")

vscodeMapI("<A-q>", "github.copilot.toggleCopilot")

