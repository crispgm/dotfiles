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

-- functions
try_require('completion')
try_require('colorscheme')
try_require('editor')
try_require('finder')
try_require('languages')
try_require('statusline')
try_require('terminal')
try_require('treesitter')
try_require('wiki')

-- autocmds
try_require('autocmds')
