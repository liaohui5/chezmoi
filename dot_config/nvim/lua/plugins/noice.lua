-- https://github.com/folke/noice.nvim
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  enabled = true,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<c-f>", false },
    { "<c-b>", false },
  },
  opts = {
    -- disable cmdline for use classic command line
    cmdline = {
      view = "cmdline",
      enabled = false,
    },
    messages = {
      enabled = false,
    },
  },
}
