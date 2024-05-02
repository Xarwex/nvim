return {
  "catppuccin/nvim",
  priority = 1000,
  opts = {
    flavour = "mocha"
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end
}