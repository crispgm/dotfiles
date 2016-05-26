set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'fatih/vim-go'

filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


" general settings
set expandtab
set ts=4
set sw=4
set t_Co=256
set cursorline
set nohlsearch
colorscheme zarniwoop
set number
set ruler
set nobackup
set encoding=utf-8
set fenc=utf-8
set autoindent
syntax on
set whichwrap=b,s,<,>,[,] 
set mouse-=a

" syntastic settings
let g:syntastic_php_check_on_open = 1
let g:syntastic_php_checkers = ['php','phpcs']

" NERD_Tree settings
"autocmd VimEnter * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let g:NERDTreeWinPos = 'right'
let g:NERDTreeMinimalUI = 1

