return {
	"theHamsta/nvim-dap-virtual-text",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	lazy = false,
	cond = not vim.g.vscode,
}
