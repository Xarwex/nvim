return {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	event = { "BufReadPre", "BufNewFile", "VeryLazy" },
	config = function(_, opts)
		local lspconfig = require("lspconfig")
		-- don't set up RA as it is set up in another extension

		lspconfig.pylsp.setup({
			settings = {
				pylsp = {
					plugins = {
						pycodestyle = {
							enabled = false, -- using ruff instead
						},
					},
				},
			},
		})
	end,
	cond = not vim.g.vscode,
}
