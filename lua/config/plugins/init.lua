return {
    { 'numToStr/Comment.nvim', config = true },
    {
        'ggandor/leap.nvim',
        dependencies = { 'tpope/vim-repeat' },
        init = function()
            require('leap').add_default_mappings()
        end
    },
    {
        'julian/vim-textobj-variable-segment',
        dependencies = { 'kana/vim-textobj-user' },
    },
    'tpope/vim-surround',
    {
        'echasnovski/mini.nvim',
        version = false,
        init = function()
            require('mini.ai').setup({
                custom_textobjects = {
                    -- for html classes (including hyphen)
                    c = { { '%s()[%w-:!]+()', '[\"\']()()[%w-:!]+()%s?()' } },
                }
            })
            require('mini.splitjoin').setup()
        end
    }
}