----------------------------------------------------
--- github: https://github.com/mikavilpas/yazi.nvim
----------------------------------------------------
return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    keys = {
      -- disabled default keybindings
      { "<c-f>", false },
      { "<c-b>", false },
    },
  },
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<c-f>",
        "<cmd>Yazi<cr>",
        mode = "n",
        noremap = true,
        desc = "Open yazi file manager",
      },
      {
        "<c-n>",
        "<cmd>Yazi cwd<cr>",
        mode = "n",
        noremap = true,
        desc = "Open yazi file manager(Root)",
      },
    },
    opts = {
      open_for_directories = false,
      floating_window_scaling_factor = 0.8,
      yazi_floating_window_winblend = 1,
      keymaps = {
        show_help = "?",
        open_file_in_vertical_split = "<c-x>",
        open_file_in_horizontal_split = "<c-v>",
        send_to_quickfix_list = "<c-s>",
        -- must be install `grealpath` first(macOS: brew install coreutils)
        copy_relative_path_to_selected_files = "<c-y>",
        open_file_in_tab = false,
        grep_in_directory = false,
        replace_in_directory = false,
        cycle_open_buffers = false,
        change_working_directory = false,
      },
    },
  },
}
