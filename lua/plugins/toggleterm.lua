return {
	"akinsho/toggleterm.nvim",
	dependencies = "EdenEast/nightfox.nvim",
	version = "*",
	config = function(_, _)
		require("toggleterm").setup({
			-- shell = function()
			-- 	return '"' .. vim.fn.system({'nu', '-c', '(which nu).path.0'}) .. '"'
			-- end,
			highlights = {
				FloatBorder = {
					guifg = require("nightfox.palette").load("terafox").orange.dim,
					-- guifg = "#293e40"
				},
			},
		})
	end,
	cond = not vim.g.vscode,
}
