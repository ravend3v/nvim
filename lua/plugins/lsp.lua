return {
  {
    "mason-org/mason.nvim",

    opts = {
      ui = {
        border = "rounded",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",

    dependencies = {
      {
        "mason-org/mason-lspconfig.nvim",

        opts = {
          ensure_installed = {
            -- Lua
            "lua_ls",

            -- Web
            "ts_ls",
            "html",
            "cssls",
            "jsonls",
            "eslint",

            -- Python
            "pyright",

            -- Go
            "gopls",

            -- Rust
            "rust_analyzer",

            -- C / C++
            "clangd",

            -- Bash
            "bashls",

            -- YAML
            "yamlls",

            -- Docker
            "dockerls",
            "docker_compose_language_service",

            -- Terraform
            "terraformls",

            -- Markdown
            "marksman",

            -- Java
            "jdtls",

            -- Kotlin
            "kotlin_language_server",

            -- Zig
            "zls",
          },
        },
      },
    },

    config = function()
      -- Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },

            diagnostics = {
              globals = {
                "vim",
              },
            },

            workspace = {
              checkThirdParty = false,
            },

            telemetry = {
              enable = false,
            },
          },
        },
      })

      -- TypeScript / JavaScript
      vim.lsp.config("ts_ls", {
        settings = {
          javascript = {
            suggest = {
              completeFunctionCalls = true,
            },
          },

          typescript = {
            suggest = {
              completeFunctionCalls = true,
            },
          },
        },
      })

      -- Python
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "workspace",
              useLibraryCodeForTypes = true,
            },
          },
        },
      })

      -- Go
      vim.lsp.config("gopls", {
        settings = {
          gopls = {
            gofumpt = true,
            staticcheck = true,
            usePlaceholders = true,
          },
        },
      })

      -- Diagnostics
      vim.diagnostic.config({
        virtual_text = {
          spacing = 4,
          prefix = "●",
        },

        signs = true,

        underline = true,

        update_in_insert = false,

        severity_sort = true,

        float = {
          border = "rounded",
          source = "if_many",
        },
      })
    end,
  },
}
