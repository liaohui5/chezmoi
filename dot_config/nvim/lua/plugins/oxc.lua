return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "oxfmt",
        "oxlint",
      },
    },
  },
  {
    -- for oxfmt
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      -- https://oxc.rs/docs/guide/usage/formatter.html#supported-languages
      local supported = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "toml",
        "json",
        "jsonc",
        "json5",
        "yaml",
        "html",
        "vue",
        "handlebars",
        "hbs",
        "css",
        "scss",
        "less",
        "graphql",
        "markdown",
        "mdx",
      }
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      for _, ft in ipairs(supported) do
        opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
        table.insert(opts.formatters_by_ft[ft], "oxfmt")
      end
      opts.formatters = opts.formatters or {}
      opts.formatters.oxfmt = {
        require_cwd = true,
      }
    end,
  },
  {
    -- for oxlint
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      local supported = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
        "astro",
      }
      opts.linters_by_ft = opts.linters_by_ft or {}
      for _, ft in ipairs(supported) do
        opts.linters_by_ft[ft] = opts.linters_by_ft[ft] or {}
        table.insert(opts.linters_by_ft[ft], "oxlint")
      end

      opts.linters = opts.linters or {}
      opts.linters.oxlint = {
        condition = function(ctx)
          return vim.fs.find({ ".oxlintrc.json", ".oxlintrc.jsonc" }, { path = ctx.filename, upward = true })[1]
        end,
      }
    end,
  },
}
