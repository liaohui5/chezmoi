return {
  -- https://github.com/folke/sidekick.nvim
  "folke/sidekick.nvim",
  event = "VeryLazy", -- Load the plugin only after VimEnter event and when the editor is idle
  enabled = true,
  opts = {
    nes = {
      enabled = false,
    },
  },
}
