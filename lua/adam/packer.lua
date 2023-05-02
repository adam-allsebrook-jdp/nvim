-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use("natecraddock/telescope-zf-native.nvim")

    -- use({ 'rose-pine/neovim', as = 'rose-pine' })
    -- use('shaunsingh/solarized.nvim')
    -- use('ellisonleao/gruvbox.nvim')
    -- use('navarasu/onedark.nvim')
    -- use('EdenEast/nightfox.nvim')
    use('catppuccin/nvim', { as = 'catppuccin' })
    -- use('folke/tokyonight.nvim')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    use('theprimeagen/harpoon')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            -- { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- use {
    --     "lukas-reineke/indent-blankline.nvim",
    --     config = function()
    --         require("indent_blankline").setup {
    --             show_current_context = true,
    --             show_current_context_start = true,
    --         }
    --     end
    -- }

    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {
                default_mappings = true
            }
        end
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use('kdheepak/lazygit.nvim')

    use('jose-elias-alvarez/null-ls.nvim')

    use('github/copilot.vim')

    -- use('itchyny/lightline.vim')

    -- rails
    use('tpope/vim-rails')


    --dap
    use('mfussenegger/nvim-dap')
    use('rcarriga/nvim-dap-ui')
    use('theHamsta/nvim-dap-virtual-text')
    use('nvim-telescope/telescope-dap.nvim')
    use({
        'suketa/nvim-dap-ruby',
        config = function()
            require('dap-ruby').setup()
        end
    })

    require('packer').use({
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    })
    use('christoomey/vim-tmux-navigator')
end)
