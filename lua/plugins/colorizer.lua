return {
	"norcalli/nvim-colorizer.lua",
	event = "VeryLazy",
	config = function(_, _)
		require("colorizer").setup()
	end,
	cond = not vim.g.vscode,
}
