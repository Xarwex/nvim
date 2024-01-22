return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = function()
        return {
            hijack_unnamed_buffer_when_opening = true,
            view = {
                width = 50,
                centralize_selection = true,
                number = true,
                relativenumber = true,
                float = {
                    open_win_config = {
                        border = "shadow"
                    }
                }
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
