return {
	"fynnfluegge/monet.nvim",
	name = "monet",
	opts = {
		transparent_background = true,
		semantic_tokens = true,
		dark_mode = true,
	},
	config = function(_, opts)
		require("monet").setup(opts)
		vim.cmd.colorscheme("monet")
	end,
	enabled = false,
}
