local opt = vim.opt
local g = vim.g
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

opt.clipboard = "unnamedplus"
g.mapleader = " "
local plugins = require "plugins"

require("lazy").setup(plugins, {})

if not vim.g.vscode then
  require "mappings"
end