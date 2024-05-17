local plugins_path = vim.fn.stdpath("config") .. "/lua/plugins/"
local plugins = vim.split(vim.fn.glob(plugins_path .. "**/*.lua"), "\n", { trimempty = true })
local M = {}

-- automatically load every plugin under plugins directory
for _, plugin in pairs(plugins) do
	-- 4 for .lua
	local plugin_name = string.sub(plugin, string.len(plugins_path) + 1, string.len(plugin) - 4)
	table.insert(M, require("plugins." .. plugin_name))
end

return M
