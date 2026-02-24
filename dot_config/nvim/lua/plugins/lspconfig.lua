return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    -- https://www.lazyvim.org/plugins/lsp#nvim-lspconfig
    inlay_hints = {
      enabled = false,
    },
    diagnostics = {
      virtual_text = false,
    },
    servers = {
      ["*"] = {
        keys = {
          { "<c-k>", false },
        },
      },
      emmet_language_server = {
        -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#emmet_language_server
        filetypes = {
          "html",
          "css",
          "less",
          "sass",
          "scss",
          "pug",
          "vue",
          "javascriptreact",
          "typescriptreact",
        },
      },
    },
  },
}
