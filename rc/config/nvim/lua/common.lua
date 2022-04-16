local M = {}

--- try requiring a submodule and do not crash all the configs
function M.try_require(name)
    local ok, _ = pcall(require, name)
    if not ok then
        local msg = string.format(
            'The configuration is not fully loaded. Requiring `%s` failed. Check the path and syntax.',
            name
        )
        vim.notify(msg, vim.log.levels.ERROR)
    end
end

function M.map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts or {})
end

function M.noremap(mode, lhs, rhs)
    local opts = { noremap = true }
    vim.keymap.set(mode, lhs, rhs, opts)
end

function M.nmap(lhs, rhs)
    vim.keymap.set('n', lhs, rhs)
end

function M.nnoremap(lhs, rhs)
    M.noremap('n', lhs, rhs)
end

function M.inoremap(lhs, rhs)
    M.noremap('i', lhs, rhs)
end

function M.vnoremap(lhs, rhs)
    M.noremap('v', lhs, rhs)
end

function M.cnoremap(lhs, rhs)
    M.noremap('c', lhs, rhs)
end

return M
