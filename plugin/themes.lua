vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })
vim.pack.add({ "https://github.com/ellisonleao/gruvbox.nvim" })
vim.pack.add({ "https://github.com/navarasu/onedark.nvim" })

require("catppuccin").setup({
  flavour = "mocha",
})
require("gruvbox").setup()
require("onedark").setup({
  style = "darker",
})

vim.cmd.colorscheme("gruvbox")
