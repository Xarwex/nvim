local map = require("utils").map

local function notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

map('n', '<leader>gr', notify 'references-view.findReferences')
map('n', '<leader>ra', notify 'editor.action.rename')
map('n', '<leader>ca', notify 'editor.action.refactor')
map('n', '<leader>fw', notify 'workbench.action.findInFiles')
map('n', '<leader>ff', notify 'workbench.action.quickOpen')

return {}