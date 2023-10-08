local hop = require "core.plugins.hop"
local plugins = vim.tbl_deep_extend("error", hop, {})
return plugins