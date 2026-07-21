-- Use <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- fzf-lua - fuzzy picker
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>")

-- neogit - tui for git
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>")
