local a = vim.api
local f = vim.fn
local formatter = require('formatter')

local function trim_whitespace()
    local exclude_filetypes = { 'markdown', 'vimwiki' }
    local ft = vim.bo.filetype
    for _, ef in ipairs(exclude_filetypes) do
        if ft == ef then
            return
        end
    end
    local view = f.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.cmd([[silent! 0;/^\%(\n*.\)\@!/,$d]])
    f.winrestview(view)
end

local editor = a.nvim_create_augroup('editor_options', { clear = true })
a.nvim_create_autocmd({ 'BufWritePre' }, {
    group = editor,
    pattern = { '*' },
    callback = trim_whitespace,
})
a.nvim_create_autocmd({ 'TextYankPost' }, {
    group = editor,
    pattern = { '*' },
    callback = function()
        vim.highlight.on_yank({ timeout = 500 })
    end,
})
a.nvim_create_autocmd({ 'InsertEnter' }, {
    group = editor,
    pattern = { '*' },
    callback = function()
        vim.wo.relativenumber = false
    end,
})
a.nvim_create_autocmd({ 'InsertLeave' }, {
    group = editor,
    pattern = { '*' },
    callback = function()
        vim.wo.relativenumber = true
    end,
})

-- filetypes
a.nvim_create_autocmd({ 'Filetype' }, {
    group = editor,
    pattern = {
        'beancount',
        'css',
        'html',
        'javascript',
        'json',
        'scss',
        'typescript',
        'yaml',
        'vim',
    },
    callback = function()
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
        vim.bo.shiftwidth = 2
        vim.bo.expandtab = true
    end,
})
a.nvim_create_autocmd({ 'Filetype' }, {
    group = editor,
    pattern = {
        'go',
    },
    callback = function()
        vim.bo.tabstop = 4
        vim.bo.softtabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = false
    end,
})
a.nvim_create_autocmd({ 'Filetype' }, {
    group = editor,
    pattern = {
        'json',
    },
    callback = function()
        vim.g['indentLine_conceallevel'] = 1
    end,
})
a.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    group = editor,
    pattern = {
        'Brewfile',
        'Gemfile',
    },
    callback = function()
        vim.bo.filetype = 'ruby'
    end,
})

-- quickfix
local qf = a.nvim_create_augroup('qf_options', { clear = true })
a.nvim_create_autocmd({ 'WinEnter' }, {
    group = qf,
    pattern = { '*' },
    callback = function()
        if vim.fn.winnr('$') == 1 and vim.bo.buftype == 'quickfix' then
            vim.cmd('q')
        end
    end,
})

-- lsp
local lsp = a.nvim_create_augroup('lsp_options', { clear = true })
a.nvim_create_autocmd({ 'CursorHold' }, {
    group = lsp,
    pattern = { '*' },
    callback = function()
        vim.diagnostic.open_float(nil, { focusable = false, scope = 'cursor' })
    end,
})

-- formatter
local format = a.nvim_create_augroup('formatter_options', { clear = true })
a.nvim_create_autocmd({ 'BufWritePost' }, {
    group = format,
    pattern = { '{*.bean,*.beancount}' },
    callback = formatter.bean_format,
})
a.nvim_create_autocmd({ 'BufWritePost' }, {
    group = format,
    pattern = { '{*.bean,*.beancount}' },
    callback = function()
        vim.cmd('!bean-check <afile>')
    end,
})
a.nvim_create_autocmd({ 'BufWritePost' }, {
    group = format,
    pattern = { '*.lua' },
    callback = formatter.lua_format,
})
a.nvim_create_autocmd({ 'BufWritePost' }, {
    group = format,
    pattern = { '*.sh' },
    callback = formatter.shell_format,
})

-- nvim-go
local nvim_go = a.nvim_create_augroup('nvim_go', { clear = true })
a.nvim_create_autocmd({ 'User' }, {
    group = nvim_go,
    pattern = { 'NvimGoLintPopupPost' },
    command = 'wincmd p',
})
