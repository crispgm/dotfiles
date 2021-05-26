local vim = vim
local M = {}

function M.set_keymap(mode, from, to)
    local opts = {noremap = true, silent = false}
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

function M.nvim_set_keymap(mode, from, to, opts)
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

function M.set_options(options)
    for key, val in pairs(options) do
        if val == true then
            vim.api.nvim_command('set ' .. key)
        elseif val == false then
            vim.api.nvim_command('set no' .. key)
        else
            vim.api.nvim_command('set ' .. key .. '=' .. val)
        end
    end
end

return M
