" Highlight yank
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 500})
augroup END

" Trim whitespace
function! TrimWhitespace()
  if &ft == "markdown" || &ft == "vimwiki"
    return
  endif
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  silent! 0;/^\%(\n*.\)\@!/,$d
  call winrestview(l:save)
endfunction

augroup trim_whitespace
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Line number
augroup linenumber
  autocmd!
  autocmd InsertEnter * setlocal norelativenumber
  autocmd InsertLeave * setlocal relativenumber
augroup END

" Indent/tabs
augroup filetype_options
  autocmd!
  autocmd Filetype vim setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype go setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype css,scss setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype javascript,typescript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype beancount setlocal ts=2 sts=2 sw=2 expandtab nofoldenable relativenumber

  autocmd BufNewFile,BufRead {Brewfile,Gemfile} set filetype=ruby
augroup END

" Terminal
augroup terminal_options
  autocmd!
  autocmd TermOpen * startinsert
  autocmd TermOpen * setlocal nonumber norelativenumber
  autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END

" Quickfix auto close
augroup quickfix_close
  autocmd!
  autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
augroup END

" LSP Diagnostics
augroup lsp_diagnostics
  autocmd!
  autocmd CursorHold * lua vim.diagnostic.open_float(nil,{focusable=false,scope="cursor"})
augroup END

" beancount format
function! BeanFormat()
  let l:save = winsaveview()
  exec ':%!bean-format'
  call winrestview(l:save)
endfunction

augroup bean_format
  autocmd!
  autocmd BufWritePre {*.bean,*.beancount} :call BeanFormat()
  autocmd BufWritePost {*.bean,*.beancount} :!bean-check <afile>
augroup END

" Lua format
function! LuaFormat()
  let l:save = winsaveview()
  if filereadable('.stylua.toml')
    exec ':silent !stylua <afile> --config-path ./.stylua.toml'
  else
    exec ':silent !stylua <afile>'
  endif
  edit!
  call winrestview(l:save)
endfunction

augroup lua_format
  autocmd!
  autocmd BufWritePost *.lua :call LuaFormat()
augroup END

augroup NvimGo
  autocmd!
  autocmd User NvimGoLintPopupPost wincmd p
augroup END

" Shell format
function! ShellFormat()
  let l:save = winsaveview()
  exec ':silent !shfmt -l -w <afile>'
  edit!
  call winrestview(l:save)
endfunction

augroup shell_format
  autocmd!
  autocmd BufWritePost *.sh :call ShellFormat()
augroup END
