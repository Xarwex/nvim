local tbl = {
    INSERT = "ᛃ",
    NORMAL = "ᚱ",
    VISUAL = "ᛉ",
    COMMAND = "ᚨ"
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
        return {
            options = {
                globalstatus = true,
                disabled_filetypes = {
                    "TelescopePrompt"
                },
                component_separators = { left = ' ', right = ' '},
            },
            extensions = { "nvim-tree" },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    {
                        'mode',
                        fmt = function(mode, _)
                            -- return mode
                            if not tbl[mode] then
                                return mode
                            end
                            return "[" .. tbl[mode] .. "]"
                        end
                    },
                    "branch",
                    "diff",
                    "diagnostics",
                    {
                        'buffers',
                        use_mode_colors = false,
                        symbols = {
                            -- modified = "[]",
                            alternate_file = "[ᛝ] "
                        }
                    } },
                lualine_x = { {
                    'filename',
                    path = 1, -- relative path
                    symbols = {
                        unnamed = '[ᛟ]'
                    }
                } },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        }
    end,
    config = function(_, opts)
        require 'lualine'.setup(opts)
    end,
    cond = not vim.g.vscode
}
