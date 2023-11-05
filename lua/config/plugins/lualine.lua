return {
    'nvim-lualine/lualine.nvim',
    cond = not vim.g.vscode,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        opt = true
    },
    init = function()
        if vim.g.vscode then return end
        require('lualine').setup {
            options = {
                theme = "catppuccin",
                component_separators = '|',
                section_separators = { left = '', right = '' },
            }
        }
    end
}
