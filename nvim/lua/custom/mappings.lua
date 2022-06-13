local M = {}

M.neogen = {
  n = {
    ["<leader>d"] = { "<cmd> lua require('neogen').generate()<CR>", "   add doc comment" },
  }
}

M.telescope = {
  n = {
    ["<C-a>"] = { ":Telescope find_files follow=true no_ignore=true hidden=true <CR> ", "  find media" },
    ["<C-e>"] = { "<cmd> Telescope buffers <CR>", "  find media" },
    ["<leader>gb"] = { "<cmd> Telescope git_branches <CR>", "  git branch -a" },
  },
}

M.goto_preview = {
  n = {
    ["<leader>gd"] = { "<cmd> lua require('goto-preview').goto_preview_definition()<CR>", " Live Preview" },
    ["<leader>gdb"] = { "<cmd> lua require('goto-preview').close_all_win()<CR>", " Close Live Preview" }
  }
}

M.ranamer = {
  n = {
    ["<leader>rn"] = { "<cmd> lua require('renamer').rename() <CR>", " Rename words" }
  }
}

M.nvterm = {

  n = {
    ["<C-S>h"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "   toggle horizontal term",
    },
    -- new

    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "   new horizontal term",
    },
  },
}


return M
