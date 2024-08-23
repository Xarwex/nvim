return {
	"nvim-neorg/neorg",
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	opts = {
		load = {
			["core.defaults"] = {},
			["core.concealer"] = {},
			["core.dirman"] = {
				config = {
					workspaces = {
						notes = "~/notes",
					},
					default_workspace = "notes",
					open_last_workspace = true,
					index = "index.norg",
					use_popup = false,
				},
			},
		},
	},
	config = function(_, opts)
		require("neorg").setup(opts)
		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
	end,
	cond = not vim.g.vscode,
}
