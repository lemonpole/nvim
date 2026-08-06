vim.g.mapleader = " "

vim.o.confirm = true
vim.o.cursorline = true
vim.o.ff = "unix"
vim.o.guicursor = ""
vim.o.ignorecase = true
vim.o.list = true
vim.o.number = true
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false

vim.diagnostic.config({ virtual_text = true })

if vim.fn.has("win32") == 1 then
  vim.g.netrw_cygwin = 1
  vim.o.completeslash = "slash"
  vim.o.shellcmdflag = "-c"
  vim.o.shellslash = true
  vim.o.shellxquote = ""
end
