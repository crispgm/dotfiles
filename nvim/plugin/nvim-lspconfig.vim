lua << EOF
  require'lspconfig'.bashls.setup{}
  require'lspconfig'.cssls.setup{}
  require'lspconfig'.gopls.setup{}
  require'lspconfig'.html.setup{}
  require'lspconfig'.jsonls.setup{}
  require'lspconfig'.solargraph.setup{}
  require'lspconfig'.sqlls.setup{}
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.vimls.setup{}
  require'lspconfig'.vuels.setup{}
  require'lspconfig'.yamlls.setup{}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
