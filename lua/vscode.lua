local map = require("utils").map

local function notify(cmd)
    return string.format("<cmd>lua require('vscode-neovim').call('%s')<CR>", cmd)
end

map('n', '<leader>gr', notify 'references-view.findReferences')
map('n', '<leader>ra', notify 'editor.action.rename')
map('n', '<leader>ca', notify 'editor.action.refactor')
map('n', '<leader>fw', notify 'workbench.action.findInFiles')
map('n', '<leader>ff', notify 'workbench.action.quickOpen')
map('n', '<leader>x', notify 'workbench.action.closeActiveEditor')
map('n', '<leader>/', notify 'editor.action.commentLine')

map('n', '<c-n>', notify 'workbench.action.toggleSidebarVisibility')
map('n', '<c-h>', notify 'workbench.action.navigateLeft')
map('n', '<c-l>', notify 'workbench.action.navigateRight')
map('n', '<c-j>', notify 'workbench.action.navigateDown')
map('n', '<c-k>', notify 'workbench.action.navigateUp')

map('n', '<tab>', notify 'workbench.action.nextEditor')
map('n', '<S-tab>', notify 'workbench.action.previousEditor')

return {}