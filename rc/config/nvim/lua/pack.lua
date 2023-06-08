return require('lazy').setup({
    -- {{{ lib
    'nvim-lua/plenary.nvim',
    -- }}}

    -- {{{ colorscheme
    'nordtheme/vim',
    -- }}}

    -- {{{ ui
    'rcarriga/nvim-notify',
    'nvim-tree/nvim-web-devicons',
    -- }}}

    -- {{{ file
    'mhinz/vim-startify', -- startup page
    'nvim-telescope/telescope.nvim', -- fuzzy picker
    {
        'crispgm/telescope-heading.nvim', -- markdown heading
        -- dev = true,
    },
    'akinsho/toggleterm.nvim', -- terminal
    'rmagatti/auto-session', -- auto session
    'rmagatti/session-lens', -- session lens for telescope
    'ethanholz/nvim-lastplace', -- reopen files at your last edit position
    'AndrewRadev/undoquit.vim', -- restore closed tabs
    'ojroques/nvim-bufdel', -- delete buf without losing window layout
    'christoomey/vim-system-copy', -- copy to system clipboard
    -- }}}

    -- {{{ view
    'ojroques/nvim-hardline', -- status line
    {
        'crispgm/nvim-tabline', -- tab line
        -- dev = true,
        config = true,
    },
    {
        'SmiteshP/nvim-navic', -- LSP code context
        dependencies = { 'neovim/nvim-lspconfig' },
    },
    {
        'utilyre/barbecue.nvim', -- winbar
        dependencies = {
            'neovim/nvim-lspconfig',
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons',
        },
        config = true,
    },
    'dstein64/nvim-scrollview', -- scroll bar
    {
        'declancm/cinnamon.nvim', -- smooth scrolling
        config = true,
    },
    'google/vim-searchindex', -- search index
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
        config = true,
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
        config = true,
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
        config = true,
    },
    'monaqa/dial.nvim', -- <c-a> <c-x> enhancement
    'kana/vim-textobj-user', -- define textobj by user
    {
        'haya14busa/vim-textobj-number', -- number textobj
        dependencies = { 'kana/vim-textobj-user' },
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
    { 'chrisgrieser/nvim-spider', lazy = true },
    -- }}}

    -- {{{ language features
    {
        'nvim-treesitter/nvim-treesitter', -- treesitter
        build = ':TSUpdate',
    },
    {
        'nvim-treesitter/playground', -- treesitter playground
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
    },
    {
        'nvim-treesitter/nvim-treesitter-textobjects', -- treesitter textobj e.g., class, function
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
    },
    'neovim/nvim-lspconfig', -- lsp client config
    {
        'williamboman/mason.nvim',
        config = true,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'bashls',
                    'cssls',
                    'gopls',
                    'html',
                    'jsonls',
                    'rust_analyzer',
                    'solargraph',
                    'sqlls',
                    'lua_ls',
                    'tsserver',
                    'vimls',
                    'vuels',
                    'yamlls',
                },
            })
        end,
    },
    {
        'j-hui/fidget.nvim', -- lsp loading process
        config = true,
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
            'hrsh7th/cmp-emoji',
            {
                'crispgm/cmp-beancount',
                -- dev = true,
            },
            {
                'hrsh7th/cmp-vsnip',
                dependencies = { 'hrsh7th/vim-vsnip' },
            },
        },
    },
    -- }}}

    -- {{{ language-specific
    {
        'prettier/vim-prettier', -- prettier formatter
        build = 'yarn install',
        branch = 'release/0.x',
    },
    'mattn/emmet-vim', -- html/css snippets
    {
        'crispgm/nvim-go', -- go dev
        -- dev = true,
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
    {
        'folke/neodev.nvim',
        config = true,
    },
    'rafcamlet/nvim-luapad', -- lua repl
    'junegunn/vader.vim', -- vim plugin testing
    -- }}}
}, {
    dev = {
        path = '~/dev',
    },
    install = { colorscheme = { 'nord' } },
})
