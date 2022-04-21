-- /lua/custom/plugins/init.lua
return {
    { "elkowar/yuck.vim", ft = "yuck" },
    { "ellisonleao/glow.nvim", cmd = "Glow" },
    { "williamboman/nvim-lsp-installer" },
    {
      "Pocco81/AutoSave.nvim",
        config = function()
          local autosave = require "autosave"
          vim.g.autosave = true
          autosave.setup {
            enabled = true,
            execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
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
    {
      "jose-elias-alvarez/null-ls.nvim",
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
    },
    {
      "p00f/nvim-ts-rainbow",
    },
    {
      "tzachar/cmp-tabnine",
      run = "./install.sh",
      requires = "hrsh7th/nvim-cmp",
      event = "InsertEnter",
    },
    {
      'wfxr/minimap.vim',
      run = "cargo install --locked code-minimap",
      -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
      config = function ()
        vim.cmd ("let g:minimap_width = 10")
        vim.cmd ("let g:minimap_auto_start = 1")
        vim.cmd ("let g:minimap_auto_start_win_enter = 1")
      end,
    },
}

 -- just an example!
