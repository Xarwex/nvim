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
				disabled_filetypes = {
					"TelescopePrompt",
					"NvimTree",
					"toggleterm",
				},
				component_separators = { left = " ", right = " " },
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
					"diff",
					"diagnostics",
					{
						"buffers",
						symbols = {
							alternate_file = "[ᛝ] ",
						},
					},
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
