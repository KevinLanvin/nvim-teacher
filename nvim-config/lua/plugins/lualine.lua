return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local disabled = { "dashboard", "alpha", "ministarter", "snacks_dashboard", "neo-tree", "trouble", "lazy", "mason", "help", "qf" }

    opts.options.disabled_filetypes = opts.options.disabled_filetypes or {}
    opts.options.disabled_filetypes.winbar = disabled

    local path_component = {
      LazyVim.lualine.pretty_path({ length = 0, directory_hl = "Comment", filename_hl = "Bold" }),
      cond = function()
        return vim.bo.buftype == ""
      end,
    }

    opts.winbar = {
      lualine_c = { path_component },
    }
    opts.inactive_winbar = {
      lualine_c = { path_component },
    }

    return opts
  end,
}