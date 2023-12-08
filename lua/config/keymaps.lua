-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
-- stylua: ignore

-- Telescope
vim.keymap.set( "n", "<leader>fd", '<cmd>lua require("config.custom.pickers").find_dotfiles()<cr>', { desc = "Find Dotfiles" })
vim.keymap.set( "n", "<leader>fz", '<cmd>lua require("config.custom.pickers").find_zoxide()<cr>', { desc = "Find Zoxide" })
vim.keymap.set( "n", "<leader>fs", '<cmd>lua require("config.custom.pickers").find_second_brain_files()<cr>', { desc = "Find Second brain files" })
vim.keymap.set( "n", "<leader>fO", '<cmd>lua require("config.custom.pickers").find_org_files()<cr>', { desc = "Find Org files" })
vim.keymap.set( "n", "<leader>fp", '<cmd>lua require("config.custom.pickers").find_projects()<cr>', { desc = "Find Projects" })
vim.keymap.set( "n", "<leader>fj", '<cmd>lua require("config.custom.pickers").find_journal()<cr>', { desc = "Find Journal" })

-- Buffers
vim.keymap.set("n", "<b", "<cmd>BufferLineMovePrev<cr>", { desc = "Buffer Move Left" })
vim.keymap.set("n", ">b", "<cmd>BufferLineMoveNext<cr>", { desc = "Buffer Move Right" })
vim.keymap.set("n", "<leader>bk", '<cmd>call delete(expand("%:p")) <bar> bdelete!<cr>', { desc = "Buffer Kill" })
vim.keymap.set("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Buffer Close" })

-- Terminal
vim.keymap.set('n', '<A-h>', '<cmd>ToggleTerm size=20 direction=horizontal<cr>', {desc = 'ToggleTerm horizontal split' })
vim.keymap.set('n', '<A-v>', '<cmd>ToggleTerm size=80 direction=vertical<cr>', {desc = 'ToggleTerm vertical split' })
vim.keymap.set('t', '<A-h>','<esc><cmd>ToggleTerm direction=horizontal<cr>', {desc = 'ToggleTerm horizontal split' })
vim.keymap.set('t', '<A-v>','<esc><cmd>ToggleTerm direction=vertical<cr>', {desc = 'ToggleTerm vertical split' })
vim.keymap.set('t', '<C-w>','<C-\\><C-n><C-w>', {desc = 'ToggleTerm window command' })

-- Others
vim.keymap.set("n", "<leader>rw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace word" })
vim.keymap.set("v", "P", '"_dP', { silent = true, desc = "Paste without yanking" })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc="Hover diagnostics" })
vim.keymap.set("n", "<leader>uI", '<cmd>lua require("config.custom.utils").set_indent()<cr>', { desc = "Set Indent" })
vim.keymap.set("n", "<leader>rc", '<cmd>lua require("config.custom.utils").scratch_buffer()<cr>', { desc = "Scratch buffer" })
vim.keymap.set("n", "<leader>we", '<cmd>lua require("config.custom.email_update").open()<cr>', { desc = "Send Email" })
vim.keymap.set("n", "<leader>wt", '<cmd>lua require("config.custom.get_ticket").populate_ticket()<cr>', { desc = "Source Ticket" })
vim.keymap.set("n", "<leader>rj", '<cmd>lua require("config.custom.utils").start_journal()<cr>', { desc = "Start Journal" })
vim.keymap.set("n", "<leader>oT", '<cmd>lua require("config.custom.org-tangle").tangle()<cr>', { desc = "Org Tangle" })
