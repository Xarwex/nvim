return {
	"Shatur/neovim-session-manager",
	config = function(_, _)
		local config = require("session_manager.config")
		require("session_manager").setup({
			autoload_mode = config.AutoloadMode.CurrentDir,
			autosave_ignore_filetypes = {
				"gitcommit",
				"gitrebase",
				"zsh",
			},
		})
	end,
	cond = not vim.g.vscode,
}
