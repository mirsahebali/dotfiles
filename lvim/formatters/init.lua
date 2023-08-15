local formatter = require("lvim.lsp.null-ls.formatters")
formatters.setup{
  {name = "goimports"},
   {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "lua", "css", "less", "scss","html" },
  },
  {name = "stylua", filetypes = {"lua"}},
  {name= "clang-format", filetypes = {"c", "cpp", "objc", "objcpp"}},
}
