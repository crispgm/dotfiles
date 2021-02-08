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
