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

-- make sure typescript & tsserver are installed:
-- npm i -g typescript typescript-language-server
--
nvim_lsp.tsserver.setup{
  on_attach = on_attach
}
EOF
