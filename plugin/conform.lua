vim.pack.add({
  "https://www.github.com/stevearc/conform.nvim",
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    zsh = { "shfmt" },
    sh = { "shfmt" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    markdown = { "prettier" },
    yaml = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    hpp = { "clang_format" },
    h = { "clang_format" },
  },
  formatters = {
    shfmt = {
      args = { "-ci", "-bn" },
    },
    clang_format = {
      args = { "-style=file" },
    },
  },
  format_on_save = {
    timeout_ms = 5000,
    lsp_format = "fallback",
  },
})
