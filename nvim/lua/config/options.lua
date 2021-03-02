local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

opt('o', 'encoding', 'utf-8')    -- encoding
opt('o', 'exrc', true)           -- apply .vimrc in project path
opt('o', 'backup', false)        -- no .bak
opt('o', 'swapfile', false)      -- no .swap
opt('o', 'undofile', true)       -- use undo file
opt('o', 'updatetime', 300)      -- time (in ms) to write to swap file
-- buffer
opt('b', 'expandtab', true)      -- expend tab
opt('b', 'tabstop', 4)           -- tab stop
opt('b', 'autoindent', true)     -- auto indent for new line
opt('b', 'shiftwidth', 4)        -- auto indent shift width
opt('b', 'softtabstop', 4)       -- soft tab stop size
-- window
opt('w', 'number', true)         -- line number
opt('w', 'relativenumber', true) -- relative number
-- editing
opt('o', 'whichwrap', 'b,s,<,>,[,]') -- cursor is able to move from end of line to next line
opt('o', 'backspace', '2')           -- backspace behaviors, is equivalent to indent,eol,start
opt('o', 'list', true)               -- show tabs with listchars
opt('o', 'ignorecase', false)        -- search with no ignore case
opt('o', 'hlsearch', true)           -- highlight search
opt('o', 'incsearch', false)         -- no incremental search
opt('o', 'completeopt', 'menu,menuone,noselect')
opt('o', 'hidden', true)
opt('o', 'cursorline', true)         -- show cursor line
opt('o', 'ruler', true)              -- show ruler line
opt('o', 'colorcolumn', '120')       -- display a color column when line is longer than 120 chars
vim.o.shortmess = vim.o.shortmess .. 'c' -- status line e.g. CTRL+G
opt('o', 'signcolumn', 'yes')        -- show sign column (column of the line number)
opt('o', 'mouse', 'nv')              -- enable mouse under normal and visual mode
opt('o', 'showmatch', true)          -- show bracket match
opt('o', 'cmdheight', 2)             -- height of :command line
opt('o', 'wildmenu', true)           -- wildmenu, auto complete for commands
opt('o', 'wildmode', 'longest,full')
opt('o', 'splitright', true)         -- split to right
opt('o', 'splitbelow', true)         -- split to below

if not vim.fn.has('gui_runing') then
    opt('o', 't_Co', 256)
end
opt('o', 'background', 'dark')
if vim.fn.has('termguicolors') then
    opt('o', 't_8f', '^[[38;2;%lu;%lu;%lum')
    opt('o', 't_8b','^[[48;2;%lu;%lu;%lum')
    opt('o', 'termguicolors', true)
end
