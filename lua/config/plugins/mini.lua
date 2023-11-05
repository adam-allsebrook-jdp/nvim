return {
    'echasnovski/mini.nvim',
    version = false,
    init = function()
        require('mini.ai').setup()
        if vim.g.vscode then return end
        require('mini.files').setup({
            windows = {
                preview = true,
                max_number = 3,
                width_preview = 75
            }
        })
        require('mini.splitjoin').setup()
    end
}
