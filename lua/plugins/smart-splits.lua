return {
	"mrjones2014/smart-splits.nvim",
	tag = "v1.3.3",
	lazy = false,
	opts = {
		at_edge = "stop",
	},
	config = function(_, opts)
		require("smart-splits").setup(opts)
	end,
}
