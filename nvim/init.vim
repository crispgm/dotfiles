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
  " editing
  Plug 'google/vim-searchindex'
  Plug 'tpope/vim-surround'
  Plug 'b3nj5m1n/kommentary'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
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

" systematic
filetype plugin indent on
syntax enable             " enable syntax

" options
lua require('config.options')

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
  autocmd Filetype {yml,yaml} setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype beancount setlocal ts=2 sts=2 sw=2 expandtab nofoldenable relativenumber

  autocmd BufWritePre {*.bean,*.beancount} :%!bean-format
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
require('config.toggleterm')
require('config.treesitter')
require('config.vimgo')

-- just setup
require('colorizer').setup()
require('tabline').setup{}
EOB
