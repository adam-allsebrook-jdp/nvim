return {
    { 'mbbill/undotree',       cond = not vim.g.vscode },
    { 'kdheepak/lazygit.nvim', cond = not vim.g.vscode },
    { 'github/copilot.vim',    cond = not vim.g.vscode },
    { 'tpope/vim-rails',       cond = not vim.g.vscode },
    { 'APZelos/blamer.nvim',   cond = not vim.g.vscode },
    { 'numToStr/Comment.nvim', config = true },
    {
        'ggandor/leap.nvim',
        dependencies = { 'tpope/vim-repeat' },
        init = function()
            require('leap').add_default_mappings()
        end
    },
    { 'windwp/nvim-autopairs',  config = true, },
    { 'windwp/nvim-ts-autotag', cond = not vim.g.vscode, config = true, },
    {
        'julian/vim-textobj-variable-segment',
        dependencies = { 'kana/vim-textobj-user' },
    },
    'tpope/vim-surround',
    { 'davidgranstrom/nvim-markdown-preview', cond = not vim.g.vscode, },
    {
        'j-morano/buffer_manager.nvim',
        cond = not vim.g.vscode,
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'christoomey/vim-tmux-navigator',       cond = not vim.g.vscode },
    'joerdav/templ.vim'
}
