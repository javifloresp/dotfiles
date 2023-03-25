return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.highlight = { enable = true }

    opts.indent = { enable = true, disable = { "python" } }

    opts.context_commentstring = { enable = true, enable_autocmd = false }

    opts.ensure_installed = {
      "bash",
      "c",
      "help",
      "html",
      "css",
      "javascript",
      "json",
      "lua",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "go",
      "php",
      "vim",
      "yaml",
    }

    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "typescript", "tsx" })
      vim.list_extend(opts.ensure_installed, { "json", "json5", "jsonc" })
    end
  end,
}
