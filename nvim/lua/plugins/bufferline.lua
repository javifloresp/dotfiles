return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    version = "v3.*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
        { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
            color_icons = true,
            separator_style = "thick", --- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
            always_show_bufferline = true,
            diagnostics_indicator = function(_, _, diag)
                local icons = require("lazyvim.config").icons.diagnostics
                local ret = (diag.error and icons.Error .. diag.error .. " " or "") .. (diag.warning and icons.Warn .. diag.warning or "")
                return vim.trim(ret)
            end,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left",
                },
            },
        },
    },
}
