return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- ensure it loads before other plugins
    opts = {
      options = {
        cursorline = true,
        transparency = false,
      },
    },
  },

  -- tell LazyVim to load onedarkpro
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
