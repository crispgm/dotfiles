set nocompatible              " be iMproved, required

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('deoplete-plugins/deoplete-go', {'build': 'make'})
  call dein#add('deoplete-plugins/deoplete-jedi')
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
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
set nobackup
set number
set cursorline
set ruler
set ignorecase
set autoindent
set whichwrap=b,s,<,>,[,]
set backspace=2
set encoding=utf-8
set list
set hlsearch
set noincsearch
set completeopt-=preview
set guitablabel=%t
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

" Indent/tabs
autocmd Filetype go setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

" Plugins
""" dein
noremap <leader>i :call dein#install()<cr>
""" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
""" FZF
let g:fzf_layout = { 'up': '~30%' }
nnoremap <leader>h :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>
""" NERDTree
map <C-n> :NERDTreeToggle<CR>
noremap <leader>n :NERDTreeFocus<CR>
noremap <leader>c :NERDTreeFind<CR>
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""" vim-go
let g:go_metalinter_autosave = 1
""" Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-E>'
autocmd FileType html,css EmmetInstall
