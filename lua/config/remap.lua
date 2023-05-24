vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ':Explore<CR>')

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
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
