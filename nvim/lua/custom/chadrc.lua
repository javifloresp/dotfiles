-- Just an exampln, supposed to be placed in /lua/custom/
local M = {}

local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
  override = {
    ["hrsh7th/nvim-cmp"] = {
      config = function()
        require "custom.plugins.cmp"
      end,
    },
    ["feline-nvim/feline.nvim"] = {
      after = "nvim-web-devicons",
      config = function()
        require "custom.plugins.statusline"
      end,
    },
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "vim",
        "html",
        "css",
        "javascript",
        "json",
        "toml",
        "markdown",
        "c",
        "bash",
        "lua",
        "go",
        "typescript",
        "php",
      },
      indent = true,
      incremental_selection = {
        enable = true,
      },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
    },
    ["nvim-telescope/telescope.nvim"] = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--no-ignore-vsc"
        },
        initial_mode = "insert",
        prompt_prefix = "   ",
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        file_ignore_patterns = { "node_modules", ".git", "vendor", ".idea" },
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        }
      }
    },
    ["kyazdani42/nvim-tree.lua"] = {
      filters = {
        dotfiles = false,
      },
      disable_netrw = true,
      hijack_netrw = true,
      ignore_ft_on_setup = { "dashboard" },
      open_on_tab = false,
      hijack_cursor = true,
      hijack_unnamed_buffer_when_opening = false,
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
      view = {
        side = "right",
        width = 50,
        hide_root_folder = false,
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
    },
    ["NvChad/nvterm"] = {
      options = {
        terminals = {
          list = {},
          type_opts = {
            float = {
              relative = "editor",
              row = 0.3,
              col = 0.25,
              width = 0.5,
              height = 0.4,
              border = "single",
            },
            horizontal = { location = "rightbelow", split_ratio = 0.3 },
            vertical = { location = "rightbelow", split_ratio = 0.5 },
          },
        },
        behavior = {
          close_on_exit = true,
          auto_insert = true,
        },
        mappings = {
          toggle = {
            float = "<A-i>",
            horizontal = "<A-h>",
            vertical = "<A-v>",
          },
          new = {
            horizontal = "<leader>h",
            vertical = "<leader>v",
          },
        },
        enable_new_mappings = false,
      }
    },
  },
  remove = {},

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig", -- or any path
    },
    statusline = {
      separator_style = "flame", -- default/round/slant/block/arrow/flame
    },
  },
  -- add, modify, remove plugins
  user = userPlugins,
}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme           = "expresso",
  color           = "custom.themes.expresso",
  theme_toggle    = { "solarized", "expresso" },
  -- theme           = "solarized",
  transparency    = true,
  italic_comments = true,
}

M.mappings = require "custom.mappings"

M.options = {
  user = function()
    vim.opt.number         = true -- Show numbers on the left
    vim.opt.relativenumber = true -- Its better if you use motions like 10j or 5yk
    vim.opt.hlsearch       = true -- Highlight search results
    vim.g.autosave         = true
    vim.opt.softtabstop    = 4 -- On insert use 4 spaces for tab
    vim.opt.tabstop        = 4 -- Tab size of 4 spaces
    -- vim.opt.showmatch      = true -- Highlights the matching parenthesis
    -- vim.opt.ignorecase     = true -- Search ignoring case
    -- vim.opt.smartcase      = true -- Do not ignore case if the search patter has uppercase
    -- vim.opt.splitright     = true -- New vert splits are on the right
    -- vim.opt.splitbelow     = true -- New horizontal splits, like `:help`, are on the bottom window
    -- vim.opt.shiftwidth     = 0 -- Number of spaces to use for each step of (auto)indent
    -- vim.opt.expandtab      = true -- Use appropriate number of spaces (no so good for PHP but we can fix this in ft)
    -- vim.opt.wrap           = false -- Wrapping sucks (except on markdown)
    -- vim.opt.swapfile       = false -- Do not leave any backup files
    -- vim.opt.mouse          = "i" -- Enable mouse on insert mode
    -- -- vim.opt.showmatch      = true -- Highlights the matching parenthesis
    -- -- vim.opt.termguicolors  = true -- Required for some themes
    -- vim.opt.cursorline     = true -- Highlight the current cursor line (Can slow the UI)
    -- vim.opt.signcolumn     = "yes" -- Always show the signcolumn, otherwise it would shift the text
    -- vim.opt.hidden         = true -- Allow multple buffers
    -- vim.opt.completeopt    = { "menu", "menuone", "noselect", "noinsert" } -- Let the user decide about the autocomplete
    -- vim.opt.showmode       = false -- Remove the -- INSERT -- message at the bottom
    -- vim.opt.updatetime     = 750 -- I have a modern machine. No need to wait that long
    -- vim.opt.encoding       = "utf-8" -- Just in case
    -- vim.opt.cmdheight      = 2 -- Shows better messages
    -- vim.opt.relativenumber = true
  end,
}

return M
