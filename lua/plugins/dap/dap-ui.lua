return {
	"rcarriga/nvim-dap-ui",
	dependencies = "mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dap.defaults.fallback.force_external_terminal = true
		dapui.setup()
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		-- dap.listeners.before.event_terminated["dapui_config"] = function()
		-- 	dapui.close()
		-- end
		-- dap.listeners.before.event_exited["dapui_config"] = function()
		-- 	dapui.close()
		-- end
	end,
	cond = not vim.g.vscode,
}
