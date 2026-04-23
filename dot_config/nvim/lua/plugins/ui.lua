return {
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      integrations = {
        blink_cmp = true,
        bufferline = true,
        gitsigns = true,
        mason = true,
        mini = { enabled = true },
        noice = true,
        notify = true,
        snacks = true,
        treesitter = true,
        trouble = true,
        which_key = true,
        lsp_trouble = true,
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
