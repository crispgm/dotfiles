local cmp = require('cmp')

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
    }),
    sources = cmp.config.sources({
        -- { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lua' },
        { name = 'vsnip' },
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
            vim.fn['vsnip#anonymous'](args.body)
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
                vsnip = '[vsp]',
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
