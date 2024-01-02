-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local my_group = vim.api.nvim_create_augroup("my_run_group", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  command = "nnoremap <F5> <cmd>update <bar> !python %<CR>",
  group = my_group,
})

require("config.custom.macros")

-- Commands
local diff_original = function()
  local start = vim.api.nvim_get_current_buf()
  vim.cmd("vnew | set buftype=nofile | read ++edit # | 0d_ | diffthis")
  local scratch = vim.api.nvim_get_current_buf()

  vim.cmd("wincmd p | diffthis")

  -- Map `q` for both buffers to exit diff view and delete scratch buffer
  for _, buf in ipairs({ scratch, start }) do
    vim.keymap.set("n", "q", function()
      vim.api.nvim_buf_delete(scratch, { force = true })
      vim.keymap.del("n", "q", { buffer = start })
    end, { buffer = buf })
  end
end
vim.api.nvim_create_user_command("DiffOrig", diff_original, {})
