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
		"folke/noice.nvim",
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
						require("noice").api.status.mode["get"],
						cond = require("noice").api.status.mode["has"],
						color = { fg = "#ff9e64" },
					},
					{
						"filename",
						path = 1,
						shorting_target = 20,
						symbols = {
							modified = "",
							readonly = "[ᛟ]",
							unnamed = "",
						},
					},
					{
						"tabs",
						mode = 2,
					},
					-- {
					-- 	"branch",
					-- 	icons_enabled = false,
					-- },
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
