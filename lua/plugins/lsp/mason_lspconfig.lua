return {
	"williamboman/mason-lspconfig.nvim",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason.nvim",
	},
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer" },
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		require("mason-lspconfig").setup_handlers({
			-- default handler for each server
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,

			-- ["pyright"] = function()
			-- require("lspconfig").pyright.setup {
			--   pyright = {
			--     settings = {
			--       pyright = {
			--         disableOrganizeImports = true,   -- Using Ruff
			--       },
			--       python = {
			--         analysis = {
			--           ignore = { '*' },           -- Using Ruff
			--           typeCheckingMode = 'off',   -- Using mypy
			--         },
			--       },
			--     },
			--   }
			-- }

			["pylsp"] = function()
				require("lspconfig").pylsp.setup({
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
		})
	end,
	cond = not vim.g.vscode,
}
