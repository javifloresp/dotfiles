return {
    "SmiteshP/nvim-navic",
    lazy = true,
    init = function()
        vim.g.navic_silence = true
        require("lazyvim.util").on_attach(function(client, buffer)
            if client.server_capabilities.documentSymbolProvider then
                require("nvim-navic").attach(client, buffer)
            end
        end)
    end,
    opts = function()
        local icons = {
            File = " ",
            Module = " ",
            Namespace = " ",
            Package = " ",
            Class = " ",
            Method = " ",
            Property = " ",
            Field = " ",
            Constructor = " ",
            Enum = "練",
            Interface = "練",
            Function = " ",
            Variable = " ",
            Constant = " ",
            String = " ",
            Number = " ",
            Boolean = "◩ ",
            Array = " ",
            Object = " ",
            Key = " ",
            Null = "ﳠ ",
            EnumMember = " ",
            Struct = " ",
            Event = " ",
            Operator = " ",
            TypeParameter = " ",
            Copilot = "",
        }

        return {
            separator = " ",
            highlight = false,
            depth_limit = 5,
            icons = icons,
        }
    end,
}
