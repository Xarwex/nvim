return {
  "nvim-treesitter/nvim-treesitter",
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  event = "VeryLazy",
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    ensure_installed = {
      "lua",
      "rust",
      "python",
    },
    highlight = {
      enable = true,
      use_languagetree = true,
    },

    indent = { enable = true }
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  cond = not vim.g.vscode
}
