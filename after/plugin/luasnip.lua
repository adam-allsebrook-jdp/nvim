-- if vim.g.snippets ~= 'luasnip' then
--     return
-- end

local ls = require('luasnip')
local types = require('luasnip.util.types')

ls.config.set_config({
    history = true,
    updateevents = 'TextChanged,TextChangedI',
    enable_autosnippets = true,
})


vim.keymap.set({ "i", "s" }, "<C-s>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<s-Tab>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-;>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })

vim.keymap.set({ "n" }, "<leader><leader>l", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<cr>")

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/snippets" })
