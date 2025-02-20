-- nord
vim.g.nord_cursor_line_number_background = 1
vim.g.nord_uniform_status_lines = 1
vim.g.nord_bold_vertical_split_line = 1
vim.g.nord_uniform_diff_background = 1
vim.g.nord_underline = 1
vim.g.nord_italic = 1
vim.g.nord_italic_comments = 1

vim.api.nvim_command('colorscheme nord')

-- winbar
vim.cmd('highlight WinBar guibg=NONE')
