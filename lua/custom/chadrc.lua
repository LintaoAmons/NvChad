-- Just an example, supposed to be placed in /lua/custom/
local pluginConfs = require("custom/plugins/configs")

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "gruvchad",
}

M.plugins = {
  override = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
  },
  user = require "custom/plugins"
}

M.mappings = require "custom.mappings"

return M
