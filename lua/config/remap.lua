vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>fe", ':lua require("mini.files").open()<CR>')
vim.keymap.set("n", "<leader>fe", ":Oil<CR>")

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
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- replace hovered over word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- chmod +x file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- open lazygit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true })

-- open error float
vim.keymap.set("n", "<leader>er", ":lua vim.diagnostic.open_float()<CR>", { noremap = true })

-- format
vim.keymap.set("n", "<leader>fo", ":Format<CR>", { noremap = true })

-- undo tree
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>bm", ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>", { noremap = true })

vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true })

if (vim.g.vscode) then
    local vscode = require("vscode")
    vim.keymap.set("n", "<leader>fo", function() vscode.action("editor.action.formatDocument", {}) end, { noremap = true })
    vim.keymap.set("n", "K", function() vscode.action("editor.action.showHover", {}) end, { noremap = true })
    vim.keymap.set("n", "<leader>r", function() vscode.action("editor.action.referenceSearch.trigger", {}) end, { noremap = true })
    vim.keymap.set("n", "gd", function() vscode.action("editor.action.revealDefinition", {}) end, { noremap = true })
    vim.keymap.set("n", "<leader>n", function() vscode.action("workbench.action.files.newUntitledFile", {}) end, { noremap = true })
    vim.keymap.set("n", "<leader>fj", function() vscode.action("Format JSON", {}) end, { noremap = true })
    
    -- palantir shortcuts
    vim.keymap.set("n", "<leader>pp", function() vscode.action("palantir.transforms.previewFile") end, { noremap = true })
    vim.keymap.set("n", "<leader>pb", function() vscode.action("palantir.transforms.buildFile") end, { noremap = true })
    vim.keymap.set("n", "<leader>pd", function() vscode.action("palantir.transforms.debugFile") end, { noremap = true })
    
    -- git shortcuts
    vim.keymap.set("n", "<leader>gc", function() vscode.action("git.commitAll") end, { noremap = true })
    vim.keymap.set("n", "<leader>gs", function() vscode.action("git.sync") end, { noremap = true })
    
    -- copilot shortcuts
    vim.keymap.set("n", "<leader>ca", function() vscode.action("workbench.action.chat.openAgent") end, { noremap = true })
    vim.keymap.set("n", "<leader>cq", function() vscode.action("workbench.action.chat.openAsk") end, { noremap = true })
    vim.keymap.set("n", "<leader>ce", function() vscode.action("workbench.action.chat.openEdit") end, { noremap = true })

end
