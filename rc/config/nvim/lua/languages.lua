vim.lsp.enable({
    'bashls',
    'beancount',
    'cssls',
    'gopls',
    'html',
    'jsonls',
    'lua_ls',
    'pyright',
    'ruby_lsp',
    'rust_analyzer',
    'sqlls',
    'ts_ls',
    'vimls',
    'vue_ls',
    'yamlls',
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
