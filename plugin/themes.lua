vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })
vim.pack.add({ "https://github.com/ellisonleao/gruvbox.nvim" })

require("catppuccin").setup({
  flavour = "mocha",
})
require("gruvbox").setup()

vim.cmd.colorscheme("gruvbox")
