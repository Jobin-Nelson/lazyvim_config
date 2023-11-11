-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<b", "<cmd>BufferLineMovePrev<cr>", { desc = "Buffer Move Left" })
vim.keymap.set("n", ">b", "<cmd>BufferLineMoveNext<cr>", { desc = "Buffer Move Right" })
vim.keymap.set("n", "<leader>bk", '<cmd>call delete(expand("%:p")) <bar> bdelete!<cr>', { desc = "Buffer Kill" })
vim.keymap.set("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Buffer Close" })
vim.keymap.set("v", "P", '"_dP', { silent = true, desc = "Paste without yanking" })
