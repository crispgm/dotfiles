local vim = vim

local function set_options(options)
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

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')
set_options({
    -- systematic
    encoding = 'utf-8',
    fileencoding = 'utf-8',
    fileencodings = 'utf-8',
    backup = false,     -- no .bak
    swapfile = false,   -- no .swap
    undofile = true,    -- use undo file
    updatetime = 300,   -- time (in ms) to write to swap file
    -- buffer
    expandtab = true,   -- expand tab
    tabstop = 4,        -- tab stop
    softtabstop = 4,    -- soft tab stop
    autoindent = true,  -- auto indent for new line
    shiftwidth = 4,     -- auto indent shift width
    -- window
    number = true,
    relativenumber = true,
    -- editing
    whichwrap = 'b,s,<,>,[,]', -- cursor is able to move from end of line to next line
    backspace = 2,             -- backspace behaviors, is equivalent to indent,eol,start
    list = true,               -- show tabs with listchars
    ignorecase = false,        -- search with no ignore case
    hlsearch = true,           -- highlight search
    incsearch = false,         -- no incremental search
    inccommand = 'nosplit',    -- live substitute preview
    completeopt = 'menuone,noselect',
    hidden = true,
    cursorline = true,         -- show cursor line
    ruler  = true,             -- show ruler line
    colorcolumn = 120,         -- display a color column when line is longer than 120 chars
    signcolumn = 'yes',        -- show sign column (column of the line number)
    mouse = 'nv',              -- enable mouse under normal and visual mode
    mousehide = true,          -- hide mouse when characters are typed
    showmatch = true,          -- show bracket match
    cmdheight = 2,             -- height of :command line
    wildmenu = true,           -- wildmenu, auto complete for commands
    wildmode = 'longest,full',
    splitright = true,         -- split to right
    splitbelow = true,         -- split to below

})
vim.cmd('set shortmess+=c')    -- status line e.g. CTRL+G

if not vim.fn.has('gui_running') then
  vim.cmd('set t_Co=256')
end
vim.cmd('set background=dark')
if vim.fn.has('termguicolors') then
  vim.cmd('let &t_8f = "\\<Esc>[38;2;%lu;%lu;%lum"')
  vim.cmd('let &t_8b = "\\<Esc>[48;2;%lu;%lu;%lum"')
  vim.cmd('set termguicolors')
end
