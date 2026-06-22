vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://www.github.com/williamboman/mason.nvim",
  "https://www.github.com/williamboman/mason-lspconfig.nvim",
})

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "lua_ls",
    "ts_ls",
    "jsonls",
    "eslint",
    "clangd",
  },
})

vim.lsp.config["bashls"] = {
  filetypes = { "sh", "bash", "zsh" },
}

vim.lsp.config["clangd"] = {
  filetypes = { "cpp" },
  init_options = {
    compilationDatabasePath = "build",
  },
}
