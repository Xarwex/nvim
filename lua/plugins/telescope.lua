return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-live-grep-args.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	cmd = "Telescope",
	opts = {
		defaults = {
			file_ignore_patterns = { "^.rustup/" },
			layout_strategy = "horizontal",
			cache_picker = {
				num_pickers = 30,
				ignore_empty_prompt = true,
			},
		},
		extensions = {
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			},
			live_grep_args = {
				auto_quoting = true,
				layout_strategy = "vertical",
			},
		},
		extensions_list = { "live_grep_args", "fzf", "noice", "ui-select" },
	},
	config = function(_, opts)
		local telescope = require("telescope")
		local lga_actions = require("telescope-live-grep-args.actions")
		opts.extensions.live_grep_args.mappings = {
			i = {
				["<C-k>"] = lga_actions.quote_prompt(),
				["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
				["<C-t>"] = lga_actions.quote_prompt({ postfix = " -t" }),
			},
		}

		telescope.setup(opts)

		for _, ext in ipairs(opts.extensions_list) do
			telescope.load_extension(ext)
		end
	end,
	cond = not vim.g.vscode,
}
