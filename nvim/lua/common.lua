local M = {}

--- try requiring a submodule and do not crash all the configs
function M.try_require(name)
    local ok, _ = pcall(require, name)
    if not ok then
        local msg = string.format(
            'The configuration is not fully loaded. Requiring `%s` failed. Check the path and syntax.',
            name
        )
        vim.api.nvim_echo(
            { { 'init.lua', 'ErrorMsg' }, { ' ' .. msg } },
            true,
            {}
        )
    end
end

function M.map(mode, from, to, opts)
    vim.api.nvim_set_keymap(mode, from, to, opts or {})
end

function M.noremap(mode, from, to)
    local opts = { noremap = true }
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

function M.nmap(from, to)
    vim.api.nvim_set_keymap('n', from, to)
end

function M.nnoremap(from, to)
    M.noremap('n', from, to)
end

function M.inoremap(from, to)
    M.noremap('i', from, to)
end

function M.vnoremap(from, to)
    M.noremap('v', from, to)
end

function M.cnoremap(from, to)
    M.noremap('c', from, to)
end

return M
