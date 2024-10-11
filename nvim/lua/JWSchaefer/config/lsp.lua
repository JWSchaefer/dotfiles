local lspconfig = require('lspconfig')

-- Rust
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}


-- Python
lspconfig.pyright.setup{}
