set nocompatible " be iMproved, actually not necessary for nvim

call plug#begin(stdpath('data') . '/plugged')
  " lib
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " UI/theme
  Plug 'crispgm/nord-vim', { 'branch': 'develop' }
  Plug 'mhinz/vim-startify'
  Plug 'ojroques/nvim-hardline'
  Plug 'crispgm/nvim-tabline'
  " view
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'dstein64/nvim-scrollview'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'RRethy/vim-illuminate'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'f-person/git-blame.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  " utility
  Plug 'kevinhwang91/nvim-bqf'
  Plug 'akinsho/nvim-toggleterm.lua'
  Plug 'psliwka/vim-smoothie'
  " editing
  Plug 'google/vim-searchindex'
  Plug 'tpope/vim-surround'
  Plug 'b3nj5m1n/kommentary'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
  Plug 'christoomey/vim-system-copy'
  Plug 'phaazon/hop.nvim'
  Plug 'monaqa/dial.nvim'
  Plug 'kana/vim-textobj-user'
  Plug 'haya14busa/vim-textobj-number'
  " language
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'crispgm/nvim-go'
  Plug 'nathangrigg/vim-beancount'
  Plug 'mattn/emmet-vim'
  Plug 'vimwiki/vimwiki'
call plug#end()

" systematic
filetype plugin indent on
syntax enable             " enable syntax
set encoding=utf-8        " encoding
set exrc                  " apply .vimrc in project path
set nobackup              " no .bak
set noswapfile            " no .swap
set undodir=~/.local/share/nvim/undo
set undofile              " use undo file
set updatetime=300        " time (in ms) to write to swap file
" buffer
set expandtab             " expend tab
set tabstop=4             " tab stop
set autoindent            " auto indent for new line
set shiftwidth=4          " auto indent shift width
set softtabstop=4         " soft tab stop size
" window
set number                " line number
set relativenumber        " relative number
" editing
set whichwrap=b,s,<,>,[,] " cursor is able to move from end of line to next line
set backspace=2           " backspace behaviors, is equivalent to indent,eol,start
set list                  " show tabs with listchars
set noignorecase          " search with no ignore case
set hlsearch              " highlight search
set noincsearch           " no incremental search
set completeopt=menuone,noselect
set hidden
set cursorline            " show cursor line
set ruler                 " show ruler line
set colorcolumn=120       " display a color column when line is longer than 120 chars
set shortmess+=c          " status line e.g. CTRL+G
set signcolumn=yes        " show sign column (column of the line number)
set mouse=nv              " enable mouse under normal and visual mode
set mousehide             " hide mouse when characters are typed
set showmatch             " show bracket match
set cmdheight=2           " height of :command line
set wildmenu              " wildmenu, auto complete for commands
set wildmode=longest,full
set splitright            " split to right
set splitbelow            " split to below

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

augroup linenumber
  autocmd!
  autocmd InsertEnter * setlocal norelativenumber
  autocmd InsertLeave * setlocal relativenumber
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
augroup END

""" lua configs
lua << EOB
-- mappings
require('config.mappings')

-- plugins
require('config.compe')
require('config.emmet')
require('config.gitblame')
require('config.gitsigns')
require('config.hardline')
require('config.lspconfig')
require('config.nord')
require('config.nvim_tree')
require('config.prettier')
require('config.toggleterm')
require('config.treesitter')
require('config.vimwiki')
require('config.vsnip')

-- just setup
require('colorizer').setup()
require('tabline').setup{}
EOB
