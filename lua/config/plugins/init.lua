return {
    { 'numToStr/Comment.nvim', config = true },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {
            modes = {
                search = { enabled = true, highlight = { backdrop = true } },
                char = { autohide = true, char_actions = function() return { [";"] = "next", [","] = "prev" } end }
            }
        },
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            {
                "S",
                mode = { "n", "x", "o" },
                function() require("flash").treesitter() end,
                desc =
                "Flash Treesitter"
            },
            {
                "r",
                mode = "o",
                function() require("flash").remote() end,
                desc =
                "Remote Flash"
            },
            {
                "R",
                mode = { "o", "x" },
                function() require("flash").treesitter_search() end,
                desc =
                "Treesitter Search"
            },
            {
                "<c-s>",
                mode = { "c" },
                function() require("flash").toggle() end,
                desc =
                "Toggle Flash Search"
            },
        },
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