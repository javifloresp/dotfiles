local M = {}

M.setup_lsp = function(attach, capabilities)
  -- local lsp_installer = require "nvim-lsp-installer"

  -- lsp_installer.settings {
  --     ui = {
  --         icons = {
  --             server_installed = "﫟",
  --             server_pending = "",
  --             server_uninstalled = "✗",
  --         },
  --     },
  -- }

  local lspconfig = require "lspconfig"

  -- lspservers with default config
  local servers = {
    "html",
    "cssls",
    "clangd",
    "tsserver",
    "gopls",
    "jsonls",
    "intelephense",
    "sumneko_lua",
  }

  for _, lsp in ipairs(servers) do
    local settings = {}

    if lsp == "intelephense" then
      settings = {
        intelephense = {
          stubs = {
            "bcmath",
            "bz2",
            "calendar",
            "Core",
            "curl",
            "date",
            "dba",
            "dom",
            "enchant",
            "fileinfo",
            "filter",
            "ftp",
            "gd",
            "gettext",
            "hash",
            "iconv",
            "imap",
            "intl",
            "json",
            "ldap",
            "libxml",
            "mbstring",
            "mcrypt",
            "mysql",
            "mysqli",
            "password",
            "pcntl",
            "pcre",
            "PDO",
            "pdo_mysql",
            "Phar",
            "readline",
            "recode",
            "Reflection",
            "regex",
            "session",
            "SimpleXML",
            "soap",
            "sockets",
            "sodium",
            "SPL",
            "standard",
            "superglobals",
            "sysvsem",
            "sysvshm",
            "tokenizer",
            "xml",
            "xdebug",
            "xmlreader",
            "xmlwriter",
            "yaml",
            "zip",
            "zlib",
            "wordpress",
            "woocommerce",
            "acf-pro",
            "wordpress-globals",
            "wp-cli",
            "genesis",
            "polylang"
          },
          files = {
            maxSize = 5000000;
          };
        }
      }
    end

    lspconfig[lsp].setup {
      settings = settings,
      on_attach = function(client, bufnr)
        attach(client, bufnr)
        -- change gopls server capabilities
        -- if lsp == "gopls" or lsp == "intelephense" then
        client.resolved_capabilities.document_formatting = true
        client.resolved_capabilities.document_range_formatting = true
        -- end

        if client.resolved_capabilities.document_formatting then
          vim.api.nvim_command [[ augroup Format ]]
          vim.api.nvim_command [[ autocmd! * <buffer> ]]
          vim.api.nvim_command [[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
          vim.api.nvim_command [[ augroup END ]]
        end

      end,
      capabilities = capabilities,
    }
  end

end

return M
