local map = require('common').map
local nnoremap = require('common').nnoremap
local inoremap = require('common').inoremap
local vnoremap = require('common').vnoremap
local cnoremap = require('common').cnoremap
-- common
nnoremap('<leader>#', '<cmd>let @/ = ""<cr><Esc>')
nnoremap('n', 'nzzzv')
nnoremap('N', 'Nzzzv')
nnoremap('<leader>q', '<cmd>q!<cr>')
nnoremap('<leader>e', '<cmd>e!<cr>')
nnoremap('<leader>Q', '<cmd>qa!<cr>')
nnoremap('<leader>w', '<cmd>wq!<cr>')
nnoremap('<leader>n', '<cmd>set nonumber norelativenumber<cr>')
nnoremap('<leader>N', '<cmd>set number<cr>')
nnoremap('<leader>R', '<cmd>set relativenumber<cr>')
-- moving
inoremap('<c-a>', '<Esc>I')
inoremap('<c-e>', '<End>')
nnoremap('k', 'gk')
nnoremap('j', 'gj')
-- editing
nnoremap('Y', 'y$')
inoremap('<c-d>', '<Esc>ddi')
nnoremap('<leader>pp', '"0p')
nnoremap('<a-Up>', '<cmd>m .-2<cr>==')
nnoremap('<a-Down>', '<cmd>m .+1<cr>==')
vnoremap('<a-Up>', ":move '<-2<CR>gv=gv")
vnoremap('<a-Down>', ":move '>+1<CR>gv=gv")
-- splits
nnoremap('<leader>s', '<c-w>w')
nnoremap('<leader>j', '<c-w>j')
nnoremap('<leader>k', '<c-w>k')
nnoremap('<leader>h', '<c-w>h')
nnoremap('<leader>l', '<c-w>l')
-- tab
nnoremap('<s-Tab>', 'gT')
nnoremap('<Tab>', 'gt')
nnoremap('<leader>t[', '<cmd>tabmove -1<cr>')
nnoremap('<leader>t]', '<cmd>tabmove +1<cr>')
nnoremap('<leader>1', '1gt')
nnoremap('<leader>2', '2gt')
nnoremap('<leader>3', '3gt')
nnoremap('<leader>4', '4gt')
nnoremap('<leader>5', '5gt')
nnoremap('<leader>6', '6gt')
nnoremap('<leader>7', '7gt')
nnoremap('<leader>8', '8gt')
nnoremap('<leader>9', '9gt')
nnoremap('<leader>0', '<cmd>tablast<cr>')
-- buf
nnoremap('<leader>[', 'bprev')
nnoremap('<leader>]', 'bnext')
-- quickfix
nnoremap('<leader>cc', '<cmd>cclose<cr>')
nnoremap('<leader>;', '<cmd>cprev<cr>')
nnoremap("<leader>'", '<cmd>cnext<cr>')
-- command
cnoremap('<c-a>', '<Home>')
cnoremap('<c-e>', '<End>')

-- LSP
nnoremap('<leader>ld', '<cmd>Telescope lsp_definitions<cr>')
nnoremap('<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
nnoremap('<leader>lt', '<cmd>Telescope lsp_type_definitions<cr>')
nnoremap('<leader>li', '<cmd>Telescope lsp_implementations<cr>')
nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<cr>')
nnoremap('U', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
nnoremap('<leader>lr', '<cmd>Telescope lsp_references<cr>')
nnoremap('<leader>ls', '<cmd>Telescope lsp_document_symbols<cr>')
nnoremap('<leader>lS', '<cmd>Telescope lsp_workspace_symbols<cr>')
nnoremap('<leader>lR', '<cmd>lua vim.lsp.buf.rename()<cr>')
nnoremap('<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>')

-- plug manager
nnoremap('<leader>ps', '<cmd>PackerSync<cr>')

-- dial.nvim
map('n', '<c-a>', '<Plug>(dial-increment)')
map('n', '<c-x>', '<Plug>(dial-decrement)')
map('n', '<c-a>', '<Plug>(dial-increment)')
map('n', '<c-x>', '<Plug>(dial-decrement)')
map('n', 'g<c-a>', '<Plug>(dial-increment-additional)')
map('n', 'g<c-x>', '<Plug>(dial-decrement-additional)')

-- hop.nvim
nnoremap('s', '<cmd>HopChar2<cr>')
nnoremap('S', '<cmd>HopWord<cr>')
nnoremap('<c-l>', '<cmd>HopLine<cr>')

-- ferret
vim.g.FerretMap = 0
nnoremap('<leader>fa', '<Plug>(FerretLack)')
nnoremap('<leader>fw', '<Plug>(FerretAckWord)')
nnoremap('<leader>fs', '<Plug>(FerretAcks)')
