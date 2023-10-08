local opt = vim.opt
local g = vim.g

opt.clipboard = "unnamedplus"
g.mapleader = " "

local M = {}
M.plugins = require "core.plugins"
return M