vim.pack.add({
  "https://www.github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("lualine").setup({
  sections = {
    lualine_c = {
      {
        "filename",
        path = 1,
      },
    },
  },
})
