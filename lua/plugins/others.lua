return {
  {
    "nvim-treesitter/playground",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "TSPlaygroundToggle",
  },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    version = "2.*",
    opts = {},
  },
  { "David-Kunz/gen.nvim", cmd = "Gen" },
  { "dhruvasagar/vim-zoom", keys = "<C-w>m" },
  { "dhruvasagar/vim-table-mode", keys = "<leader>tm" },
  { "sindrets/diffview.nvim", event = "LazyFile", opts = {} },
}
