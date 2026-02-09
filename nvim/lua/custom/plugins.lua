
{
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local custom_cmp = require("custom.configs.cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, custom_cmp.mapping)
  end,
},

