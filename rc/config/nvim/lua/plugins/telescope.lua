local nnoremap = require('common').nnoremap

local actions = require('telescope.actions')
require('telescope').setup({
    defaults = require('telescope.themes').get_ivy({
        mappings = {
            i = {
                ['<esc>'] = actions.close,
            },
        },
    }),
    extensions = {
        heading = {
            treesitter = true,
        },
    },
})

require('telescope').load_extension('session-lens')
require('telescope').load_extension('heading')

nnoremap(
    '<leader>ff',
    '<cmd>Telescope find_files find_command=fd,--hidden,--no-ignore,--exclude,*.git,--type,f<cr>'
)
nnoremap('<leader>fd', '<cmd>Telescope git_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')
nnoremap('<leader>fl', '<cmd>Telescope lsp_document_symbols<cr>')
nnoremap('<leader>fk', '<cmd>Telescope keymaps<cr>')
nnoremap('<leader>fm', '<cmd>Telescope heading<cr>')
nnoremap('<leader>fs', '<cmd>Telescope session-lens search_session<cr>')
