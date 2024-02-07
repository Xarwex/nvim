return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer", "ruff_lsp" },
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		require("mason-lspconfig").setup_handlers({
			-- default handler for each server
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		})
	end,
	cond = not vim.g.vscode,
}
