return {
    'echasnovski/mini.nvim',
    version = false,
    init = function()
        require('mini.ai').setup({
            custom_textobjects = {
                -- for html classes (including hyphen)
                c = { { '%s()[%w:!#$%&()*+,-./[\\%]^_`{|}~]+()', '[\"\']()()[%w:!#$%&()*+,-./[\\%]^_`{|}~]+()%s?()' } },
            }
        })
        require('mini.splitjoin').setup()
        if vim.g.vscode then return end
    end
}
