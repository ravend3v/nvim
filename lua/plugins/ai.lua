return {
  {
    "github/copilot.vim",

    event = "InsertEnter",

    init = function()
      vim.g.copilot_no_tab_map = true
    end,

    keys = {
      {
        "<M-l>",
        'copilot#Accept("<CR>")',
        mode = "i",
        expr = true,
        replace_keycodes = false,
        desc = "Accept Copilot suggestion",
      },

      {
        "<M-]>",
        "<Plug>(copilot-next)",
        mode = "i",
        desc = "Next Copilot suggestion",
      },

      {
        "<M-[>",
        "<Plug>(copilot-previous)",
        mode = "i",
        desc = "Previous Copilot suggestion",
      },

      {
        "<M-\\>",
        "<Plug>(copilot-dismiss)",
        mode = "i",
        desc = "Dismiss Copilot suggestion",
      },
    },
  },

  {
    "olimorris/codecompanion.nvim",

    cmd = {
      "CodeCompanion",
      "CodeCompanionChat",
      "CodeCompanionActions",
      "CodeCompanionCLI",
    },

    keys = {
      {
        "<leader>aa",
        "<cmd>CodeCompanionChat Toggle<cr>",
        desc = "AI chat",
      },

      {
        "<leader>ac",
        "<cmd>CodeCompanionActions<cr>",
        desc = "AI actions",
      },

      {
        "<leader>ai",
        "<cmd>CodeCompanion<cr>",
        mode = { "n", "v" },
        desc = "AI inline",
      },

      {
        "<leader>ag",
        "<cmd>CodeCompanionCLI<cr>",
        desc = "AI agent",
      },
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },

    opts = {
      interactions = {
        chat = {
          adapter = "copilot",
        },

        inline = {
          adapter = "copilot",
        },

        cmd = {
          adapter = "copilot",
        },

        background = {
          adapter = "copilot",
        },

        cli = {
          agent = "copilot_cli",

          agents = {
            copilot_cli = {
              cmd = "copilot",

              args = {},

              description = "GitHub Copilot CLI",

              provider = "terminal",
            },
          },
        },
      },

      rules = {
        default = {
          description = "Project AI instructions",

          files = {
            ".github/copilot-instructions.md",
            "AGENTS.md",
            "CLAUDE.md",
            ".cursorrules",
            ".rules",
          },
        },
      },

      display = {
        action_palette = {
          width = 95,
          height = 20,
        },

        chat = {
          show_settings = false,
          show_header_separator = true,
        },

        diff = {
          enabled = true,
          close_chat_at = 240,
        },
      },

      opts = {
        log_level = "ERROR",
      },
    },
  },
}
