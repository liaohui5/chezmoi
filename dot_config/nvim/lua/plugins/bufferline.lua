-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      sort_by = "insert_at_end",
      always_show_bufferline = false,
      offsets = {
        {
          filetype = "NvimTree", -- neo-tree, NvimTree
          highlight = "Directory",
          text = "Explorer",
          text_align = "center", -- left, center, right
        },
      },
    },
  },
  keys = {
    {
      "<leader>bH",
      "<cmd>BufferLineMovePrev<cr>",
      desc = "Move buffer to left",
      mode = "n",
    },
    {
      "<leader>bL",
      "<cmd>BufferLineMoveNext<cr>",
      desc = "Move buffer to right",
      mode = "n",
    },
  },
}
