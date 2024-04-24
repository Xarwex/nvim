return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-live-grep-args.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  cmd = "Telescope",
  opts = {
    defaults = {
      layout_strategy = "vertical",
      cache_picker = {
        num_pickers = 30,
        ignore_empty_prompt = true,
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      }
    },
    extensions_list = { "live_grep_args", "fzf" }
  },
  config = function(_, opts)
    local telescope = require "telescope"
    telescope.setup(opts)

    for _, ext in ipairs(opts.extensions_list) do
      telescope.load_extension(ext)
    end
  end,
  cond = not vim.g.vscode
}
