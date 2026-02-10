return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right",
      },
    }
  },
  {
    "hrsh7th/nvim-cmp",
    config = function(_, opts)
      local cmp = require("cmp")

      -- Ensure mapping table exists
      opts.mapping = opts.mapping or {}

      -- Remove Enter confirmation entirely
      opts.mapping["<CR>"] = nil

      -- Accept completion ONLY with Ctrl+y
      opts.mapping["<C-y>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      })

      -- Apply FULL config (sources, snippets, everything)
      cmp.setup(opts)
    end,
  },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "odin"
  		},

      highlight = {
        enable = true,
        use_languagetree = true,
      },

      indent = { enable = true },
  	},
  },
    {
   "stevearc/conform.nvim",
   opts = {
      notify_on_error = false,
      -- Odinfmt gets its configuration from odinfmt.json. It defaults
      -- writing to stdout but needs to be told to read from stdin.
      formatters = {
         odinfmt = {
            -- Change where to find the command if it isn't in your path.
            command = "odinfmt",
            args = { "-stdin" },
            stdin = true,
         },
      },
      -- and instruct conform to use odinfmt.
      formatters_by_ft = {
         odin = { "odinfmt" },
      },
   },
}
}
