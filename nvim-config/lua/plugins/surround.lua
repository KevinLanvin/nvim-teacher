return {
  "nvim-mini/mini.surround",
  keys = {
    -- "S" isn't derived from opts.mappings like ys/ds/cs are, so it needs
    -- its own trigger or it won't lazy-load the plugin on a cold start.
    { "S", mode = "x", desc = "Add Surrounding" },
  },
  opts = {
    mappings = {
      add = "ys",
      delete = "ds",
      find = "",
      find_left = "",
      highlight = "",
      replace = "cs",
      suffix_last = "",
      suffix_next = "",
    },
    search_method = "cover_or_next",
  },
  config = function(_, opts)
    require("mini.surround").setup(opts)

    -- Move "add surrounding" to Visual-mode S, vim-surround style
    vim.keymap.del("x", "ys")
    vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add('visual')<CR>]], { silent = true, desc = "Add Surrounding" })

    -- yss surrounds the whole line
    vim.keymap.set("n", "yss", "ys_", { remap = true, desc = "Add Surrounding to Line" })
  end,
}