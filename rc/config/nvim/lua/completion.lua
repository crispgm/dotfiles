local cmp = require('cmp')
local ls = require('luasnip')

require('luasnip.loaders.from_vscode').lazy_load({ paths = '~/dev/snippets' })

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-c>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        }),
        ['<C-j>'] = cmp.mapping(function(fallback)
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        -- { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        {
            name = 'beancount',
            option = { account = '~/dev/ledger/beancounts/accounts.bean' },
        },
        { name = 'path' },
        { name = 'calc' },
        { name = 'emoji' },
        { name = 'buffer' },
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = ({
                -- copilot = '[cop]',
                nvim_lsp = '[lsp]',
                nvim_lua = '[lua]',
                nvim_lsp_signature_help = '[sig]',
                bean_account = '[bean]',
                luasnip = '[snippet]',
                path = '[path]',
                calc = '[cal]',
                emoji = '[emo]',
                buffer = '[buf]',
            })[entry.source.name]
            return vim_item
        end,
    },
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'cmdline', max_item_count = 30 },
    },
})

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    },
})
