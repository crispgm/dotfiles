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
lspconfig.tsserver.setup({
    on_attach = attach_navic,
})

-- minor langs
lspconfig.bashls.setup({})
lspconfig.cssls.setup({})
lspconfig.html.setup({})
lspconfig.jsonls.setup({})
lspconfig.pyright.setup({})
lspconfig.solargraph.setup({})
lspconfig.sqlls.setup({
    cmd = { '/usr/local/bin/sql-language-server', 'up', '--method', 'stdio' },
})
lspconfig.vimls.setup({})
lspconfig.vuels.setup({})
lspconfig.yamlls.setup({})

-- and lua
local home = vim.fn.expand('$HOME')
local sumneko_root_path = home .. '/dev/lua-language-server'
local sumneko_binary = sumneko_root_path .. '/bin/lua-language-server'

lspconfig.lua_ls.setup({
    cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        },
    },
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
})

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
