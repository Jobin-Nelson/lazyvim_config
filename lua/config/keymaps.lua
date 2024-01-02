-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
-- stylua: ignore
local map = vim.keymap.set

-- Telescope
map( 'n', '<leader>fd', '<cmd>lua require("config.custom.pickers").find_dotfiles()<cr>', { desc = "Find Dotfiles" })
map( 'n', '<leader>fz', '<cmd>lua require("config.custom.pickers").find_zoxide()<cr>', { desc = "Find Zoxide" })
map( 'n', '<leader>fs', '<cmd>lua require("config.custom.pickers").find_second_brain_files()<cr>', { desc = "Find Second brain files" })
map( 'n', '<leader>fO', '<cmd>lua require("config.custom.pickers").find_org_files()<cr>', { desc = "Find Org files" })
map( 'n', '<leader>fp', '<cmd>lua require("config.custom.pickers").find_projects()<cr>', { desc = "Find Projects" })
map( 'n', '<leader>fj', '<cmd>lua require("config.custom.pickers").find_journal()<cr>', { desc = "Find Journal" })
-- map( 'n', '<leader>fe', '<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>', { desc = "File Browser (parent)" })
-- map( 'n', '<leader>fE', '<cmd>Telescope file_browser<cr>', { desc = "File Browser (cwd)" })
map( 'n', '<leader>fb', '<cmd>Telescope buffers sort_mru=true<cr>', { desc = "Find Buffers" })
map( 'n', '<leader>fS', '<cmd>lua require("luasnip.loaders").edit_snippet_files()<cr>', { desc = "Find Snippets" })
map( 'n', '<leader>fg', '<cmd>Telescope emoji<cr>', { desc = "Find Emoji" })
map( 'n', '<leader>fG', '<cmd>Telescope glyph<cr>', { desc = "Find Glyphs" })
map( 'n', '<leader>gb', '<cmd>Telescope git_branches<cr>', { desc = "Git Branches" })
map( 'v', '<leader>gc', '<cmd>Telescope git_bcommits_range<cr>', { desc = "Git Buffer Commit Range" })

-- Buffers
map("n", "<b", "<cmd>BufferLineMovePrev<cr>", { desc = "Buffer Move Left" })
map("n", ">b", "<cmd>BufferLineMoveNext<cr>", { desc = "Buffer Move Right" })
map("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Buffer Close" })
map('n', '<leader>bk', '<cmd>call delete(expand("%:p")) <bar> bdelete!<cr>', { desc = "Buffer Kill" })

-- Terminal
map('t', '<C-w>','<C-\\><C-n><C-w>', {desc = 'Terminal window command' })

-- Others
map('n', '<leader>rw', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', { desc = "Replace word" })
map('v', 'P', '"_dP', { silent = true, desc = "Paste without yanking" })
map('n', 'gl', vim.diagnostic.open_float, { desc="Hover diagnostics" })
map('n', '<leader>we', '<cmd>lua require("config.custom.email_update").open()<cr>', { desc = "Send Email" })
map('n', '<leader>wt', '<cmd>lua require("config.custom.get_ticket").populate_ticket()<cr>', { desc = "Source Ticket" })
map('n', '<leader>jt', '<cmd>lua require("config.custom.org-tangle").tangle()<cr>', { desc = "Org Tangle" })
map('n', '<leader>jj', '<cmd>lua require("config.custom.utils").start_journal()<cr>', { desc = "Start Journal" })
map('n', '<leader>js', '<cmd>lua require("config.custom.utils").scratch_buffer()<cr>', { desc = "Scratch Buffer" })
map('n', '<leader>jr', '<cmd>lua require("config.custom.utils").rename_file()<cr>', { desc = "Rename File" })

-- UI
map('n', '<leader>ui', '<cmd>lua require("config.custom.utils").set_indent()<cr>', { desc = "Set Indent" })
