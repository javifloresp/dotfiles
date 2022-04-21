 -- Just an exampln, supposed to be placed in /lua/custom/
local M = {}

-- /lua/custom/chadrc.lua
local userPlugins = require "custom.plugins" -- path to table
local userConfigPlugins = require "custom.plugins.configs" -- path to table

M.plugins = {
  install = userPlugins,
  default_plugin_config_replace = {
    nvim_tree = userConfigPlugins.nvimtree,
    telescope = userConfigPlugins.telescope,
    alpha = userConfigPlugins.alpha,
  },
  status = {
    colorizer = true,
    alpha = true, -- dashboard
    telescope_media = true, -- media
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig", -- or any path
    },
    nvimtree = {
      -- packerCompile required after changing lazy_load
      lazy_load = true,
    },
    statusline = {
      style = "arrow", -- default, round , slant , block , arrow
    },
  }
}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  hl_override = "custom.colors.highlights", 
  theme = "solarized",
  transparency = true,
  italic_comments = true,
}

return M
