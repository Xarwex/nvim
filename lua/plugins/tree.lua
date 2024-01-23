return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    cmd = {
        "NvimTreeFocus",
        "NvimTreeToggle",
    },
    event = "VeryLazy",
    opts = function()
        return {
            view = {
                width = 50,
                centralize_selection = true,
                number = true,
                relativenumber = true,
            },
            renderer = {
                highlight_opened_files = "all",
                root_folder_label = false,
            }
        }
    end,
    config = function(_, opts)
        require("nvim-tree").setup(opts)
    end,
    cond = not vim.g.vscode,
}
