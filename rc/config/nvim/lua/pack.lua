return require('lazy').setup({
    -- {{{ lib
    'nvim-lua/plenary.nvim',
    -- }}}

    -- {{{ colorscheme
    'arcticicestudio/nord-vim',
    -- }}}

    -- {{{ ui
    'rcarriga/nvim-notify',
    'kyazdani42/nvim-web-devicons',
    -- }}}

    -- {{{ file
    'mhinz/vim-startify', -- startup page
    'nvim-telescope/telescope.nvim', -- fuzzy picker
    'crispgm/telescope-heading.nvim', -- markdown heading
    -- '~/dev/telescope-heading.nvim',
    'akinsho/toggleterm.nvim', -- terminal
    'rmagatti/auto-session', -- auto session
    'rmagatti/session-lens', -- session lens for telescope
    'farmergreg/vim-lastplace', -- reopen files at your last edit position
    'AndrewRadev/undoquit.vim', -- restore closed tabs
    -- }}}

    -- {{{ view
    'ojroques/nvim-hardline', -- status line
    {
        'crispgm/nvim-tabline', -- tab line
        config = function()
            require('tabline').setup({})
        end,
    },
    {
        'SmiteshP/nvim-navic', -- winbar
        dependencies = 'neovim/nvim-lspconfig',
    },
    {
        'utilyre/barbecue.nvim', -- winbar
        dependencies = {
            'neovim/nvim-lspconfig',
            'SmiteshP/nvim-navic',
            'kyazdani42/nvim-web-devicons',
        },
    },
    'dstein64/nvim-scrollview', -- scroll bar
    {
        'declancm/cinnamon.nvim', -- smooth scrolling
        config = function()
            require('cinnamon').setup()
        end,
    },
    'google/vim-searchindex', -- search index
    -- 'wincent/ferret', -- find and replace
    'Yggdroot/indentLine', -- indent line
    {
        'RRethy/vim-illuminate', -- highlight hover word
        config = function()
            require('illuminate').configure({
                under_cursor = false,
            })
        end,
    },
    'lewis6991/gitsigns.nvim', -- git signs
    'rhysd/conflict-marker.vim', -- git conflict marker
    {
        'norcalli/nvim-colorizer.lua', -- colorizer
        config = function()
            require('colorizer').setup()
        end,
    },
    {
        'winston0410/range-highlight.nvim', -- highlight range lines
        dependencies = { 'winston0410/cmd-parser.nvim' },
        config = function()
            require('range-highlight').setup({
                highlight = 'Visual',
            })
        end,
    },
    -- }}}

    -- {{{ edit
    {
        'phaazon/hop.nvim', -- jump to anywhere within 2 strokes
        config = function()
            require('hop').setup()
        end,
    },
    {
        'echasnovski/mini.jump', -- f/t enhancement
        config = function()
            require('mini.jump').setup()
        end,
    },
    'tpope/vim-repeat', -- allow commands from plugin do repeat
    'tpope/vim-surround', -- toggle surround
    'tpope/vim-abolish', -- eh, hard to describe, see README
    {
        'numToStr/Comment.nvim', -- toggle comment
        config = function()
            require('Comment').setup()
        end,
    },
    {
        'prettier/vim-prettier', -- prettier formatter
        build = 'yarn install',
        branch = 'release/0.x',
    },
    'christoomey/vim-system-copy', -- copy to system clipboard
    'monaqa/dial.nvim', -- <c-a> <c-x> enhancement
    'kana/vim-textobj-user', -- define textobj by user
    {
        'haya14busa/vim-textobj-number', -- number textobj
        dependencies = 'kana/vim-textobj-user',
    },
    'AndrewRadev/splitjoin.vim', -- split and join in vim
    'wellle/targets.vim', -- various text objects
    {
        'windwp/nvim-autopairs', -- auto pairs
        config = function()
            require('nvim-autopairs').setup({
                disable_filetype = { 'TelescopePrompt' },
            })
        end,
    },
    -- }}}

    -- {{{ language
    {
        'nvim-treesitter/nvim-treesitter', -- treesitter
        build = ':TSUpdate',
    },
    'nvim-treesitter/playground', -- treesitter playground
    'nvim-treesitter/nvim-treesitter-textobjects', -- treesitter textobj e.g., class, function
    'neovim/nvim-lspconfig', -- lsp client config
    {
        'j-hui/fidget.nvim',
        config = function()
            require('fidget').setup()
        end,
    },
    'hrsh7th/vim-vsnip', -- snippets
    {
        'hrsh7th/nvim-cmp', -- completion
        dependencies = {
            'hrsh7th/cmp-nvim-lsp', -- cmp lsp
            'hrsh7th/cmp-nvim-lsp-signature-help', -- cmp lsp signature help
            'hrsh7th/cmp-nvim-lua', -- cmp lua vim api
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/cmp-emoji',
            'crispgm/cmp-beancount',
            -- '~/dev/cmp-beancount',
        },
    },
    'mattn/emmet-vim', -- html/css snippets
    {
        'crispgm/nvim-go', -- go dev
        -- '~/dev/nvim-go',
        config = function()
            require('go').setup({
                formatter = 'lsp',
                test_flags = { '-v', '-count=1' },
                test_popup_width = 120,
                test_open_cmd = 'tabedit',
            })
        end,
    },
    'rust-lang/rust.vim', -- rust lang support
    'nathangrigg/vim-beancount', -- beancount ftplugin
    'vimwiki/vimwiki', -- vimwiki
    'rafcamlet/nvim-luapad', -- lua repl
    'junegunn/vader.vim', -- vim plugin testing
    -- }}}
}, {
    install = { colorscheme = { 'nord' } },
})
