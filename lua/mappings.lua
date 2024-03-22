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
      d = { ":Telescope diagnostics <CR>", "Diagnostics" }
    },
    w = { ":HopWord <CR>", "HopWord" },
    g = {
      name = "go",
      r = { ":Telescope lsp_references <CR>", "LSP references" },
      d = { ":Telescope lsp_definitions <CR>", "LSP definitions" },
    },
    t = {
      name = "git",
      t = { ":Telescope git_status <CR>", "Git status" },
      m = { ":Telescope git_commits <CR>", "Git commits" },
      b = { ":Gitsigns toggle_current_line_blame <CR>", "Toggle git blame" },
      d = { ":Gitsigns toggle_deleted <CR>", "Toggle deleted" },
    },
    e = { ":NvimTreeFocus <CR>", "Focus Tree" },
    ll = { require("lsp_lines").toggle, "Toggle lsp lines" },
    x = { ":Bdelete <CR>", "Close current" },
    ca = { ":lua vim.lsp.buf.code_action()<CR>", "Code actions" },
    i = {
      name = "tree",
      c = { ":NvimTreeCollapse<CR>", "Collapse" },
      f = { ":NvimTreeFindFile<CR>", "Find file" },
    }
  },
  ["ra"] = { ":lua vim.lsp.buf.rename() <CR>", "Rename" },
  ["<C-n>"] = { ":NvimTreeToggle <CR>", "Toggle Tree" },
  ["<Tab>"] = { ":bnext <CR>", "Next buffer" },
  ["<S-Tab>"] = { ":bprev <CR>", "Prev buffer" },
  ["<A-i>"] = { ":ToggleTerm direction=float <CR>", "Toggle floating terminal" },
  ["<leader>/"] = {
    "<Plug>(comment_toggle_linewise_current)",
    "Toggle comment",
  },
  ["K"] = { ":lua vim.lsp.buf.hover() <CR>", "Hover" },
  ["]c"] = { ":Gitsigns next_hunk <CR>", "Next hunk" },
  ["[c"] = { ":Gitsigns prev_hunk <CR>", "Previous hunk" },
})

wk.register({
  ["<leader>/"] = {
    "<Plug>(comment_toggle_linewise_visual)",
    "Toggle comment",
  },
  r = {
    name = "reset",
    h = { ":Gitsigns reset_hunk <CR>", "Hunk" },
  },
}, { mode = "v" })

wk.register({
  ["<A-i>"] = { "<cmd> ToggleTerm direction=float <CR>", "Toggle floating terminal" },
  ["<C-x>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
}, { mode = "t" })
