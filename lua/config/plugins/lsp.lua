-- https://github.com/VonHeikemen/lsp-zero.nvim
return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {
            -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    },
    init = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
            lsp.buffer_autoformat()
        end)

        require('lspconfig').lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })

        -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        lsp.ensure_installed({
            'bashls',
            'lua_ls',
            'tsserver',
            'rust_analyzer',
        })

        lsp.setup()

        local cmp = require('cmp')
        cmp.setup({
            mapping = {
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
            }
        })
    end
}
