return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require 'lualine'.setup {
            options = {
                theme = 'everforest'
            }
        }
    end,
    cond = not vim.g.vscode
}
