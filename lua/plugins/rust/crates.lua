return {
	"saecki/crates.nvim",
	config = function()
		require("crates").setup()
	end,
	cond = not vim.g.vscode,
}
