local vim = vim

vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt = true}

-- ## lib
paq 'nvim-lua/plenary.nvim'
paq 'nvim-lua/popup.nvim'

-- ## theme
paq {'crispgm/nord-vim', branch = 'develop' }

-- ## UI layout
-- stardup page
paq 'mhinz/vim-startify'
-- status line
paq 'ojroques/nvim-hardline'
-- tab line
paq 'crispgm/nvim-tabline'
-- scroll bar
paq 'dstein64/nvim-scrollview'
-- fuzzy picker
paq 'nvim-telescope/telescope.nvim'
-- terminal
paq 'akinsho/nvim-toggleterm.lua'
-- file tree
paq 'kyazdani42/nvim-tree.lua'

-- ## view
-- editorconfig support
paq 'editorconfig/editorconfig-vim'
-- indent line
paq 'Yggdroot/indentLine'
-- highlight hover word
paq 'RRethy/vim-illuminate'
-- git signs
paq 'lewis6991/gitsigns.nvim'
-- toggle git blame info
paq 'f-person/git-blame.nvim'
-- color codes rendering
paq 'norcalli/nvim-colorizer.lua'
-- show registers
paq 'tversteeg/registers.nvim'

-- ## motion
-- smoothy scroll
paq 'psliwka/vim-smoothie'
-- jump to anywhere within 2 strokes
paq 'phaazon/hop.nvim'

-- ## editing
---- search index
paq 'google/vim-searchindex'
-- toggle surround
paq 'tpope/vim-surround'
-- eh, hard to describe, see README
paq 'tpope/vim-abolish'
-- toggle comment
paq 'b3nj5m1n/kommentary'
-- prettier formatter
paq {'prettier/vim-prettier', run = 'yarn install', branch = 'release/0.x' }
-- copy to system clipboard
paq 'christoomey/vim-system-copy'
-- <c-a> <c-x> enhancement
paq 'monaqa/dial.nvim'
-- define textobj by user
paq 'kana/vim-textobj-user'
-- number textobj
paq 'haya14busa/vim-textobj-number'
-- split and join in vim
paq 'AndrewRadev/splitjoin.vim'
-- auto symbol pairs
paq 'windwp/nvim-autopairs'

-- language
-- treesitter
paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
-- treesitter playground
paq 'nvim-treesitter/playground'
-- treesitter textobj e.g., class, function
paq 'nvim-treesitter/nvim-treesitter-textobjects'
-- lsp client config
paq 'neovim/nvim-lspconfig'
-- completion
paq 'hrsh7th/nvim-compe'
-- snippets
paq 'hrsh7th/vim-vsnip'
-- vsnip integration for nvim-compe
paq 'hrsh7th/vim-vsnip-integ'
-- html/css snippets
paq 'mattn/emmet-vim'
-- go dev
paq 'crispgm/nvim-go'
-- beancount ftplugin
paq 'nathangrigg/vim-beancount'
-- vimwiki
paq 'vimwiki/vimwiki'
-- vim plugin testing
paq 'junegunn/vader.vim'
