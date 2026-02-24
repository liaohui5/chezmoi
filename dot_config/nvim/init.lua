--  .----------------.  .-----------------. .----------------.  .----------------.
-- | .--------------. || .--------------. || .--------------. || .--------------. |
-- | |     _____    | || | ____  _____  | || |     _____    | || |  _________   | |
-- | |    |_   _|   | || ||_   \|_   _| | || |    |_   _|   | || | |  _   _  |  | |
-- | |      | |     | || |  |   \ | |   | || |      | |     | || | |_/ | | \_|  | |
-- | |      | |     | || |  | |\ \| |   | || |      | |     | || |     | |      | |
-- | |     _| |_    | || | _| |_\   |_  | || |     _| |_    | || |    _| |_     | |
-- | |    |_____|   | || ||_____|\____| | || |    |_____|   | || |   |_____|    | |
-- | |              | || |              | || |              | || |              | |
-- | '--------------' || '--------------' || '--------------' || '--------------' |
--  '----------------'  '----------------'  '----------------'  '----------------'
-- neovide gui client: https://neovide.dev
if vim.g.neovide then
  require("client.neovide")
end

-- bootstrap LazyVIM and plugins
---@diagnostic disable-next-line: different-requires
require("config.lazy")

-----------------------------------------------------------------------------------
-- load local plugin development environment example
-----------------------------------------------------------------------------------

-- vim.opt.runtimepath:append("$HOME/codes/example.nvim")
-- local plugin = require("example")
-- plugin.setup({})
--
-- local keys = {
--   {
--     lhs = "<leader>s1",
--     rhs = function()
--       require("example").handler1()
--     end,
--     desc = "execute handler1 function",
--     mode = "n",
--   },
-- }
-- for _, item in pairs(keys) do
--   vim.keymap.set(item.mode, item.lhs, item.rhs, {
--     desc = item.desc,
--   })
-- end
