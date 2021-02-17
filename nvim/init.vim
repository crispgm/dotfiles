set nocompatible " be iMproved, required

call plug#begin(stdpath('data') . '/plugged')
  " lib
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " UI/theme
  Plug 'arcticicestudio/nord-vim'
  Plug 'mhinz/vim-startify'
  Plug 'ojroques/nvim-hardline'
  Plug 'crispgm/nvim-tabline'
  " view
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'RRethy/vim-illuminate'
  Plug 'itchyny/vim-gitbranch'
  Plug 'airblade/vim-gitgutter'
  Plug 'f-person/git-blame.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'liuchengxu/vista.vim'
  " utility
  Plug 'kevinhwang91/nvim-bqf'
  Plug 'akinsho/nvim-toggleterm.lua'
  " editing
  Plug 'google/vim-searchindex'
  Plug 'tpope/vim-surround'
  Plug 'b3nj5m1n/kommentary'
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
  Plug 'christoomey/vim-system-copy'
  " language
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'nathangrigg/vim-beancount'
  Plug 'mattn/emmet-vim'
call plug#end()

filetype plugin indent on
syntax enable

set exrc
set nobackup
set noswapfile
set expandtab
set ts=4
set sw=4
set number
set relativenumber
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
set completeopt=menu,menuone,noselect
set guitablabel=%t
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set mousehide
set showmatch
set undodir=~/.local/share/nvim/undodir
set undofile
set wildmenu
set wildmode=longest,full
if !has('gui_running')
  set t_Co=256
endif
set background=dark
if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 500})
augroup END

function! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction

augroup trim_whitespace
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Indent/tabs
augroup filetype_options
  autocmd!
  autocmd Filetype vim  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype go   setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd Filetype css  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype yml  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype beancount setlocal ts=2 sts=2 sw=2 expandtab nofoldenable relativenumber

  autocmd BufNewFile,BufRead {Brewfile,Gemfile} set filetype=ruby
augroup END

augroup terminal_options
  autocmd!
  autocmd TermOpen * startinsert
  autocmd TermOpen * setlocal nonumber norelativenumber
  autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END

augroup quickfix_close
  autocmd!
  autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
augroup END

""" lua configs
lua << EOB
-- mappings
require('config.mappings')

-- plugins
require('config.compe')
require('config.gitblame')
require('config.hardline')
require('config.lspconfig')
require('config.nord')
require('config.toggleterm')
require('config.treesitter')
require('config.vimgo')

-- just setup
require('colorizer').setup()
require('tabline').setup{}
EOB
