-- /lua/custom/plugins/init.lua
return {
  ["filipdutescu/renamer.nvim"] = {
    branch = 'master',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      local mappings_utils = require('renamer.mappings.utils')
      require('renamer').setup {
        -- The popup title, shown if `border` is true
        title = 'Rename',
        -- The padding around the popup content
        padding = {
          top = 0,
          left = 0,
          bottom = 0,
          right = 0,
        },
        -- The minimum width of the popup
        min_width = 15,
        -- The maximum width of the popup
        max_width = 45,
        -- Whether or not to shown a border around the popup
        border = true,
        -- Whether or not to highlight the current word references through LSP
        show_refs = true,
        -- Whether or not to add resulting changes to the quickfix list
        with_qf_list = true,
        -- Whether or not to enter the new name through the UI or Neovim's `input`
        -- prompt
        with_popup = true,
        -- The keymaps available while in the `renamer` buffer. The example below
        -- overrides the default values, but you can add others as well.
        mappings = {
          ['<c-i>'] = mappings_utils.set_cursor_to_start,
          ['<c-a>'] = mappings_utils.set_cursor_to_end,
          ['<c-e>'] = mappings_utils.set_cursor_to_word_end,
          ['<c-b>'] = mappings_utils.set_cursor_to_word_start,
          ['<c-c>'] = mappings_utils.clear_line,
          ['<c-u>'] = mappings_utils.undo,
          ['<c-r>'] = mappings_utils.redo,
        },
        -- Custom handler to be run after successfully renaming the word. Receives
        -- the LSP 'textDocument/rename' raw response as its parameter.
        handler = nil,
      }
    end
  },
  ["SmiteshP/nvim-gps"] = {
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      local gps = require("nvim-gps")
      gps.setup {
        icons = {
          ["class-name"] = '  ', -- Classes and class-like objects
          ["function-name"] = '  ', -- Functions
          ["method-name"] = '  ', -- Methods (functions inside class-like objects)
          ["container-name"] = '  ', -- Containers (example: lua tables)
          ["tag-name"] = '  ' -- Tags (example: html tags)
        },
        separator = ' > ',

        -- limit for amount of context shown
        -- 0 means no limit
        depth = 0,

        -- indicator used when context hits depth limit
        depth_limit_indicator = ".."
      }
    end
  },
  ["danymat/neogen"] = {
    config = function()
      require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },
  ['rmagatti/goto-preview'] = {
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = false; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
      }
    end
  },
  ["karb94/neoscroll.nvim"] = {
    config = function()
      require("neoscroll").setup()
    end,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require 'alpha'.setup(require 'custom.plugins.alpha'.config)
    end
  },
  ["elkowar/yuck.vim"] = { ft = "yuck" },
  ["ellisonleao/glow.nvim"] = { cmd = "Glow" },
  ["williamboman/nvim-lsp-installer"] = {},
  ["Pocco81/AutoSave.nvim"] = {
    config = function()
      local autosave = require "autosave"
      autosave.setup {
        execution_message = "AutoSave:  saved at " .. vim.fn.strftime "%H:%M:%S",
        enabled = true,
        events = { "InsertLeave", "TextChanged" },
        conditions = {
          exists = true,
          filetype_is_not = {},
          modifiable = true,
        },
        clean_command_line_interval = 2500,
        on_off_commands = true,
        write_all_buffers = false,
      }
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },
  -- ["tzachar/cmp-tabnine"] = {
  --   run = "./install.sh",
  --   requires = "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  -- },
  ["p00f/nvim-ts-rainbow"] = {
    config = function()
      require("nvim-treesitter.configs").setup {
        highlight = {
          -- ...
        },
        -- ...
        rainbow = {
          enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        }
      }
      vim.cmd [[augroup rainbow]]
      vim.cmd [[	au BufEnter *     hi      TSPunctBracket NONE]]
      vim.cmd [[	au BufEnter *     hi link TSPunctBracket nonexistenthl]]
      vim.cmd [[	au BufEnter *.lua hi      TSConstructor  NONE]]
      vim.cmd [[	au BufEnter *.lua hi link TSConstructor  nonexistenthl]]
      vim.cmd [[augroup END]]
    end
  },
  ["rebelot/kanagawa.nvim"] = {},
  ["EdenEast/nightfox.nvim"] = {
    config = function()
      local nightfox = require "nightfox"

      nightfox.setup {
        options = {
          -- Compiled file's destination location
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = false, -- Disable setting background
          terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false, -- Non focused panes set to alternative background
          styles = { -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
          inverse = { -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          modules = { -- List of various plugins and additional options
            -- ...
          },
        }
      }
    end
  },
  ["srcery-colors/srcery-vim"] = { as = "srcery" },
  ["glepnir/oceanic-material"] = {},
  ["ayu-theme/ayu-vim"] = {}
}
-- just an example!