return {
    "sainnhe/everforest",
    config = function()
        -- require("everforest").setup({})
        vim.cmd.colorscheme "everforest"
    end,
    cond = not vim.g.vscode
}
