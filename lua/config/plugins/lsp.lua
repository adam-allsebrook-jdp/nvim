-- https://github.com/VonHeikemen/lsp-zero.nvim
return {
    'VonHeikemen/lsp-zero.nvim',
    cond = not vim.g.vscode,
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
        if vim.g.vscode then return end
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
            lsp.buffer_autoformat()
        end)

        local lsp_config = require('lspconfig')
        lsp_config.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })
        lsp_config.svelte.setup({
            --     filetypes = { 'typescript', 'javascript', 'svelte', 'html', 'css' },
            --     https://www.reddit.com/r/neovim/comments/1598ewp/neovim_svelte/
            on_attach = function(client)
                vim.api.nvim_create_autocmd("BufWritePost", {
                    pattern = { "*.js", "*.ts" },
                    callback = function(ctx)
                        client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
                    end,
                })
                vim.api.nvim_create_autocmd({ "BufWrite" }, {
                    pattern = { "+page.server.ts", "+page.ts", "+layout.server.ts", "+layout.ts" },
                    command = "LspRestart svelte",

                })
            end
        })

        -- lsp_config.templ.setup({
        --     filetypes = { 'templ' },
        -- })

        lsp_config.pylsp.setup {
            settings = {
                pylsp = {
                    plugins = {
                        -- pydocstyle = { enabled = true, convention = 'pep257' },
                        pylint = { enabled = true, executable = 'pylint' },
                    }
                }
            }
        }

        -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        lsp.ensure_installed({
            'bashls',
            'lua_ls',
            'tsserver',
            'rust_analyzer',
            'gopls',
            'svelte',
            'pylsp',
            'tailwindcss',
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
