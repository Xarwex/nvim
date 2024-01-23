return {
    "nvim-telescope/telescope-live-grep-args.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    cmd = { "Telescope", "Telescope live_grep_args" },
    cond = not vim.g.vscode
}
