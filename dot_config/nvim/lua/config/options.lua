-- Neovim base options
-- LazyVim default options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- online chinese docs    : https://yianwillis.github.io/vimcdoc/doc/help.html
-- Options are automatically loaded before lazy.nvim startup
-----------------------------------------
-- lazyvim global settings
-----------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.editorconfig = true
vim.g.autoformat = false
vim.g.snacks_animate = false
vim.g.lazyvim_picker = "auto"
vim.g.trouble_lualine = false
vim.g.lazyvim_prettier_needs_config = true -- resolve conflicts with biome plugin
vim.g.lazyvim_eslint_auto_format = false -- disabled auto format
vim.g.auto_show_completion = true -- auto show completion
vim.g.sidekick_nes = false -- auto show ai completion

-----------------------------------------
-- neovim options
-----------------------------------------
vim.opt.relativenumber = false
vim.opt.conceallevel = 0
vim.opt.spelllang = {}
vim.opt.swapfile = false
vim.opt.linebreak = false
vim.opt.wrap = false
vim.opt.list = false -- show invisible characters
vim.opt.listchars = {
  tab = "  ↹",
  eol = "↩",
  space = ".",
  extends = "◀",
  precedes = "▶",
}

-----------------------------------------
-- disabled default modules
-----------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local disabled_providers = {
  -- "node",
  -- "python3",
  "perl",
  "ruby",
}
for _, provider in ipairs(disabled_providers) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

-----------------------------------------
-- intergrate mise
-----------------------------------------
if vim.fn.executable("mise") == 1 then
  vim.env.PATH = string.format("%s/.local/share/mise/shims:%s", vim.env.HOME, vim.env.PATH)
end
