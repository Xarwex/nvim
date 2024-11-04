return {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason-lspconfig.nvim", "saghen/blink.cmp" },
	event = { "BufReadPre", "BufNewFile", "VeryLazy" },
	config = function(_, opts)
		opts.servers = {
			pyright = {
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
								reportIncompatibleMethodOverride = "none",
							},
						},
					},
				},
			},
			ruff = {},
			nil_ls = {},
		}
		local lspconfig = require("lspconfig")
		-- don't set up RA as it is set up in another extension
		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,
	cond = not vim.g.vscode,
}
