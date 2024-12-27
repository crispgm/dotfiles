local lspconfig = require('lspconfig')
-- winbar setup
local navic = require('nvim-navic')
local attach_navic = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

-- major langs
lspconfig.gopls.setup({
    on_attach = attach_navic,
})
lspconfig.rust_analyzer.setup({
    on_attach = attach_navic,
})
lspconfig.ts_ls.setup({
    on_attach = attach_navic,
})

-- minor langs
lspconfig.bashls.setup({})
lspconfig.beancount.setup({})
lspconfig.cssls.setup({})
lspconfig.html.setup({})
lspconfig.jsonls.setup({})
lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.ruby_lsp.setup({})
lspconfig.sqlls.setup({})
lspconfig.vimls.setup({})
lspconfig.vuels.setup({})
lspconfig.yamlls.setup({})

-- html
-- > emmet
vim.g.user_emmet_install_global = 0
vim.g.user_emmet_leader_key = '<c-y>'
vim.api.nvim_command('autocmd FileType html,css EmmetInstall')
-- > prettier
vim.g['prettier#autoformat'] = 1
vim.g['prettier#autoformat_require_pragma'] = 0
vim.g['prettier#exec_cmd_path'] = vim.fn.exepath('prettier')

-- rust
vim.g.rustfmt_autosave = 1
