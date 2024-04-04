return {
  "marko-cerovac/material.nvim",
  config = function(_, opts)
    require("material").setup(opts)
    vim.cmd.colorscheme("material")
  end,
  enabled = false,
  cond = not vim.g.vscode
}
