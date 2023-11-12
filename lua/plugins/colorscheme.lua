return {

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = false,
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
