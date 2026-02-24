-- stylua: ignore start
----------------------------------------------------------------------------------
-- neovide client configuration
-- https://github.com/neovide/neovide
-- https://neovide.dev/configuration.html#configuration
----------------------------------------------------------------------------------
-- set neovide extra global options
----------------------------------------------------------------------------------
vim.g.neovide_padding_top                 = 0
vim.g.neovide_padding_bottom              = 0
vim.g.neovide_padding_right               = 0
vim.g.neovide_padding_left                = 0
vim.g.neovide_input_ime                   = true
vim.g.neovide_cursor_animation_length     = 0.05
vim.g.neovide_cursor_antialiasing         = true
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_length     = 0.1
vim.g.neovide_fullscreen                  = false
vim.g.neovide_profiler                    = false
vim.g.linespace                           = 0.8
vim.g.neovide_text_contrast               = 0.8

----------------------------------------------------------------------------------
-- set gui font family
-- https://neovide.dev/configuration.html#font
----------------------------------------------------------------------------------
vim.o.guifont = "Maple Mono NF CN:h18"

----------------------------------------------------------------------------------
-- bind hotkeys in neovide
----------------------------------------------------------------------------------
local api, fn, map = vim.api, vim.fn, vim.keymap.set
local opts = {
  noremap = true,
  silent = true,
  remap = false,
}

-- copy selection to clipboard
map("v", "<D-c>", '"+y', opts)

-- paste clipboard content to cursor
map({"v", "c", "i"}, "<D-v>", function ()
  local clipboard_content = fn.getreg("+")
  api.nvim_put({ clipboard_content }, 'c', true, true)
end, opts)
