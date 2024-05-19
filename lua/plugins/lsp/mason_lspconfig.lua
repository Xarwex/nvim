return {
	"williamboman/mason-lspconfig.nvim",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason.nvim",
	},
	opts = {
		ensure_installed = { "lua_ls" },
	},
	config = function(_, opts)
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		mason_lspconfig.setup(opts)
		mason_lspconfig.setup_handlers({
			-- default handler for each server
			function(server_name)
				lspconfig[server_name].setup({})
			end,
		})
	end,
	cond = not vim.g.vscode,
}
