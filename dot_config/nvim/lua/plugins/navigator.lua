return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        {
          "<leader>o",
          desc = "open",
          group = "open",
          mode = "n",
          icon = { icon = "" },
        },
      },
    },
    keys = function()
      local navigator = require("helpers.navigator")
      return {
        {
          "<leader>ou",
          navigator.open_current_line_url,
          desc = "Open url in browser",
          mode = "n",
        },
        {
          "<leader>oU",
          navigator.open_buffer_urls,
          desc = "Open buffer urls in browser",
          mode = "n",
        },
        {
          "<leader>od",
          function()
            navigator.open_in_browser("https://www.lazyvim.org/")
          end,
          desc = "Open LazyVIM Documention",
          mode = "n",
        },
        {
          "<leader>ok",
          function()
            navigator.open_in_browser("https://www.lazyvim.org/keymaps")
          end,
          desc = "Open LazyVIM keymaps",
          mode = "n",
        },
        {
          "<leader>oK",
          function()
            navigator.open_in_browser("https://neovim.getkulala.net/docs/getting-started/install")
          end,
          desc = "Open kulala docs",
          mode = "n",
        },
        {
          "<leader>ov",
          function()
            if vim.fn.executable("code") then
              vim.cmd("silent !code " .. vim.fn.expand("%p"))
            else
              print("please install vscode first")
            end
          end,
          desc = "Open buffer in vscode",
          mode = "n",
        },
        {
          "<leader>oV",
          function()
            if vim.fn.executable("code") then
              vim.cmd("silent !code " .. LazyVim.root.get())
            else
              print("please install vscode first")
            end
          end,
          desc = "Open project in vscode",
          mode = "n",
        },
      }
    end,
  },
}
