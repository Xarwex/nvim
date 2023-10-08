local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local core = require "core"

local crust = {}
if vim.g.vscode then
  crust = require "crust"
end

local plugins = vim.tbl_extend("force", core.plugins, crust)

require("lazy").setup(plugins, {})