return {
    "neovim/nvim-lspconfig",
    dependencies = "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cond = not vim.g.vscode
}
