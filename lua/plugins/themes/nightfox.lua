return {
    "EdenEast/nightfox.nvim",
    opts = function()
        return {
            options = {
                transparent = true
            }
        }
    end,
    priority = 1000,
    config = function(_, opts)
        require("nightfox").setup(opts)
        vim.cmd.colorscheme("terafox")
    end,
    cond = not vim.g.vscode,
}