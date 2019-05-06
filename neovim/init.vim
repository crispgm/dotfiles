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
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('fatih/vim-go')
  call dein#add('mattn/emmet-vim')
  call dein#add('ap/vim-css-color')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

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
set completeopt-=preview
colorscheme nord

" Plugins
let g:deoplete#enable_at_startup = 1
map <C-n> :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-E>'
autocmd FileType html,css EmmetInstall
