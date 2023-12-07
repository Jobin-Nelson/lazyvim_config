return {
  -- Completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        buffers = {
          mappings = {
            n = {
              ["d"] = "delete_buffer",
            },
          },
        },
      },
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "org",
        "tsx",
        "typescript",
      })
      opts["highlight"] = {
        enable = true,
        additional_vim_regex_highlighting = { "org" },
      }
      opts["incremental_selection"] = {
        enable = false
      }
    end,
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "shellcheck",
        "bash-language-server",
      })
    end,
  },

  -- Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["h"] = "close_node",
          ["l"] = "open",
        },
      },
    },
  },
  -- Noice
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts= {
      background_colour = "#000000",
    }
  }
}
