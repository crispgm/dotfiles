local opts = {noremap = true, silent = true}

-- LSP
vim.api.nvim_set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ls', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>lsd', '<cmd>lua vim.lsp.buf.document_symbol()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>lsw', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>le', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>', opts)

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

-- vim-plug
vim.api.nvim_set_keymap('n', '<leader>pi', '<cmd>PlugInstall<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pc', '<cmd>PlugClean<cr>', opts)

-- Git Messenger
vim.api.nvim_set_keymap('n', '<leader>gm', '<cmd>GitMessenger<cr>', opts)

-- goyo
vim.api.nvim_set_keymap('n', '<leader>go', '<cmd>Goyo<cr>', opts)

-- Vista
vim.api.nvim_set_keymap('n', '<leader>va', '<cmd>Vista<cr>', opts)
