-- Disable LazyVim's default K (LSP hover) so e.g. <S-k> -> 10k in config/keymaps.lua works.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "K", false },
          },
        },
      },
    },
  },
}
