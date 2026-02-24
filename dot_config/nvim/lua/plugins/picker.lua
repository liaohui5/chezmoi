-- https://github.com/ibhagwan/fzf-lua
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    {
      "<leader><space>",
      function()
        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#files
        Snacks.picker.files({
          finder = "files",
          format = "file",
          show_empty = true,
          hidden = true,
          ignored = true,
          follow = false,
          supports_live = true,
          exclude = {
            ".git",
            ".husky",
            ".DS_Store",
            ".venv",
            "node_modules",
            "vendor",
            "dist",
          },
        })
      end,
      desc = "Find files",
      mode = "n",
    },
  },
}
