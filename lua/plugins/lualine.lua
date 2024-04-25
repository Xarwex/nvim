local tbl = {
  INSERT = "ᛃ",
  NORMAL = "ᚱ",
  VISUAL = "ᛉ",
  ["V-LINE"] = "ᚾ",
  ["V-BLOCK"] = "ᛜ",
  COMMAND = "ᚨ",
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = function()
    return {
      options = {
        globalstatus = true,
        always_divide_middle = true,
        disabled_filetypes = {
          "TelescopePrompt",
          "NvimTree",
          "toggleterm",
        },
        component_separators = { left = " ", right = " " },
        section_separators = { left = " ", right = " " },
      },
      -- extensions = { "nvim-tree", "toggleterm" },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "mode",
            fmt = function(mode, _)
              -- return mode
              if not tbl[mode] then
                return mode
              end
              return "[" .. tbl[mode] .. "]"
            end,
          },
          "branch",
          {
            "buffers",
            hide_filename_extension = true,
            symbols = {
              alternate_file = "", --"[ᛝ] ",
            },
          },
          "diagnostics",
          "diff",
        },
        lualine_x = {
          {
            "filename",
            path = 1, -- relative path
            symbols = {
              modified = "",
              readonly = "[ᛟ]",
              unnamed = "",
            },
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
  cond = not vim.g.vscode,
}
