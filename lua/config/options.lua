-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.autowrite = false
opt.foldmethod = "manual"
opt.cursorline = true
opt.conceallevel = 2

-- Enable LazyVim auto format
vim.g.autoformat = false

-- Disable plugins
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
