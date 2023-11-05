return {
    'nvim-telescope/telescope.nvim',
    cond = not vim.g.vscode,
    tag = '0.1.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'natecraddock/telescope-zf-native.nvim',
            init = function()
                if vim.g.vscode then return end
                require("telescope").load_extension("zf-native")
            end
        }
    },
    init = function()
        if vim.g.vscode then return end
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
        vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fr', builtin.diagnostics, {})
    end
}
