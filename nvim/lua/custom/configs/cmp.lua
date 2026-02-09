local cmp = require("cmp")

return {
  mapping = {
    ["<C-y"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    },
    ["<CR>"] = cmp.mapping(function(fallback)
      fallback()
    end),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
  }
}

