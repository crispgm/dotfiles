""" Vista
nnoremap <leader>va :Vista<CR>
let g:vista_sidebar_width = 60
let g:vista_echo_cursor = 0
let g:vista_default_executive = 'nvim_lsp'
let g:vista_icon_indent = ["* ", "-> "]
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "f",
\   "variable": "v",
\   "constant": "c",
\   "method": "m",
\  }
