vim.pack.add({ "https://github.com/ellisonleao/gruvbox.nvim" })
vim.pack.add({ "https://github.com/navarasu/onedark.nvim" })
vim.pack.add({ "https://github.com/vimcolorschemes/olive-crt.nvim" })
vim.pack.add({ "https://github.com/neanias/everforest-nvim" })

require("gruvbox").setup()
require("onedark").setup({
  style = "darker",
})

vim.cmd.colorscheme("gruvbox")
