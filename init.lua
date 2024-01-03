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
local plugins = core.plugins

local ext = {}
if vim.g.vscode then
  ext = require "vscode"
else
  ext = require "crust"
end

if ext.plugins ~= nil then
  table.insert(plugins, ext.plugins)
end

require("lazy").setup(plugins, {})
