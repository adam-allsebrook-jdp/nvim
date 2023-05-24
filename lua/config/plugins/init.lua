return {
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'kdheepak/lazygit.nvim',
    'github/copilot.vim',
    'tpope/vim-rails',
    'christoomey/vim-tmux-navigator',
    'APZelos/blamer.nvim',
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

}
