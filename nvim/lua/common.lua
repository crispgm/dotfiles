local vim = vim
local M = {}

function M.set_keymap(mode, from, to)
    local opts = { noremap = true, silent = false }
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

function M.nvim_set_keymap(mode, from, to, opts)
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

return M
