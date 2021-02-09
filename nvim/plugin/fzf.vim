""" FZF
let g:fzf_action = {
  \ 'ctrl-q': 'wall | bdelete',
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'left': '~25%' }
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-p']
nnoremap <leader>fh :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
