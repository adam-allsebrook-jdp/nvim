return {
    'echasnovski/mini.nvim',
    version = false,
    init = function()
        require('mini.ai').setup()
        require('mini.files').setup({
            windows = {
                preview = true,
                max_number = 3,
                width_preview = 75
            }
        })
    end
}
