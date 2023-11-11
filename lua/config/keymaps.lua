-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby

-- Telescope
vim.keymap.set(
  "n",
  "<leader>fd",
  '<cmd>lua require("config.custom.pickers").find_dotfiles()<cr>',
  { desc = "Find Dotfiles" }
)
vim.keymap.set(
  "n",
  "<leader>fz",
  '<cmd>lua require("config.custom.pickers").find_zoxide()<cr>',
  { desc = "Find Zoxide" }
)
vim.keymap.set(
  "n",
  "<leader>fs",
  '<cmd>lua require("config.custom.pickers").find_second_brain_files()<cr>',
  { desc = "Find Second brain files" }
)
vim.keymap.set(
  "n",
  "<leader>fO",
  '<cmd>lua require("config.custom.pickers").find_org_files()<cr>',
  { desc = "Find Org files" }
)
vim.keymap.set(
  "n",
  "<leader>fp",
  '<cmd>lua require("config.custom.pickers").find_projects()<cr>',
  { desc = "Find Projects" }
)
vim.keymap.set(
  "n",
  "<leader>fj",
  '<cmd>lua require("config.custom.pickers").find_journal()<cr>',
  { desc = "Find Journal" }
)

-- Buffers
vim.keymap.set("n", "<b", "<cmd>BufferLineMovePrev<cr>", { desc = "Buffer Move Left" })
vim.keymap.set("n", ">b", "<cmd>BufferLineMoveNext<cr>", { desc = "Buffer Move Right" })
vim.keymap.set("n", "<leader>bk", '<cmd>call delete(expand("%:p")) <bar> bdelete!<cr>', { desc = "Buffer Kill" })
vim.keymap.set("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Buffer Close" })

-- Others
-- - vim.keymap.set("n", "<leader>ss", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Substitute word" })
vim.keymap.set("v", "P", '"_dP', { silent = true, desc = "Paste without yanking" })
vim.keymap.set("n", "<leader>uI", '<cmd>lua require("config.custom.utils").set_indent()<cr>', { desc = "Set Indent" })
vim.keymap.set(
  "n",
  "<leader>wc",
  '<cmd>lua require("config.custom.utils").scratch_buffer()<cr>',
  { desc = "Scratch buffer" }
)
vim.keymap.set("n", "<leader>we", '<cmd>lua require("config.custom.email_update").open()<cr>', { desc = "Send Email" })
vim.keymap.set(
  "n",
  "<leader>wt",
  '<cmd>lua require("config.custom.get_ticket").populate_ticket()<cr>',
  { desc = "Source Ticket" }
)
vim.keymap.set(
  "n",
  "<leader>wj",
  '<cmd>lua require("config.custom.utils").start_journal()<cr>',
  { desc = "Start Journal" }
)
vim.keymap.set("n", "<leader>oT", '<cmd>lua require("config.custom.org-tangle").tangle()<cr>', { desc = "Org Tangle" })
