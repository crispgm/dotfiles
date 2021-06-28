local vim = vim

vim.cmd('packadd paq-nvim')
local paq = require('paq-nvim').paq
paq({ 'savq/paq-nvim', opt = true })

-- lib
paq('nvim-lua/plenary.nvim')
paq('nvim-lua/popup.nvim')

-- theme
paq({
    'crispgm/nord-vim', -- forked from official nord-vim, with treesitter and lsp supported
    branch = 'develop',
})

-- file
paq('mhinz/vim-startify') -- stardup page
paq('nvim-telescope/telescope.nvim') -- fuzzy picker
paq('crispgm/telescope-heading.nvim') -- markdown heading
paq('akinsho/nvim-toggleterm.lua') -- terminal
paq('rmagatti/auto-session') -- auto session
paq('rmagatti/session-lens') -- session lens for telescope
paq('farmergreg/vim-lastplace') -- reopen files at your last edit position

-- view
paq('ojroques/nvim-hardline') -- status line
paq('crispgm/nvim-tabline') -- tab line
paq('dstein64/nvim-scrollview') -- scroll bar
paq('google/vim-searchindex') -- search index
paq('wincent/ferret') -- find and replace
paq('editorconfig/editorconfig-vim') -- editorconfig support
paq('Yggdroot/indentLine') -- indent line
paq('RRethy/vim-illuminate') -- highlight hover word
paq('lewis6991/gitsigns.nvim') -- git signs
paq('f-person/git-blame.nvim') -- toggle git blame info
paq('rhysd/conflict-marker.vim') -- git conflict
paq('norcalli/nvim-colorizer.lua') -- color codes rendering
paq('tversteeg/registers.nvim') -- show registers
paq('winston0410/cmd-parser.nvim') -- dependency of range-highlight
paq('winston0410/range-highlight.nvim') -- highlight range lines

-- edit
paq('psliwka/vim-smoothie') -- smoothy scroll
paq('phaazon/hop.nvim') -- jump to anywhere within 2 strokes
paq('tpope/vim-repeat') -- repeat that support plugin
paq('tpope/vim-surround') -- toggle surround
paq('tpope/vim-abolish') -- eh, hard to describe, see README
paq('tpope/vim-commentary') -- toggle comment
paq({
    'prettier/vim-prettier', -- prettier formatter
    run = 'yarn install',
    branch = 'release/0.x',
})
paq('christoomey/vim-system-copy') -- copy to system clipboard
paq('monaqa/dial.nvim') -- <c-a> <c-x> enhancement
paq('kana/vim-textobj-user') -- define textobj by user
paq('haya14busa/vim-textobj-number') -- number textobj
paq('AndrewRadev/splitjoin.vim') -- split and join in vim
paq('steelsojka/pears.nvim') -- auto symbol pairs

-- language
paq({
    'nvim-treesitter/nvim-treesitter', -- treesitter
    run = ':TSUpdate',
})
paq('nvim-treesitter/playground') -- treesitter playground
paq('nvim-treesitter/nvim-treesitter-textobjects') -- treesitter textobj e.g., class, function
paq('neovim/nvim-lspconfig') -- lsp client config
paq('hrsh7th/nvim-compe') -- completion
paq('hrsh7th/vim-vsnip') -- snippets
paq('hrsh7th/vim-vsnip-integ') -- vsnip integration for nvim-compe
paq('mattn/emmet-vim') -- html/css snippets
paq('crispgm/nvim-go') -- go dev
paq('rust-lang/rust.vim') -- rust lang support
paq('nathangrigg/vim-beancount') -- beancount ftplugin
paq('vimwiki/vimwiki') -- vimwiki
paq('junegunn/vader.vim') -- vim plugin testing
