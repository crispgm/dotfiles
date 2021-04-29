-- options
require('options')

-- packages
require('pack')

-- mappings
require('mappings')

-- plugins
require('plugins.compe')
require('plugins.emmet')
require('plugins.gitblame')
require('plugins.gitsigns')
require('plugins.hardline')
require('plugins.lspconfig')
require('plugins.nord')
require('plugins.nvim_tree')
require('plugins.prettier')
require('plugins.toggleterm')
require('plugins.treesitter')
require('plugins.vimwiki')
require('plugins.vsnip')

-- just setup
require('colorizer').setup()
require('tabline').setup{}
require('pears').setup(function(conf)
  conf.preset 'tag_matching'
end)
require('go').setup{ linter = 'golint' }
require('telescope').load_extension('session-lens')
require('telescope').load_extension('heading')
