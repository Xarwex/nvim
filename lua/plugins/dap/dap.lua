return {
	"mfussenegger/nvim-dap",
	keys = {
		{
			"<F5>",
			function()
				require("dap").continue()
			end,
			desc = "Continue",
		},
		{
			"<F10>",
			function()
				require("dap").step_over()
			end,
			desc = "Step over",
		},
		{
			"<F11>",
			function()
				require("dap").step_into()
			end,
			desc = "Step into",
		},
		{
			"<F12>",
			function()
				require("dap").step_out()
			end,
			desc = "Step out",
		},
		{
			"<Leader>b",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Toggle breakpoint",
		},
		{
			"<Leader>B",
			function()
				require("dap").set_breakpoint()
			end,
			desc = "Set breakpoint",
		},
		{
			"<Leader>lp",
			function()
				require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end,
			desc = "Set breakpoint with message",
		},
		{
			"<Leader>dr",
			function()
				require("dap").repl.open()
			end,
			desc = "Open repl",
		},
		{
			"<Leader>dl",
			function()
				require("dap").run_last()
			end,
			desc = "Run last",
		},

		{
			"<Leader>df",
			function()
				local widgets = require("dap.ui.widgets")
				widgets.centered_float(widgets.frames)
			end,
			desc = "Centered float frames",
		},
		{
			"<Leader>ds",
			function()
				local widgets = require("dap.ui.widgets")
				widgets.centered_float(widgets.scopes)
			end,
			desc = "Centered float scopes",
		},

		{
			"<Leader>dh",
			function()
				require("dap.ui.widgets").hover()
			end,
			desc = "Hover",
			mode = { "n", "v" },
		},
		{
			"<Leader>dp",
			function()
				require("dap.ui.widgets").preview()
			end,
			desc = "Preview",
			mode = { "n", "v" },
		},
		{
			"<leader>do",
			function()
				require("dapui").open()
			end,
			desc = "Open dapui",
		},
		{
			"<leader>dc",
			function()
				require("dapui").close()
			end,
			desc = "Close dapui",
		},
		{
			"<leader>dl",
			function()
				require("dap.ext.vscode").load_launchjs(nil, { lldb = { "rust" } })
			end,
			desc = "Reload json",
		},
	},
	config = function()
		-- require("dap.ext.vscode").load_launchjs(nil, { lldb = { "rust" } })
		-- require("dap").configurations = {
		-- 	rust = function()
		-- 		local dap_configurations = 				return dap_configurations
		-- 	end,
		-- }
		local dap = require("dap")
		local lldb_path = vim.fn.trim(vim.fn.system("which lldb-dap"))
		dap.adapters.lldb = {
			type = "executable",
			command = lldb_path, -- adjust as needed, must be absolute path
			name = "lldb",
		}
	end,
	cond = not vim.g.vscode,
}
