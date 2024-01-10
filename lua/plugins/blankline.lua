return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("indent_blankline").setup()
    end,
    cond = not vim.g.vscode
}
