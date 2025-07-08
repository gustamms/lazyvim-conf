return {
  -- LSP PHP (intelephense)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              environment = {
                includePaths = { "vendor" },
              },
              files = {
                maxSize = 5000000,
              },
              completion = {
                fullyQualifyGlobalConstantsAndFunctions = true,
                triggerParameterHints = true,
                maxItems = 100,
              },
              diagnostics = {
                enable = true,
              },
              formatting = {
                enable = false,
              },
              telemetry = {
                enabled = false,
              },
            },
          },
        },
      },
    },
  },

  -- Formatter com conform.nvim (Pint + PHP CS Fixer)
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Adiciona os formatters para PHP
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.php = { "pint", "php_cs_fixer" }

      -- Define as configs dos formatters
      opts.formatters = opts.formatters or {}
      opts.formatters.php_cs_fixer = {
        command = "php-cs-fixer",
        args = { "fix", "--quiet" },
        stdin = false,
        cwd = require("conform.util").root_file({ ".php-cs-fixer.php", "composer.json" }),
      }

      -- Ativa autoformat ao salvar arquivos PHP
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.php",
        callback = function(args)
          require("conform").format({ bufnr = args.buf })
        end,
      })
    end,
  },

  -- Snippets PHP com LuaSnip + Friendly Snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
