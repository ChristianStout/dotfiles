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

  -- {
  --   "hrsh7th/nvim-cmp",
  --   config = function()
  --     local cmp = require("cmp")
  --
  --     cmp.setup({
  --       mapping = {
  --         -- ONLY accept completion with Ctrl+y
  --         ["<C-y>"] = cmp.mapping.confirm({
  --           behavior = cmp.ConfirmBehavior.Insert,
  --           select = false,
  --         }),
  --
  --         -- Enter does NOTHING related to cmp
  --         ["<CR>"] = cmp.mapping(function(fallback)
  --           fallback()
  --         end),
  --
  --         ["<C-e>"] = cmp.mapping.abort(),
  --         ["<C-n>"] = cmp.mapping.select_next_item(),
  --         ["<C-p>"] = cmp.mapping.select_prev_item(),
  --       },
  --     })
  --   end,
  -- },

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

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
