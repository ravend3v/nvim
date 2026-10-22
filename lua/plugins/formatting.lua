return {
  {
    "stevearc/conform.nvim",

    event = {
      "BufWritePre",
    },

    opts = {
      formatters_by_ft = {
        lua = {
          "stylua",
        },

        python = {
          "ruff_format",
        },

        javascript = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        javascriptreact = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        typescript = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        typescriptreact = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        json = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        jsonc = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        css = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        html = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        yaml = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        markdown = {
          "prettierd",
          "prettier",
          stop_after_first = true,
        },

        go = {
          "gofumpt",
          "goimports",
        },

        rust = {
          "rustfmt",
        },

        sh = {
          "shfmt",
        },

        bash = {
          "shfmt",
        },

        sql = {
          "sql_formatter",
        },

        terraform = {
          "terraform_fmt",
        },

        zig = {
          "zigfmt",
        },
      },

      format_on_save = function(bufnr)
        -- Don't format huge files synchronously.
        local max_size = 1024 * 1024

        local ok, stats = pcall(
          vim.loop.fs_stat,
          vim.api.nvim_buf_get_name(bufnr)
        )

        if ok and stats and stats.size > max_size then
          return
        end

        return {
          timeout_ms = 1000,
          lsp_format = "fallback",
        }
      end,
    },
  },
}
