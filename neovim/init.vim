set nocompatible              " be iMproved, required

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('neoclide/coc.nvim', {'merge':0, 'build': './install.sh nightly'})
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('mhinz/vim-startify')
  call dein#add('Yggdroot/indentLine')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-commentary')
  call dein#add('/usr/local/opt/fzf')
  call dein#add('junegunn/fzf.vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('fatih/vim-go')
  call dein#add('mattn/emmet-vim')
  call dein#add('ap/vim-css-color')
  call dein#add('christoomey/vim-system-copy')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set nobackup
set noswapfile
set expandtab
set ts=4
set sw=4
set t_Co=256
set background=dark
set number
set cursorline
set ruler
set noignorecase
set autoindent
set whichwrap=b,s,<,>,[,]
set backspace=2
set encoding=utf-8
set list
set hlsearch
set noincsearch
set completeopt-=preview
set guitablabel=%t
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
colorscheme nord

" Shortcuts
nnoremap <leader>r :source ~/.config/nvim/init.vim<cr>
noremap <leader># :let @/ = ""<cr><esc>
noremap <leader>] gt<cr>
noremap <leader>[ gT<cr>
noremap <leader>q :qa<cr>
noremap <leader>w :wqa<cr>
noremap <leader>s <c-w>w
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
inoremap <c-d> <esc>ddi
nnoremap <A-Up> :m .-2<CR>
nnoremap <A-Down> :m .+1<CR>

" Indent/tabs
augroup filetype_options
  autocmd Filetype vim  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype go   setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd Filetype css  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype yml  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

" Plugins
""" dein
noremap <leader>i :call dein#install()<cr>

""" FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'vsplit' }
let g:fzf_layout = { 'left': '~25%' }
nnoremap <leader>h :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>

""" vim-go
let g:go_metalinter_autosave = 1

""" Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-E>'
autocmd FileType html,css EmmetInstall

""" CoC
" Ref: <https://github.com/neoclide/coc.nvim#example-vim-configuration>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup coc
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
