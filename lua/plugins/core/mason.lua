return {
    "williamboman/mason.nvim",
    ensure_installed = {"lua", "rust"},
    config = function(_, opts)
      require("mason").setup(opts)
    end,
    cond = not vim.g.vscode
}
