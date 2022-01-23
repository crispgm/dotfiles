vim.g.vsnip_snippet_dir = '/Users/david/dev/snippets'

-- Expand
vim.api.nvim_command(
    [[imap <expr> <C-j> vsnip#expandable() ? '<Plug>(vsnip-expand-or-jump)' : '<C-j>']]
)
vim.api.nvim_command(
    [[imap <expr> <C-l> vsnip#available() ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]
)
vim.api.nvim_command(
    [[smap <expr> <C-j> vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>']]
)
vim.api.nvim_command(
    [[smap <expr> <C-l> vsnip#available() ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]
)
