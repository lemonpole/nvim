vim.g.mapleader = " "

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.list = true
vim.o.confirm = true
vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.shellcmdflag = "-c"
vim.o.shellxquote = ""
vim.o.guicursor = ""
vim.o.ff = "unix"
vim.o.swapfile = false
vim.o.shellslash = true

if vim.fn.has("win32") == 1 then
  vim.g.netrw_cygwin = 1
  vim.o.completeslash = "slash"
end
