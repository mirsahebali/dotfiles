local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "gopls", filetypes = { "go","goimports", "gomod" } },
  -- {name= "tsserver", filetypes = {"typescript", "typescriptreact", "javascript", "javascriptreact"}},
  {name= "eslint", filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"}},
  {name= "clangd", filetypes = {"c", "cpp", "objc", "objcpp"}},
  {name= "lua_ls", filetypes = {"lua"}},
  }
