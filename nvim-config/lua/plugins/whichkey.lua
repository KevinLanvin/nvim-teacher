return {
  "folke/which-key.nvim",
  opts = {
    -- 20% wider than the "helix" preset defaults (min 30/max 60 -> 36/72),
    -- the register panel (press ") was cramped at the stock width.
    win = {
      width = { min = 36, max = 72 },
    },
    layout = {
      width = { min = 36 },
    },
  },
}
