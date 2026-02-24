-------------------------------------------------------------------------------------
--- github: https://github.com/saghen/blink.cmp
--- docs: https://cmp.saghen.dev/
--- https://github1s.com/Saghen/blink.cmp/blob/main/lua/blink/cmp/config/keymap.lua
--- https://github1s.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/coding/blink.lua
-------------------------------------------------------------------------------------
return {
  "saghen/blink.cmp",
  enabled = true,
  lazy = "VeryLazy",
  keys = {
    {
      "<leader>uu",
      function()
        vim.g.auto_show_completion = not vim.g.auto_show_completion
      end,
      silent = true,
      desc = "Toggle auto show blink completion menu",
      mode = "n",
    },
  },
  opts = {
    completion = {
      ghost_text = {
        enabled = false,
      },
      keyword = {
        range = "full",
      },
      trigger = {
        show_on_keyword = true,
        show_on_insert_on_trigger_character = true,
      },
      menu = {
        auto_show = function()
          return vim.g.auto_show_completion
        end,
      },
    },
    keymap = {
      preset = "default",
      ["<c-space>"] = false, -- for switch input method
      ["<c-o>"] = { "show", "show_documentation", "hide_documentation", "fallback" },
      ["<c-h>"] = { "snippet_backward", "fallback" },
      ["<c-l>"] = { "snippet_forward", "fallback" },
      ["<c-k>"] = { "select_prev", "fallback" },
      ["<c-j>"] = { "select_next", "fallback" },
      ["<cr>"] = { "select_and_accept", "fallback" },
      ["<tab>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<s-tab>"] = { "snippet_backward", "fallback" },
    },
    cmdline = {
      keymap = {
        preset = "inherit",
        ["<tab>"] = { "show", "show_and_insert_or_accept_single", "select_next", "fallback" },
        ["<s-tab>"] = { "select_prev", "fallback" },
        ["<c-h>"] = false,
        ["<c-l>"] = false,
      },
      completion = {
        menu = {
          -- disable auto show menu in cmdline
          auto_show = false,
        },
      },
    },
  },
}
