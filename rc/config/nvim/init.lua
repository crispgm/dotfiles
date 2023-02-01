local try_require = require('common').try_require

-- package manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- options
try_require('options')

-- packages
try_require('pack')

-- mappings
try_require('mappings')

-- plugins
try_require('plugins.cmp')
try_require('plugins.emmet')
try_require('plugins.gitsigns')
try_require('plugins.hardline')
try_require('plugins.lspconfig')
try_require('plugins.winbar')
try_require('plugins.nord')
try_require('plugins.prettier')
try_require('plugins.rust')
try_require('plugins.telescope')
try_require('plugins.toggleterm')
try_require('plugins.treesitter')
try_require('plugins.vimwiki')
try_require('plugins.vsnip')

-- autocmds
try_require('autocmds')
