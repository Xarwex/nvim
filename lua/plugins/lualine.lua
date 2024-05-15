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
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "arkav/lualine-lsp-progress"
  },
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
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      -- extensions = { "nvim-tree", "toggleterm" },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "mode",
            fmt = function(mode, _)
              if not tbl[mode] then
                return mode
              end
              return " " .. tbl[mode] -- cheat out the padding a bit
            end,
          },
          {
            "branch",
            icons_enabled = false,
          },
          {
            "buffers",
            hide_filename_extension = true,
            symbols = {
              alternate_file = "", --"[ᛝ] ",
            },
          },
          "diagnostics",
          "diff",
          {
            "lsp_progress",
            -- colors = {
            --   percentage      = colors.cyan,
            --   title           = colors.cyan,
            --   message         = colors.cyan,
            --   spinner         = colors.cyan,
            --   lsp_client_name = colors.magenta,
            --   use             = true,
            -- },
            separators = {
              component = ' ',
              progress = ' | ',
              message = { pre = '(', post = ')' },
              percentage = { pre = '', post = '%% ' },
              title = { pre = '', post = ': ' },
              lsp_client_name = { pre = '[', post = ']' },
              spinner = { pre = '', post = '' },
              -- message = { commenced = 'In Progress', completed = 'Completed' },
            },
            display_components = { 'lsp_client_name', 'spinner' },
            timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
            spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
          }
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
