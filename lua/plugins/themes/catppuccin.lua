return {
	"catppuccin/nvim",
	priority = 1000,
	opts = {
		flavour = "mocha",
		transparent_background = true,
		no_italic = true,
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin")
	end,
}
