local function set_keymap(mode, from, to)
    local opts = {noremap = true, silent = true}
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

-- common
set_keymap('n', '<leader>r', '<cmd>source ~/.config/nvim/init.vim<cr>')
set_keymap('n', '<leader>#', '<cmd>let @/ = ""<cr><esc>')
set_keymap('n', '<leader>q', '<cmd>q!<cr>')
set_keymap('n', '<leader>e', '<cmd>e!<cr>')
set_keymap('n', '<leader>Q', '<cmd>qa!<cr>')
set_keymap('n', '<leader>w', '<cmd>wq!<cr>')
set_keymap('n', '<leader>n', '<cmd>set nonumber norelativenumber<cr>')
set_keymap('n', '<leader>N', '<cmd>set number<cr>')
set_keymap('n', '<leader>R', '<cmd>set relativenumber<cr>')
-- moving
set_keymap('i', '<C-A>', '<Home>')
set_keymap('i', '<C-E>', '<End>')
set_keymap('n', 'k', 'gk')
set_keymap('n', 'j', 'gj')
-- splits
set_keymap('n', '<leader>s', '<c-w>w')
set_keymap('n', '<c-j>', '<c-w>j')
set_keymap('n', '<c-k>', '<c-w>k')
set_keymap('n', '<c-h>', '<c-w>h')
set_keymap('n', '<c-l>', '<c-w>l')
-- swap lines
set_keymap('n', '<A-Up>', '<cmd>m .-2<cr>')
set_keymap('n', '<A-Down>', '<cmd>m .+1<cr>')
-- quickfix
set_keymap('n', '<leader>cc', '<cmd>cclose<cr>')
set_keymap('n', '<leader>;', '<cmd>cprev<cr>')
set_keymap('n', '<leader>\'', '<cmd>cnext<cr>')
-- tab
set_keymap('n', '<leader>[', 'gT')
set_keymap('n', '<leader>]', 'gt')
set_keymap('n', '<leader>t[', '<cmd>tabmove -1<cr>')
set_keymap('n', '<leader>t]', '<cmd>tabmove +1<cr>')
set_keymap('n', '<leader>1', '1gt')
set_keymap('n', '<leader>2', '2gt')
set_keymap('n', '<leader>3', '3gt')
set_keymap('n', '<leader>4', '4gt')
set_keymap('n', '<leader>5', '5gt')
set_keymap('n', '<leader>6', '6gt')
set_keymap('n', '<leader>7', '7gt')
set_keymap('n', '<leader>8', '8gt')
set_keymap('n', '<leader>9', '9gt')
set_keymap('n', '<leader>0', '<cmd>tablast<cr>')
-- others
set_keymap('i', '\\]', '<esc>')
set_keymap('i', '<c-d>', '<esc>ddi')

-- LSP
set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<cr>')
set_keymap('n', '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<cr>')
set_keymap('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>')
set_keymap('n', '<leader>ls', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>')
set_keymap('n', '<leader>lsd', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
set_keymap('n', '<leader>lsw', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>')
set_keymap('n', '<leader>le', '<cmd>lua vim.lsp.buf.declaration()<cr>')
set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>')

-- telescope
set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

-- vim-plug
set_keymap('n', '<leader>pi', '<cmd>PlugInstall<cr>')
set_keymap('n', '<leader>pc', '<cmd>PlugClean<cr>')

-- kommentary
vim.api.nvim_set_keymap('n', '<C-_>', '<Plug>kommentary_line_default', {})
vim.api.nvim_set_keymap('v', '<C-_>', '<Plug>kommentary_visual_default', {})

-- git-blame
set_keymap('n', '<leader>gb', '<cmd>GitBlameToggle<cr>')

-- goyo
set_keymap('n', '<leader>go', '<cmd>Goyo<cr>')
