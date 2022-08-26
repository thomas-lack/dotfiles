local M = {}

M.mappings = require "custom.mappings"

M.plugins = {
  user = require "custom.plugins.user",
  override = require "custom.plugins.override",
  remove = require "custom.plugins.remove",
}

return M
