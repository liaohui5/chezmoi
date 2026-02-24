return {
  -- https://github.com/folke/snacks.nvim
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    {
      "<leader>.",
      function()
        Snacks.scratch()
      end,
      desc = "Toggle Scratch Buffer",
    },
    {
      "<leader>S",
      function()
        Snacks.scratch.select()
      end,
      desc = "Select Scratch Buffer",
    },
  },
  opts = {
    scroll = {
      enabled = false,
    },
    dim = {
      enabled = false,
    },
    zen = {
      enabled = false,
    },
    indent = {
      enabled = true,
      scope = {
        enabled = false,
      },
    },
    terminal = {
      win = {
        on_buf = function(self)
          if self.opts.position ~= "bottom" then
            return
          end

          -- just set bottom terminals
          self.opts.height = 0.3
          self.opts.wo.winbar = string.format("  %s:%s", self.id, vim.o.shell)
        end,
      },
    },
  },
}
