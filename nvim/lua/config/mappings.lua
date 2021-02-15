local function set_keymap(mode, from, to)
    local opts = {noremap = true, silent = true}
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

-- common
set_keymap('n', '<leader>r', '<cmd>source ~/.config/nvim/init.vim<cr>')
set_keymap('n', '<leader>#', '<cmd>let @/ = ""<cr><esc>')
set_keymap('i', '\\]', '<esc>')
set_keymap('n', 'k', 'gk')
set_keymap('n', 'j', 'gj')
set_keymap('n', '<leader>[', 'gT<cr>')
set_keymap('n', '<leader>]', 'gt<cr>')
set_keymap('n', '<leader>t[', '<cmd>tabmove -1<cr>')
set_keymap('n', '<leader>t]', '<cmd>tabmove +1<cr>')
set_keymap('n', '<leader>q', '<cmd>q!<cr>')
set_keymap('n', '<leader>e', '<cmd>e!<cr>')
set_keymap('n', '<leader>Q', '<cmd>qa!<cr>')
set_keymap('n', '<leader>w', '<cmd>wq!<cr>')
set_keymap('n', '<leader>n', '<cmd>set nonumber norelativenumber<cr>')
set_keymap('n', '<leader>N', '<cmd>set number<cr>')
set_keymap('n', '<leader>R', '<cmd>set relativenumber<cr>')
set_keymap('n', '<leader>s', '<c-w>w')
set_keymap('n', '<c-j>', '<c-w>j')
set_keymap('n', '<c-k>', '<c-w>k')
set_keymap('n', '<c-h>', '<c-w>h')
set_keymap('n', '<c-l>', '<c-w>l')
set_keymap('i', '<c-d>', '<esc>ddi')
set_keymap('n', '<A-Up>', '<cmd>m .-2<CR>')
set_keymap('n', '<A-Down>', '<cmd>m .+1<CR>')


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

-- git-blame
set_keymap('n', '<leader>gb', '<cmd>GitBlameToggle<cr>')

-- goyo
set_keymap('n', '<leader>go', '<cmd>Goyo<cr>')

-- Vista
set_keymap('n', '<leader>va', '<cmd>Vista<cr>')
