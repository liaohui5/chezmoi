return {
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "onedark" },
  },
  {
    -- tokynight
    "folke/tokyonight.nvim",
    enabled = false,
    lazy = true,
    opts = {
      style = "storm", -- night, storm, moon, day
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    lazy = true,
  },
  {
    "navarasu/onedark.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      local onedark = require("onedark")
      local opts = {
        colors = {
          -- Monokai background colors
          bg0 = "#272822",
          bg1 = "#3e3d32",
          bg2 = "#49483e",
          bg3 = "#3e3d32", -- original #75715e
          bg_d = "#1e1f1c",

          -- Monokai foreground
          fg = "#f8f8f2",

          -- Monokai syntax colors
          red = "#f92672",
          orange = "#fd971f",
          yellow = "#e6db74",
          green = "#a6e22e",
          cyan = "#66d9ef",
          blue = "#66d9ef",
          purple = "#ae81ff",

          -- Monokai gray (for comments, borders, and indent guides)
          grey = "#75715e",
          light_grey = "#8f908a",
          dark_grey = "#464741",

          -- UI colors
          bg_yellow = "#e6db74",
          bg_blue = "#66d9ef",

          -- Diff colors
          diff_add = "#3c4c1f",
          diff_delete = "#4c1f24",
          diff_change = "#1f3c4c",
          diff_text = "#2c5372",
        },

        highlights = {
          -- dashboard highlight group can not use variable
          ["SnacksDashboardFooter"] = { italic = false, fg = "#464741" },
          ["SnacksDashboardSpecial"] = { italic = false, bold = false, fg = "#a6e22e" },

          -- Syntax highlighting (Monokai)
          ["@keyword"] = { fg = "$red" },
          ["@keyword.conditional"] = { fg = "$red" },
          ["@keyword.repeat"] = { fg = "$red" },
          ["@keyword.return"] = { fg = "$red" },
          ["@function"] = { fg = "$green" },
          ["@function.call"] = { fg = "$green" },
          ["@function.builtin"] = { fg = "$green" },
          ["@string"] = { fg = "$yellow" },
          ["@number"] = { fg = "$purple" },
          ["@boolean"] = { fg = "$purple" },
          ["@constant"] = { fg = "$purple" },
          ["@type"] = { fg = "$cyan" },
          ["@variable"] = { fg = "$fg" },
          ["@variable.builtin"] = { fg = "$cyan" },
          ["@comment"] = { fg = "$grey" },
          ["@operator"] = { fg = "$red" },
          ["@variable.parameter"] = { fg = "$orange" },
          ["@property"] = { fg = "$fg" },
          ["@tag"] = { fg = "$red" },
          ["@punctuation.delimiter"] = { fg = "$fg" },
          ["@punctuation.bracket"] = { fg = "$fg" },

          -- Window borders using Monokai gray
          FloatBorder = { fg = "$dark_grey" },
          WinSeparator = { fg = "$dark_grey" },

          -- Snacks.nvim indent guides using Monokai gray
          SnacksIndentScope = { fg = "$grey" },
          SnacksPickerBorder = { fg = "$grey" },

          -- IndentBlankline (if you use it)
          SnacksIndent = { fg = "$dark_grey" },
          NvimTreeIndentMarker = { fg = "$dark_grey" },

          -- for lazygit and which-key board
          NormalFloat = { bg = "$bg_d" },
        },

        code_style = {
          comments = "none",
          keywords = "none",
          functions = "none",
          strings = "none",
          variables = "none",
        },
      }

      onedark.setup(opts)
      onedark.load()
    end,
  },
}
