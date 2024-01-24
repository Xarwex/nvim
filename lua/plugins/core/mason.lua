return {
	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
	event = "BufReadPre",
	ensure_installed = { "lua", "stylua" },
	config = function(_, opts)
		require("mason").setup(opts)
	end,
	cond = not vim.g.vscode,
}
