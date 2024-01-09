local wk = require("which-key")
local cmp = require("cmp")
local luasnip = require("luasnip")

wk.register({
    ["<leader>"] = {
        f = {
            name = "telescope",
            t = { ":Telescope <CR>", "Telescope" },
            f = { ":Telescope find_files <CR>", "Find files" },
            a = { ":Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find in all files" },
            w = { ":Telescope live_grep_args <CR>", "Live grep" },
            b = { ":Telescope buffers <CR>", "Buffers" },
            h = { ":Telescope help_tags <CR>", "Help" },
            o = { ":Telescope oldfiles <CR>", "Old files" },
            z = { ":Telescope current_buffer_fuzzy_find <CR>", "Fuzzy find in current buffer" },
        },
        ["<leader>"] = {
            name = "hop",
            w = { ":HopWord <CR>", "HopWord" },
        },
        g = {
            name = "git",
            t = { ":Telescope git_status <CR>", "Git status"},
            m = { ":Telescope git_commits <CR>", "Git commits"},
        }
    },
    -- ["<Tab>"] = { function()
        
    -- end }
})
