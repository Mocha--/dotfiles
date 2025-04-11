return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { flavour = "macchiato" } },
  { "rebelot/kanagawa.nvim", name = "kanagawa" },
  { "luisiacc/gruvbox-baby" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
