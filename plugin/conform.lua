vim.pack.add({
  "https://www.github.com/stevearc/conform.nvim",
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    zsh = { "shfmt" },
    sh = { "shfmt" },
    typescript = { "oxfmt", "prettier" },
    typescriptreact = { "oxfmt", "prettier" },
    javascript = { "oxfmt", "prettier" },
    javascriptreact = { "oxfmt", "prettier" },
    html = { "oxfmt", "prettier" },
    css = { "oxfmt", "prettier" },
    markdown = { "oxfmt", "prettier" },
    yaml = { "oxfmt", "prettier" },
    json = { "oxfmt", "prettier" },
    jsonc = { "oxfmt", "prettier" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    h = { "clang_format" },
    sql = { "sql_formatter" },
    swift = { "swift" },
    terraform = { "terraform_fmt" },
  },
  formatters = {
    shfmt = {
      args = { "-ci", "-bn" },
    },
    clang_format = {
      args = { "-style=file" },
    },
    -- @todo: remove once fixed upstream
    sql_formatter = {
      command = require("conform.util").from_node_modules(
        require("conform.fs").is_windows and "sql-formatter.cmd" or "sql-formatter"
      ),
    },
  },
  format_on_save = {
    timeout_ms = 5000,
    lsp_format = "fallback",
  },
})
