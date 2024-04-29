return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function(_, _)
    local harpoon = require("harpoon")
    local wk = require("which-key")
    harpoon:setup()

    -- telescope config
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()
    end

    wk.register({
      ["<leader>"] = {
        h = {
          name = "harpoon",
          a = { function() harpoon:list():add() end, "Add buffer" },
          r = { function() harpoon:list():remove() end, "Remove buffer" },
          l = { function() toggle_telescope(harpoon:list()) end, "Show list" },
          j = { function() harpoon:list():next() end, "Next buffer" },
          k = { function() harpoon:list():prev() end, "Prev buffer" },
          x = { function() harpoon:list():clear() end, "Clear list" },
        }
      },
    })
  end,
  cond = not vim.g.vscode
}
