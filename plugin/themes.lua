vim.pack.add({ "https://github.com/ellisonleao/gruvbox.nvim" })
vim.pack.add({ "https://github.com/navarasu/onedark.nvim" })

require("gruvbox").setup()
require("onedark").setup({
  style = "darker",
})

vim.cmd.colorscheme("gruvbox")
