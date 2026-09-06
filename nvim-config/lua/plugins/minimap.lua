-- VSCode-style minimap on the right: shrunk code overview, plus overlays
-- for diagnostics (errors/warnings) and git line changes (via gitsigns,
-- a LazyVim core default so no extra plugin needed for that part).
--
-- mini.map floats pinned to the absolute right edge of the screen
-- (relative = 'editor'), and claudecode's terminal also opens flush
-- against that same right edge by default -- so while you're actually
-- focused inside the Claude terminal, the minimap floats on top of it
-- instead of sitting next to your code. Auto-hide the minimap while the
-- Claude terminal window is focused, and restore it as soon as focus
-- moves to any other window (the Claude split can stay open elsewhere on
-- screen -- only focus matters), unless the user explicitly hid it with
-- <leader>um themselves.
local user_hidden = false

local function claude_terminal_focused()
  local buf = vim.api.nvim_get_current_buf()
  if vim.api.nvim_get_option_value("buftype", { buf = buf }) == "terminal" then
    return vim.api.nvim_buf_get_name(buf):match("claude") ~= nil
  end
  return false
end

return {
  "echasnovski/mini.map",
  event = "VeryLazy",
  opts = function()
    local map = require("mini.map")
    return {
      integrations = {
        map.gen_integration.builtin_search(),
        map.gen_integration.diagnostic(),
        map.gen_integration.gitsigns(),
      },
      symbols = {
        encode = map.gen_encode_symbols.dot("4x2"),
      },
      window = {
        side = "right",
        width = 12,
        show_integration_count = false,
      },
    }
  end,
  config = function(_, opts)
    local map = require("mini.map")
    map.setup(opts)
    map.open()

    vim.api.nvim_create_autocmd({ "WinEnter", "TermOpen", "TermClose" }, {
      callback = function()
        vim.schedule(function()
          if claude_terminal_focused() then
            map.close()
          elseif not user_hidden then
            map.open()
          end
        end)
      end,
    })
  end,
  keys = {
    {
      "<leader>um",
      function()
        local map = require("mini.map")
        user_hidden = not user_hidden
        if user_hidden then
          map.close()
        elseif not claude_terminal_focused() then
          map.open()
        end
      end,
      desc = "Toggle Minimap",
    },
  },
}