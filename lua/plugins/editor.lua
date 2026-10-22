return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    event = { "InsertEnter", "CmdlineEnter" },

    dependencies = { "rafamadriz/friendly-snippets" },

    opts = {
      keymap = { preset = "default" },
      appearance = { nerd_font_variant = "mono" },
      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 300 },
        menu = { border = "rounded" },
      },
      signature = { enabled = true },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" },
    },

    config = function(_, opts)
      require("blink.cmp").setup(opts)
      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      })
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      check_ts = true,
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer local keymaps (which-key)",
      },
    },
  },
}
