local M = {}

M.map = function(mode, keys, action, opts)
    local options = { noremap=true, silent=true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, keys, action, options)
end

return M