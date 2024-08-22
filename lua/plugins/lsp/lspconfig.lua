return {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	event = { "BufReadPre", "BufNewFile", "VeryLazy" },
	config = function(_, _)
		local lspconfig = require("lspconfig")
		-- don't set up RA as it is set up in another extension
		lspconfig.pyright.setup({
			settings = {
				pyright = {
					disableOrganizeImports = true,
					disableTaggedHints = true,
				},
				python = {
					analysis = {
						diagnosticSeverityOverrides = {
							-- https://github.com/microsoft/pyright/blob/main/docs/configuration.md#type-check-diagnostics-settings
							reportUndefinedVariable = "none",
						},
					},
				},
			},
		})
		lspconfig.ruff.setup({})
	end,
	cond = not vim.g.vscode,
}
