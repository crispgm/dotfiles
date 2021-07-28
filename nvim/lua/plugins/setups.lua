-- just setup
require('colorizer').setup()
require('tabline').setup({})

require('pears').setup(function(conf)
    conf.remove_pair_on_outer_backspace(false)
    conf.expand_on_enter(false)
    conf.preset('tag_matching')
end)

require('range-highlight').setup({
    highlight = 'Visual',
})

require('go').setup({
    linter = 'golint',
    test_popup_width = 120,
})

require('lsp_signature').setup({
    bind = true,
    handler_opts = {
        border = 'single',
    },
})
