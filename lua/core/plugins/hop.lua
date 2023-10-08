local map = require("utils").map

return {
    "phaazon/hop.nvim",
    branch = 'v2',
    lazy = false,
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      map("n", "<leader><leader>w", ":HopWord<CR>")
    end
  }