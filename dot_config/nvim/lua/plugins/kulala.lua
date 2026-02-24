-- https://www.lazyvim.org/extras/util/rest
return {
  "mistweaverco/kulala.nvim",
  ft = {
    "http",
    "rest",
  },
  opts = {
    ui = {
      show_icons = "signcolumn",
      disable_news_popup = true,
      default_view = "headers_body",
      default_winbar_panes = {
        "headers_body",
        -- "body",
        -- "headers",
        "script_output",
        "stats",
        "verbose",
        "report",
        -- "help",
      },
      winbar_labels = {
        -- body = "Body",
        -- headers = "Headers",
        -- headers_body = "All",
        -- verbose = "Verbose",
        script_output = "Output",
        -- stats = "Stats",
        -- report = "Report",
        -- help = "Help",
      },
    },

    kulala_keymaps = {
      ["Show verbose"] = {
        "C",
        function()
          require("kulala.ui").show_verbose()
        end,
      },
    },
  },
  keys = {
    {
      "<c-enter>",
      "<leader>Rs",
      desc = "Rest: Send",
      remap = true,
      mode = "n",
    },
  },
}
