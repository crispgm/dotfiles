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
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set expandtab
set ts=4
set sw=4
set t_Co=256
set termguicolors
set nobackup
set number
set cursorline
set ruler
set ignorecase
set autoindent
set whichwrap=b,s,<,>,[,]
set backspace=2
colorscheme nord
" colorscheme zarniwoop

" Plugins
let g:deoplete#enable_at_startup = 1
map <C-n> :NERDTreeToggle<CR>

