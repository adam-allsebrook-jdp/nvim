return {
    'catppuccin/nvim',
    name = 'catppuccin',
    cond = not vim.g.vscode,
    init = function()
        require('catppuccin').setup({
            color_overrides = {
                latte = {
                    -- why cant i change the cursor color :(
                    -- rosewater = "#d46e57"
                }
            },
            integrations = {
                harpoon = true,
                telescope = true
            },
        })
        vim.cmd.colorscheme('catppuccin')
    end
}
