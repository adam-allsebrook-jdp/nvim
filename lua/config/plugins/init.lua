return {
    'mbbill/undotree',
    'kdheepak/lazygit.nvim',
    'github/copilot.vim',
    'tpope/vim-rails',
    'APZelos/blamer.nvim',
    { 'numToStr/Comment.nvim',  config = true },
    {
        'ggandor/leap.nvim',
        dependencies = { 'tpope/vim-repeat' },
        init = function()
            require('leap').add_default_mappings()
        end
    },
    { 'windwp/nvim-autopairs',  config = true, },
    { 'windwp/nvim-ts-autotag', config = true, },
    {
        'julian/vim-textobj-variable-segment',
        dependencies = { 'kana/vim-textobj-user' },
    },
    'tpope/vim-surround',
    {
        'davidgranstrom/nvim-markdown-preview',
    },
    {
        'j-morano/buffer_manager.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    'christoomey/vim-tmux-navigator',
}
