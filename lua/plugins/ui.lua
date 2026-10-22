return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      style = "moon",

      transparent = false,

      styles = {
        comments = {
          italic = true,
        },
        keywords = {
          italic = true,
        },
      },
    },

    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },

  {
    "folke/snacks.nvim",

    priority = 1000,

    lazy = false,

    opts = {
      bigfile = {
        enabled = true,
        notify = true,
        size = 2 * 1024 * 1024,
      },

      explorer = {
        enabled = true,
      },

      picker = {
        enabled = true,

        sources = {
          files = {
            hidden = true,
          },

          grep = {
            hidden = true,
          },
        },
      },

      indent = {
        enabled = true,
      },

      input = {
        enabled = true,
      },

      notifier = {
        enabled = true,
        timeout = 3000,
      },

      quickfile = {
        enabled = true,
      },

      scope = {
        enabled = true,
      },

      statuscolumn = {
        enabled = true,
      },

      words = {
        enabled = true,
      },
    },

    keys = {
      {
        "<leader><space>",
        function()
          Snacks.picker.smart()
        end,
        desc = "Find files",
      },

      {
        "<leader>ff",
        function()
          Snacks.picker.files()
        end,
        desc = "Find files",
      },

      {
        "<leader>fg",
        function()
          Snacks.picker.grep()
        end,
        desc = "Live grep",
      },

      {
        "<leader>fb",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Buffers",
      },

      {
        "<leader>fr",
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent files",
      },

      {
        "<leader>e",
        function()
          Snacks.explorer()
        end,
        desc = "Explorer",
      },

      {
        "<leader>lg",
        function()
          Snacks.lazygit()
        end,
        desc = "Lazygit",
      },

      {
        "<leader>gg",
        function()
          Snacks.lazygit()
        end,
        desc = "Lazygit",
      },
    },
  },
}
