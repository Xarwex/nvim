return {
  "folke/neodev.nvim",
  dependencies = "neovim/nvim-lspconfig",
  ft = "lua",
  opts = {
    library = {
      plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
    },
    override = function(root_dir, options)
      options.enabled = true
      options.plugins = true
    end,
  },
  config = function(_, opts)
    require("neodev").setup(opts)
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      root_dir = lspconfig.util.root_pattern('.git')
    })
  end,
  cond = not vim.g.vscode
}
