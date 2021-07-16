require('lspconfig').bashls.setup({})
require('lspconfig').cssls.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').jsonls.setup({})
require('lspconfig').pyright.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').solargraph.setup({})
require('lspconfig').sqlls.setup({
    cmd = { '/usr/local/bin/sql-language-server', 'up', '--method', 'stdio' },
})
require('lspconfig').tsserver.setup({})
require('lspconfig').vimls.setup({})
require('lspconfig').vuels.setup({})
require('lspconfig').yamlls.setup({})

local user = vim.fn.expand('$USER')
local sumneko_root_path = '/Users/' .. user .. '/dev/lua-language-server'
local sumneko_binary = sumneko_root_path .. '/bin/macOS/lua-language-server'

require('lspconfig').sumneko_lua.setup({
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
})
