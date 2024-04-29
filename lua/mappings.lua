local wk = require "which-key"
local ss = require "smart-splits"

wk.register({
  ["<Esc>"] = { ":noh <CR>", "Clear highlights" },
  ["<C-h>"] = { ss.move_cursor_left, "Window left" },
  ["<C-l>"] = { ss.move_cursor_right, "Window right" },
  ["<C-j>"] = { ss.move_cursor_down, "Window down" },
  ["<C-k>"] = { ss.move_cursor_up, "Window up" },

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
      d = { ":Telescope diagnostics <CR>", "Diagnostics" },
      r = { ":Telescope resume <CR>", "Resume" },
      p = { ":Telescope pickers <CR>", "Pickers" },

    },
    w = { ":HopWord <CR>", "HopWord" },
    g = {
      name = "go",
      r = { ":Telescope lsp_references <CR>", "LSP references" },
      d = { ":Telescope lsp_definitions <CR>", "LSP definitions" },
      D = { ":Telescope lsp_type_definitions <CR>", "LSP type definitions" },
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
    },
    b = {
      name = "buffer",
      x = { ":%bd<CR>", "Delete all buffers" },
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
  ["]g"] = { function() vim.diagnostic.goto_next({ wrap = true }) end, "Next diagnostic" },
  ["[g"] = { function() vim.diagnostic.goto_prev({ wrap = true }) end, "Previous diagnostic" },
  ["]e"] = { function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR, wrap = true }) end, "Next error" },
  ["[e"] = { function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR, wrap = true }) end, "Previous error" },

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
  ["<C-x>"] = { function() vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true) end, "Escape terminal mode" },
}, { mode = "t" })
