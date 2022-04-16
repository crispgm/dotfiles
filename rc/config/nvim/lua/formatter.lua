local M = {}
local f = vim.fn
local a = vim.api

function M.bean_format()
    local view = f.winsaveview()
    f.execute(':%!bean-format')
    f.winrestview(view)
end

function M.lua_format(opts)
    local view = f.winsaveview()
    if f.executable('.stylua.toml') then
        f.execute(
            ':silent !stylua ' .. opts.file .. ' --config-path ./.stylua.toml'
        )
    else
        f.execute(':silent !stylua ' .. opts.file)
    end
    a.nvim_exec('edit!', true)
    f.winrestview(view)
end

function M.shell_format(opts)
    local view = f.winsaveview()
    f.execute(':silent !shfmt -l -w ' .. opts.file)
    a.nvim_exec('edit!', true)
    f.winrestview(view)
end

return M
