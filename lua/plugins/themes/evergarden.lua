return {
	"comfysage/evergarden",
	opts = {
		transparent_background = false,
		contrast_dark = "hard", -- 'hard'|'medium'|'soft'
		overrides = {}, -- add custom overrides
	},
	config = function(_, opts)
		require("evergarden").setup(opts)
		vim.cmd.colorscheme("evergarden")
	end,
	enabled = false,
}
