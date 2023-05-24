return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'natecraddock/telescope-zf-native.nvim',
            init = function()
                require("telescope").load_extension("zf-native")
            end
        }
    },
    init = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
}
