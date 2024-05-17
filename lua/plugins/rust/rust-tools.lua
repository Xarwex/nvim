return {
	"simrat39/rust-tools.nvim",
	ft = "rust",
	dependencies = "neovim/nvim-lspconfig",
	-- opts = function ()
	--   return require "custom.configs.rust-tools"
	-- end,
	opts = {
		tools = {
			runnables = {
				use_telescope = true,
			},
			inlay_hints = {
				auto = true,
				show_parameter_hints = false,
				parameter_hints_prefix = "",
				other_hints_prefix = "",
			},
		},

		-- all the opts to send to nvim-lspconfig
		-- these override the defaults set by rust-tools.nvim
		-- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
		server = {
			-- on_attach is a callback called when the language server attachs to the buffer
			on_attach = function(client, buffer) end,
			settings = {
				-- to enable rust-analyzer settings visit:
				-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
				["rust-analyzer"] = {
					-- enable clippy on save
					checkOnSave = {
						-- command = "clippy",
					},
				},
			},
		},
	},
	config = function(_, opts)
		require("rust-tools").setup(opts)
	end,
	cond = not vim.g.vscode,
}
