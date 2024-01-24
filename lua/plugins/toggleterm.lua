return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- shell = function()
    --   return '."' .. vim.fn.system('nu -c "(which nu).path.0"', {}, function (obj)
    --     return obj.stdout
    --   end) .. '"'
    -- end
    float_opts = {
      border = 'shadow'
    }
  }
}
