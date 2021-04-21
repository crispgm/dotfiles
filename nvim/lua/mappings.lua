local vim = vim

local function set_keymap(mode, from, to)
    local opts = {noremap = true, silent = false}
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

-- common
set_keymap('n', '<leader>#', '<cmd>let @/ = ""<cr><Esc>')
set_keymap('n', '<leader>q', '<cmd>q!<cr>')
set_keymap('n', '<leader>e', '<cmd>e!<cr>')
set_keymap('n', '<leader>Q', '<cmd>qa!<cr>')
set_keymap('n', '<leader>w', '<cmd>wq!<cr>')
set_keymap('n', '<leader>n', '<cmd>set nonumber norelativenumber<cr>')
set_keymap('n', '<leader>N', '<cmd>set number<cr>')
set_keymap('n', '<leader>R', '<cmd>set relativenumber<cr>')
-- moving
set_keymap('i', '<c-a>', '<Esc>I')
set_keymap('i', '<c-e>', '<End>')
set_keymap('n', 'k', 'gk')
set_keymap('n', 'j', 'gj')
-- editing
set_keymap('n', '<a-Up>', '<cmd>m .-2<cr>')
set_keymap('n', '<a-Down>', '<cmd>m .+1<cr>')
set_keymap('i', '<c-d>', '<Esc>ddi')
-- splits
set_keymap('n', '<leader>s', '<c-w>w')
set_keymap('n', '<leader>j', '<c-w>j')
set_keymap('n', '<leader>k', '<c-w>k')
set_keymap('n', '<leader>h', '<c-w>h')
set_keymap('n', '<leader>l', '<c-w>l')
-- quickfix
set_keymap('n', '<leader>cc', '<cmd>cclose<cr>')
set_keymap('n', '<leader>;', '<cmd>cprev<cr>')
set_keymap('n', '<leader>\'', '<cmd>cnext<cr>')
-- tab
set_keymap('n', '<s-Tab>', 'gT')
set_keymap('n', '<Tab>', 'gt')
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
-- buf
set_keymap('n', '<leader>[', 'bprev')
set_keymap('n', '<leader>]', 'bnext')
-- command
set_keymap('c', '<c-a>', '<Home>')
set_keymap('c', '<c-e>', '<End>')

-- LSP
set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<cr>')
set_keymap('n', '<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
set_keymap('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>')
set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
set_keymap('n', 'U', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>')
set_keymap('n', '<leader>ls', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
set_keymap('n', '<leader>lS', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>')
set_keymap('n', '<leader>lR', '<cmd>lua vim.lsp.buf.rename()<cr>')
set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>')

-- telescope
set_keymap('n', '<leader>ff', '<cmd>Telescope find_files find_command=fd,--hidden,--exclude,*.git,--type,f<cr>')
set_keymap('n', '<leader>fd', '<cmd>Telescope git_files<cr>')
set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
set_keymap('n', '<leader>fk', '<cmd>Telescope keymaps<cr>')

-- plug manager
set_keymap('n', '<leader>pi', '<cmd>PaqInstall<cr>')
set_keymap('n', '<leader>pu', '<cmd>PaqUpdate<cr>')
set_keymap('n', '<leader>pc', '<cmd>PaqClean<cr>')

-- comment
vim.api.nvim_set_keymap('i', '<c-_>', '<Esc><Plug>CommentaryLine', {})
vim.api.nvim_set_keymap('n', '<c-_>', '<Plug>CommentaryLine', {})
vim.api.nvim_set_keymap('v', '<c-_>', '<Plug>Commentary', {})

-- git-blame
set_keymap('n', '<leader>gb', '<cmd>GitBlameToggle<cr>')

-- dial.nvim
vim.api.nvim_set_keymap('n', '<c-a>', '<Plug>(dial-increment)', {})
vim.api.nvim_set_keymap('n', '<c-x>', '<Plug>(dial-decrement)', {})
vim.api.nvim_set_keymap('v', '<c-a>', '<Plug>(dial-increment)', {})
vim.api.nvim_set_keymap('v', '<c-x>', '<Plug>(dial-decrement)', {})
vim.api.nvim_set_keymap('v', 'g<c-a>', '<Plug>(dial-increment-additional)', {})
vim.api.nvim_set_keymap('v', 'g<c-x>', '<Plug>(dial-decrement-additional)', {})

-- hop.nvim
set_keymap('n', '<c-h>', '<cmd>HopWord<cr>')
