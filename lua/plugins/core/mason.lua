return {
	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
	event = "BufReadPre",
	ensure_installed = { "stylua", "ruff" },
  opts = {log_level = vim.log.levels.DEBUG},
	config = function(_, opts)
		require("mason").setup(opts)
	end,
	cond = not vim.g.vscode,
}
