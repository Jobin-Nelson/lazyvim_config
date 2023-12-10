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
    },
    opts = function(_, opts)
      local actions = require("telescope.actions")

      opts.defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
          i = {
            ["<C-s>"] = actions.cycle_previewers_next,
            ["<C-a>"] = actions.cycle_previewers_prev,
            ["<C-Down>"] = actions.cycle_history_next,
            ["<C-Up>"] = actions.cycle_history_prev,
          },
        },
      }
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

  -- Luasnip
  {
    "L3MON4D3/LuaSnip",
    opts = function(_, opts)
      require("luasnip.loaders.from_lua").load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
      local ls = require("luasnip")
      vim.keymap.set({ "i", "s" }, "<a-l>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end)
      vim.keymap.set({ "i", "s" }, "<a-h>", function()
        if ls.choice_active() then
          ls.change_choice(-1)
        end
      end)
    end,
  },
}
