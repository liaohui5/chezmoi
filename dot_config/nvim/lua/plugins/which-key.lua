return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "classic",
    layout = {
      spacing = 4,
      align = "center",
    },
    disable = {
      filetypes = {
        "TelescopePrompt",
        "NvimTree",
        "neo-tree",
      },
    },
    icons = {
      -- disabled icon
      mappings = false,
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
