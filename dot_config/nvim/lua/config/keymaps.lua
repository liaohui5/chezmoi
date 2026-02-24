-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set

-- see more arguments :h map-arguments
local function opts(desc, _remap, silent)
  local remap = _remap or true
  return {
    remap = remap,
    noremap = remap and false or true,
    desc = desc,
    silent = silent or true,
  }
end

-- Just delete, not cut strings
-- don't add "desc", it will be tracked by the "which-key"
-- plugin leading to an infinite loop and crash
map({ "n", "v" }, "x", '"_x')
map({ "n", "v" }, "X", '"_X')

-- scroll up/down
map("n", "<c-u>", "5kzz")
map("n", "<c-d>", "5jzz")

-- format
map({ "n", "v" }, "<leader>ff", "<leader>cf", opts("Format Document"))

-- rename
map("n", "<leader>rn", "<leader>cr", opts("Rename Symbol"))

-- save
map("n", "<leader>fs", "<cmd>wa!<cr>", opts("Save", false))

-- lazygit
map("n", "<c-g>", "<leader>gg", opts("Open lazygit"))

-- exit
map("n", "<c-q>", "<leader>qq", opts("Exit"))

-- toggle terminal
map({ "n", "t" }, "<c-x>", "<c-_>", opts("Open terminal"))
-- map("n", "<c-x>", "<c-_>", opts("Open terminal"))
-- map("t", "<c-x>", "<c-\\><c-n><c-w>p", opts("Back to buffer"))

-- move left/right in command mode
map({ "t", "c" }, "<c-h>", "<Left>")
map({ "t", "c" }, "<c-l>", "<Right>")

-- toggle blank characters visible
map("n", "<leader>ue", function()
  vim.wo.list = not vim.wo.list
end, {
  desc = "Toggle extra chars visible",
})
