""" Goyo
nnoremap <leader>go <cmd>Goyo<CR>
let g:goyo_width = 120

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
endfunction
