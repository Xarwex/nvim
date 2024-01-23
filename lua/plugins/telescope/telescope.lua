return {
  "nvim-telescope/telescope.nvim",
  dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } },
  cmd = "Telescope",
  opts = function()
    return {
      defaults = {
        cache_picker = {
          num_pickers = 30
        }
      },
      extensions_list = { "live_grep_args", "fzf" }
    }
  end,
  config = function(_, opts)
    local telescope = require "telescope"
    telescope.setup(opts)

    for _, ext in ipairs(opts.extensions_list) do
      telescope.load_extension(ext)
    end
  end,
  cond = not vim.g.vscode
}
