filetype plugin indent on
syntax enable

set encoding=utf-8
set nobackup
set noswapfile
set undofile
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set shiftwidth=4
set number
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start
set ignorecase
set hlsearch
set noincsearch
set hidden
set cursorline
set ruler
set colorcolumn=120
set signcolumn=yes
set mouse=nv
set showmatch
set showtabline=2
set cmdheight=2
set wildmenu
set wildmode=longest,full
set splitright
set splitbelow
set shortmess+=c
set t_Co=256
set background=dark
set termguicolors

let mapleader="\\"
nnoremap <leader>q <cmd>q!<cr>
nnoremap <leader>Q <cmd>qa!<cr>
nnoremap <leader>w <cmd>wq!<cr>
nnoremap <leader>e <cmd>e!<cr>
nnoremap <leader>r <cmd>source ~/.vimrc<cr>
inoremap <c-a> <Esc>I
inoremap <c-e> <End>
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
nnoremap k gk
nnoremap j gj
nnoremap C c$
nnoremap D d$
nnoremap Y y$
nnoremap <leader>pp "0p
nnoremap <a-Up> <cmd>m .-2<cr>==
nnoremap <a-Down> <cmd>m .+1<cr>==
vnoremap <a-Up> :move '<-2<CR>gv=gv
vnoremap <a-Down> :move '>+1<CR>gv=gv
nnoremap <leader>ps :PlugInstall
nnoremap <leader>s <c-w>w
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <s-Tab> gT
nnoremap <Tab> gt
nnoremap <leader>t[ <cmd>tabmove -1<cr>
nnoremap <leader>t] <cmd>tabmove +1<cr>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 <cmd>tablast<cr>

call plug#begin()
Plug 'crispgm/nord-vim', { 'branch': 'develop' }
Plug 'mkitt/tabline.vim'
Plug 'google/vim-searchindex'
Plug 'Yggdroot/indentLine'
Plug 'RRethy/vim-illuminate'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'kana/vim-textobj-user'
Plug 'haya14busa/vim-textobj-number'
Plug 'AndrewRadev/splitjoin.vim'
call plug#end()

colorscheme nord
