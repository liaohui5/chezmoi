return {
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    enabled = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    ensure_installed = {
      -- supported languages: https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
      "just", -- just docs: https://just.systems/man/zh/
    },
  },
  {
    -- some quick action based on treesitter
    "ckolkey/ts-node-action",
    event = "VeryLazy",
    vscode = true,
    keys = {
      {
        "ga",
        function()
          require("ts-node-action").node_action()
        end,
        desc = "Trigger Node Action",
        mode = "n",
      },
      {
        "gb",
        function()
          require("helpers.comma_semicolon").toggle_comma_semicolon()
        end,
        desc = "Toggle comma semicolon",
        mode = "n",
      },
    },
  },
  {
    -- quick split/join multiple lines
    "Wansmer/treesj",
    event = "VeryLazy",
    vscode = true,
    keys = {
      {
        "gS",
        function()
          require("treesj").split()
        end,
        desc = "Split lines",
        mode = "n",
      },
      {
        "gJ",
        function()
          require("treesj").join()
        end,
        desc = "Join lines",
        mode = "n",
      },
    },
  },
}
