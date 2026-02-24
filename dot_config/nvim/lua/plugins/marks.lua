return {
  -- https://github.com/chentoast/marks.nvim
  "chentoast/marks.nvim",
  lazy = "VeryLazy",
  enabled = true,
  opts = {
    signs = true,
    default_mappings = false,
    excluded_filetypes = {
      "help",
      "dashboard",
    },
    excluded_buftypes = {
      "nofile",
      "quickfix",
      "snacks_picker_list",
    },
  },
  keys = {
    {
      -- keymaps menu
      "<leader>m",
      desc = "+marks",
    },
    {
      "mm",
      "<Plug>(Marks-toggle)",
      desc = "Toggle Marks",
      mode = "n",
    },
    {
      "<leader>mm",
      "<Plug>(Marks-toggle)",
      desc = "Toggle Marks",
      mode = "n",
    },
    {
      "<leader>ml",
      "<cmd>MarksQFListAll<cr>",
      desc = "List marks",
      mode = "n",
    },
    {
      "<leader>mp",
      "<Plug>(Marks-preview)",
      desc = "Preview marks",
      mode = "n",
    },
    {
      -- overview default mappings
      "[b",
      "<Plug>(Marks-prev)",
      desc = "Previous Bookmark",
      mode = "n",
    },
    {
      -- overview default mappings
      "]b",
      "<Plug>(Marks-next)",
      desc = "Next Bookmark",
      mode = "n",
    },
  },
}
