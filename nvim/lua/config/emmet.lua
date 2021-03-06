local vim = vim

vim.g.user_emmet_install_global = 0
vim.g.user_emmet_leader_key = '<C-E>'
vim.api.nvim_command('autocmd FileType html,css EmmetInstall')
