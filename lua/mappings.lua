local wk = require("which-key")
local ss = require("smart-splits")
local telescope_builtin = require("telescope.builtin")

wk.add({
	{ "<Esc>", ":noh <CR>", desc = "Clear highlights" },
	{ "<C-h>", ss.move_cursor_left, desc = "Window left" },
	{ "<C-l>", ss.move_cursor_right, desc = "Window right" },
	{ "<C-j>", ss.move_cursor_down, desc = "Window down" },
	{ "<C-k>", ss.move_cursor_up, desc = "Window up" },
	{
		group = "telescope",
		{ "<leader>ft", ":Telescope <CR>", desc = "Telescope" },
		{ "<leader>ff", ":Telescope find_files <CR>", desc = "Find files" },
		{
			"<leader>fa",
			":Telescope find_files follow=true no_ignore=true hidden=true <CR>",
			desc = "Find in all files",
		},
		{ "<leader>fw", ":Telescope live_grep_args <CR>", desc = "Live grep" },
		{ "<leader>fb", ":Telescope buffers <CR>", desc = "Buffers" },
		{ "<leader>fh", ":Telescope help_tags <CR>", desc = "Help" },
		{ "<leader>fo", ":Telescope oldfiles <CR>", desc = "Old files" },
		{ "<leader>fz", ":Telescope current_buffer_fuzzy_find <CR>", desc = "Fuzzy find in current buffer" },
		{ "<leader>fc", ":Telescope commands <CR>", desc = "Commands" },
		{ "<leader>fd", ":Telescope diagnostics <CR>", desc = "Diagnostics" },
		{
			"<leader>fe",
			function()
				telescope_builtin.diagnostics({ severity = "ERROR" })
			end,
			desc = "Error diagnostics",
		},
		{ "<leader>fr", ":Telescope resume <CR>", desc = "Resume" },
		{ "<leader>fp", ":Telescope pickers <CR>", desc = "Pickers" },
		{ "<leader>fn", ":Telescope noice <CR>", desc = "Noice" },
	},
	{
		group = "go",
		{ "<leader>gr", ":Telescope lsp_references <CR>", desc = "LSP references" },
		{ "<leader>gd", ":Telescope lsp_definitions <CR>", desc = "LSP definitions" },
		{ "<leader>gD", ":Telescope lsp_type_definitions <CR>", desc = "LSP type definitions" },
	},
	{
		group = "git",
		{ "<leader>tt", ":Telescope git_status <CR>", desc = "Git status" },
		{ "<leader>tg", ":Telescope git_commits <CR>", desc = "Git commits" },
		{ "<leader>tb", ":Gitsigns toggle_current_line_blame <CR>", desc = "Toggle git blame" },
		{ "<leader>td", ":Gitsigns toggle_deleted <CR>", desc = "Toggle deleted" },
	},
	{ "<leader>ll", require("lsp_lines").toggle, desc = "Toggle lsp lines" },
	{ "<leader>x", ":Bdelete <CR>", desc = "Close current" },
	{ "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", desc = "Code actions" },
	{ "<leader>w", ":HopWord <CR>", desc = "HopWord" },
	{ "<leader>e", ":NvimTreeFocus <CR>", desc = "Focus Tree" },
	{
		group = "tree",
		{ "<leader>ic", ":NvimTreeCollapse<CR>", desc = "Collapse" },
		{ "<leader>if", ":NvimTreeFindFile<CR>", desc = "Find file" },
	},
	{
		"<leader>b",
		group = "buffer",
		{ "x", ":%bd<CR>", desc = "Delete all buffers" },
		{ "o", ":%bd|e#|bd#<CR>", desc = "Delete all other buffers" },
	},
	{ "<leader>ra", ":lua vim.lsp.buf.rename() <CR>", desc = "Rename" },
	{ "<C-n>", ":NvimTreeToggle <CR>", desc = "Toggle Tree" },
	{ "<Tab>", ":bnext <CR>", desc = "Next buffer" },
	{ "<S-Tab>", ":bprev <CR>", desc = "Prev buffer" },
	{
		"<leader>/",
		"<Plug>(comment_toggle_linewise_current)",
		desc = "Toggle comment",
	},
	{ "K", ":lua vim.lsp.buf.hover() <CR>", desc = "Hover" },
	{ "]c", ":Gitsigns next_hunk <CR>", desc = "Next hunk" },
	{ "[c", ":Gitsigns prev_hunk <CR>", desc = "Previous hunk" },
	{
		"]g",
		function()
			vim.diagnostic.goto_next({ wrap = true })
		end,
		desc = "Next diagnostic",
	},
	{
		"[g",
		function()
			vim.diagnostic.goto_prev({ wrap = true })
		end,
		desc = "Previous diagnostic",
	},
	{
		"]e",
		function()
			vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR, wrap = true })
		end,
		desc = "Next error",
	},
	{
		"[e",
		function()
			vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR, wrap = true })
		end,
		desc = "Previous error",
	},
	{ "[q", ":cn", desc = "Next qf entry" },
	{ "]q", ":cp", desc = "Prev qf entry" },

	{
		mode = { "v" },
		{ "<leader>/", "<Plug>(comment_toggle_linewise_visual)", desc = "Toggle comment" },
		{ "rh", ":Gitsigns reset_hunk <CR>", desc = "Hunk" },
	},
})
