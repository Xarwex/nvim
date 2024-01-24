return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer" },
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
	end,
	cond = not vim.g.vscode,
}

