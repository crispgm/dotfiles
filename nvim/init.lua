--- try requiring a submodule and do not crash all the configs
local function try_require(name)
    local ok, _ = pcall(require, name)
    if not ok then
        local msg = string.format(
            'The configuration is not fully loaded. Requiring `%s` failed. Check the path and syntax.',
            name)
        vim.api.nvim_echo({ { 'init.lua', 'ErrorMsg' }, { ' ' .. msg } }, true, {})
    end
end

-- options
try_require('options')

-- packages
try_require('pack')

-- mappings
try_require('mappings')

-- plugins
try_require('plugins.setups')
try_require('plugins.compe')
try_require('plugins.emmet')
try_require('plugins.gitblame')
try_require('plugins.gitsigns')
try_require('plugins.hardline')
try_require('plugins.lspconfig')
try_require('plugins.nord')
try_require('plugins.prettier')
try_require('plugins.rust')
try_require('plugins.telescope')
try_require('plugins.toggleterm')
try_require('plugins.treesitter')
try_require('plugins.vimwiki')
try_require('plugins.vsnip')
