lua << EOF
local nvim_lsp = require'lspconfig'

nvim_lsp.solargraph.setup{
  on_attach = on_attach,
  settings = {
    solargraph = {
      diagnostics = true,
      completion = true
    }
  }
}
EOF
