return {
	"theHamsta/nvim-dap-virtual-text",
	lazy = false,
	config = function(_, _)
		require("nvim-dap-virtual-text").setup()
	end,
	cond = not vim.g.vscode,
	enabled = false,
}
