return {
    'catppuccin/nvim',
    name = 'catppuccin',
    init = function()
        require('catppuccin').setup({
            integrations = {
                harpoon = true,
                telescope = true
            }
        })
        vim.cmd.colorscheme('catppuccin')
    end
}
