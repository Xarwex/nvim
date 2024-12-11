return {
	"theHamsta/nvim-dap-virtual-text",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	lazy = false,
	config = function(_, _)
		require("nvim-dap-virtual-text").setup()
	end,
	cond = not vim.g.vscode,
}
