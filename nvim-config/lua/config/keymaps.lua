-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Let window navigation/resize work from Terminal mode too (e.g. a Claude Code
-- pane), by leaving terminal mode first, then running the window command.
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Go to Left Window" })
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Go to Lower Window" })
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Go to Upper Window" })
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Go to Right Window" })

map("t", "<C-Up>", [[<C-\><C-n><cmd>resize +2<cr>]], { desc = "Increase Window Height" })
map("t", "<C-Down>", [[<C-\><C-n><cmd>resize -2<cr>]], { desc = "Decrease Window Height" })
map("t", "<C-Left>", [[<C-\><C-n><cmd>vertical resize -2<cr>]], { desc = "Decrease Window Width" })
map("t", "<C-Right>", [[<C-\><C-n><cmd>vertical resize +2<cr>]], { desc = "Increase Window Width" })

-- Imported from VSCodeVim settings --

-- Escape insert mode without reaching for <Esc>
map("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })
map("i", "kj", "<Esc>", { desc = "Exit Insert Mode" })

-- Swap ";" and "," so ";" opens command-line mode (no Shift needed) and ","
-- takes over the "repeat last f/t/F/T motion" job that ";" used to do.
map({ "n", "x" }, ";", ":", { desc = "Enter Command Mode" })
map({ "n", "x" }, ",", ";", { desc = "Repeat Last f/t Motion" })

-- <leader>bo (Delete Other Buffers) and the bufferline modified dot already
-- cover "which buffers are dirty" and "close everything but this one"; this
-- fills the one gap LazyVim doesn't map by default: close every buffer but
-- keep nvim itself open.
map("n", "<leader>bA", function()
  Snacks.bufdelete.all()
end, { desc = "Delete All Buffers" })

-- Vanilla vim has no operator for deleting a mark, so "dm" doesn't do
-- anything by default. Wait for one more char and hand it to :delmarks,
-- e.g. dma deletes mark a, dmA deletes mark A. dm! bulk-deletes every
-- lowercase mark, mirroring :delmarks!'s bang syntax.
map("n", "dm", function()
  local mark = vim.fn.getcharstr()
  if mark == "!" then
    vim.cmd("delmarks!")
  else
    vim.cmd("delmarks " .. mark)
  end
end, { desc = "Delete Mark" })
