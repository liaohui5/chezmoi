local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim options: https://lazy.folke.io/configuration
require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },
  },
  defaults = {
    lazy = true,
    version = false,
  },
  checker = {
    -- automatically check for plugin updates
    enabled = false,
  },
  change_detection = {
    notify = false,
  },
  performance = {
    rtp = {
      -- disabled some built-in rtp plugins
      -- https://github.com/folke/lazy.nvim#%EF%B8%8F-configuration
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
