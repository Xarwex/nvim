local wk = require("which-key")

wk.register({
  ["<Esc>"] = { ":noh <CR>", "Clear highlights" },
  ["<C-h>"] = { "<C-w>h", "Window left" },
  ["<C-l>"] = { "<C-w>l", "Window right" },
  ["<C-j>"] = { "<C-w>j", "Window down" },
  ["<C-k>"] = { "<C-w>k", "Window up" },
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
      c = { ":Telescope commands <CR>", "Commands" },
    },
    w = { ":HopWord <CR>", "HopWord" },
    g = {
      name = "go",
      r = { ":Telescope lsp_references <CR>", "LSP references" },
      d = { ":Telescope lsp_definitions <CR>", "LSP definitions" },
    },
    i = {
      name = "git",
      t = { ":Telescope git_status <CR>", "Git status" },
      m = { ":Telescope git_commits <CR>", "Git commits" },
    },
    e = { ":NvimTreeFocus <CR>", "Focus Tree" },
    ll = { require("lsp_lines").toggle, "Toggle lsp lines" },
    x = { ":bd|bprev<CR>", "Close current" },
  },
  ["<C-n>"] = { ":NvimTreeToggle <CR>", "Toggle Tree" },
  ["<Tab>"] = { ":bnext <CR>", "Next buffer" },
  ["<S-Tab>"] = { ":bprev <CR>", "Prev buffer" },
  ["<A-i>"] = { ":ToggleTerm direction=float <CR>", "Toggle floating terminal" },
})

wk.register({
  ["<A-i>"] = { "<cmd> ToggleTerm direction=float <CR>", "Toggle floating terminal" },
}, { mode = "t" })
