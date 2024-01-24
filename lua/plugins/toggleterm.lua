return {
  "akinsho/toggleterm.nvim",
  dependencies = "EdenEast/nightfox.nvim",
  version = "*",
  config = function(_, _)
    require "toggleterm".setup({
      -- shell = function()
      --   return '."' .. vim.fn.system('nu -c "(which nu).path.0"', {}, function (obj)
      --     return obj.stdout
      --   end) .. '"'
      -- end
      highlights = {
        FloatBorder = {
          guifg = require('nightfox.palette').load('terafox').sel0
          -- guifg = "#293e40"
        }
      }
    })
  end,
}
