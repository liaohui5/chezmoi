return {
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = "VeryLazy",
    opts = {
      enable_autocmd = false,
    },
  },
  {
    "nvim-mini/mini.comment",
    event = "VeryLazy",
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
    keys = {
      {
        "<c-\\>",
        "gcc",
        remap = true,
        noremap = true,
        mode = "n",
      },
      {
        "<c-\\>",
        "gc",
        remap = true,
        noremap = true,
        mode = "v",
      },
    },
  },
  {
    "nvim-mini/mini.surround",
    event = "VeryLazy",
    opts = {
      mappings = {
        add = "gss",
        delete = "gsd",
        replace = "gsr",
      },
    },
  },
  {
    "nvim-mini/mini.pairs",
    event = "VeryLazy",
    enabled = true,
  },
  {
    "nvim-mini/mini.align",
    enabled = true,
    vscode = true,
    opts = {
      mappings = {
        start = "gA",
        start_with_preview = "ga",
      },
    },
    keys = {
      { "gA", mode = "v", desc = "align by string" },
      { "ga", mode = "v", desc = "align by string with preview" },
    },
  },
}
