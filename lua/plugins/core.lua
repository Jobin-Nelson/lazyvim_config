local Util = require("lazyvim.util")

return {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fb", false },
    },
    dependencies = {
      "ghassan0/telescope-glyph.nvim",
      "xiyaowong/telescope-emoji.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    opts = function(_, opts)
      opts.pickers = {
        buffers = {
          mappings = {
            n = {
              ["d"] = "delete_buffer",
            },
          },
        },
      }
      require("telescope").load_extension("glyph")
      require("telescope").load_extension("emoji")
      require("telescope").load_extension("file_browser")
    end,
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
        enable = false,
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
    keys = {
      { "<leader>fe", false },
      { "<leader>fE", false },
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
      {
        "<leader>E",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
    },
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

  -- Notify transparency
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },

  -- Bufferline
  -- {
  --   "akinsho/bufferline.nvim",
  --   opts = {
  --     options = {
  --       mode = "tabs",
  --     },
  --   },
  -- },
}
