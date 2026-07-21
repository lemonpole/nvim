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
    compilationDatabasePath = "build/Debug",
  },
}

--[[
  fixes an issue with eslint not resolving path
  aliases correctly on windows under msys2.

  ```bash
  # before fix
  C:/msys64/path/to/project

  # after fix
  file:///C:/msys64/path/to/project
  ```
]]
if vim.fn.has("win32") == 1 and vim.fn.exists("$MSYSTEM") == 1 then
  vim.lsp.config("eslint", {
    before_init = function(_, config)
      if config.root_dir then
        local root = vim.fs.normalize(config.root_dir)
        config.settings = config.settings or {}
        config.settings.workspaceFolder = {
          uri = vim.uri_from_fname(root),
          name = vim.fs.basename(root),
        }
      end
    end,
  })
end
