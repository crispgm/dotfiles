local vim = vim

vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
    use('wbthomason/packer.nvim')
    -- lib
    use('nvim-lua/plenary.nvim')
    use('nvim-lua/popup.nvim')

    -- colorscheme
    use({
        'crispgm/nord-vim', -- forked from official nord-vim, with treesitter and lsp supported
        branch = 'develop',
    })

    -- file
    use('mhinz/vim-startify') -- startup page
    use('nvim-telescope/telescope.nvim') -- fuzzy picker
    use('crispgm/telescope-heading.nvim') -- markdown heading
    use('akinsho/nvim-toggleterm.lua') -- terminal
    use('rmagatti/auto-session') -- auto session
    use('rmagatti/session-lens') -- session lens for telescope
    use('farmergreg/vim-lastplace') -- reopen files at your last edit position
    use('AndrewRadev/undoquit.vim') -- restore closed tabs

    -- view
    use('ojroques/nvim-hardline') -- status line
    use({
        'crispgm/nvim-tabline', -- tab line
        config = function()
            require('tabline').setup({})
        end,
    })
    use('dstein64/nvim-scrollview') -- scroll bar
    use('google/vim-searchindex') -- search index
    use('wincent/ferret') -- find and replace
    use('editorconfig/editorconfig-vim') -- editorconfig support
    use('Yggdroot/indentLine') -- indent line
    use('RRethy/vim-illuminate') -- highlight hover word
    use('lewis6991/gitsigns.nvim') -- git signs
    use('f-person/git-blame.nvim') -- toggle git blame info
    use('rhysd/conflict-marker.vim') -- git conflict marker
    use({
        'norcalli/nvim-colorizer.lua', -- color codes rendering
        config = function()
            require('colorizer').setup()
        end,
    })
    use({
        'winston0410/range-highlight.nvim', -- highlight range lines
        requires = { 'winston0410/cmd-parser.nvim' },
        config = function()
            require('range-highlight').setup({
                highlight = 'Visual',
            })
        end,
    })

    -- edit
    use('psliwka/vim-smoothie') -- smoothy scroll
    use('phaazon/hop.nvim') -- jump to anywhere within 2 strokes
    use('tpope/vim-repeat') -- allow commands from plugin do repeat
    use('tpope/vim-surround') -- toggle surround
    use('tpope/vim-abolish') -- eh, hard to describe, see README
    use('tpope/vim-commentary') -- toggle comment
    use({
        'prettier/vim-prettier', -- prettier formatter
        run = 'yarn install',
        branch = 'release/0.x',
    })
    use('christoomey/vim-system-copy') -- copy to system clipboard
    use('monaqa/dial.nvim') -- <c-a> <c-x> enhancement
    use('kana/vim-textobj-user') -- define textobj by user
    use('haya14busa/vim-textobj-number') -- number textobj
    use('AndrewRadev/splitjoin.vim') -- split and join in vim
    use({
        'steelsojka/pears.nvim', -- auto symbol pairs
        config = function()
            require('pears').setup(function(conf)
                conf.remove_pair_on_outer_backspace(false)
                conf.expand_on_enter(false)
                conf.preset('tag_matching')
            end)
        end,
    })

    -- language
    use({
        'nvim-treesitter/nvim-treesitter', -- treesitter
        run = ':TSUpdate',
    })
    use('nvim-treesitter/playground') -- treesitter playground
    use('nvim-treesitter/nvim-treesitter-textobjects') -- treesitter textobj e.g., class, function
    use('neovim/nvim-lspconfig') -- lsp client config
    use('hrsh7th/nvim-compe') -- completion
    use('hrsh7th/vim-vsnip') -- snippets
    use('hrsh7th/vim-vsnip-integ') -- vsnip integration for nvim-compe
    use('mattn/emmet-vim') -- html/css snippets
    use({
        'crispgm/nvim-go', -- go dev
        config = function()
            require('go').setup({
                formatter = 'gofumpt',
                test_popup_width = 120,
            })
        end,
    })
    use('rust-lang/rust.vim') -- rust lang support
    use('nathangrigg/vim-beancount') -- beancount ftplugin
    use('vimwiki/vimwiki') -- vimwiki
    use('rafcamlet/nvim-luapad') -- lua repl
    use('junegunn/vader.vim') -- vim plugin testing
end)
