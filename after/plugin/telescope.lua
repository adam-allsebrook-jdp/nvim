local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fj', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})  -- function()
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {}) -- function()
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gfc', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})

require("telescope").load_extension("zf-native")
