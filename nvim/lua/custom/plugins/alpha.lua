local if_nil = vim.F.if_nil

local default_header = {
    type = "text",
    val = {
        '                      ▄▄▄██▀▀▀▄▄▄    ██▒   █▓ ██▓  ██████                        ',
        '                        ░██  ▒██  ▀█▄▓██  █▒░▒██▒░ ▓██▄                          ',
        '                     ▓██▄██▓ ░██▄▄▄▄██▒██ █░░░██░  ▒   ██▒                       ',
        '                      ▓███▒   ▓█   ▓██▒▒▀█░  ░██░▒██████▒▒                       ',
        '                      ▒▓▒▒░   ▒▒   ▓▒█░░ ▐░  ░▓  ▒ ▒▓▒ ▒ ░                       ',
        '                      ▒ ░▒░    ▒   ▒▒ ░░ ░░   ▒ ░░ ░▒  ░ ░                       ',
        '                      ░ ░ ░    ░   ▒     ░░   ▒ ░░  ░  ░                         ',
        '▓█████▄  ▄▄▄        ██████░ ██░ ██ ░▄▄▄▄  ░ ▒█████   ▄▄▄       ██▀███  ▓█████▄   ',
        '▒██▀ ██▌▒████▄    ▒██    ▒ ▓██░ ██▒▓█████▄ ▒██▒  ██▒▒████▄    ▓██ ▒ ██▒▒██▀ ██▌  ',
        '░██   █▌▒██  ▀█▄  ░ ▓██▄   ▒██▀▀██░▒██▒ ▄██▒██░  ██▒▒██  ▀█▄  ▓██ ░▄█ ▒░██   █▌  ',
        '░▓█▄   ▌░██▄▄▄▄██   ▒   ██▒░▓█ ░██ ▒██░█▀  ▒██   ██░░██▄▄▄▄██ ▒██▀▀█▄  ░▓█▄   ▌  ',
        '░▒████▓  ▓█   ▓██▒▒██████▒▒░▓█▒░██▓░▓█  ▀█▓░ ████▓▒░ ▓█   ▓██▒░██▓ ▒██▒░▒████▓   ',
        ' ▒▒▓  ▒  ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░▒▓███▀▒░ ▒░▒░▒░  ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ▒▒▓  ▒   ',
        ' ░ ▒  ▒   ▒   ▒▒ ░░ ░▒  ░ ░ ▒ ░▒░ ░▒░▒   ░   ░ ▒ ▒░   ▒   ▒▒ ░  ░▒ ░ ▒░ ░ ▒  ▒   ',
        ' ░ ░  ░   ░   ▒   ░  ░  ░   ░  ░░ ░ ░    ░ ░ ░ ░ ▒    ░   ▒     ░░   ░  ░ ░  ░   ',
        '   ░          ░  ░      ░   ░  ░  ░ ░          ░ ░        ░  ░   ░        ░      ',
        ' ░                                       ░                              ░        ',
    },
    opts = {
        position = "center",
        hl = "AlphaHeader",
    },
}

local footer = {
    type = "text",
    val = "",
    opts = {
        position = "center",
        hl = "Number",
    },
}

local leader = "SPC"

local function button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        text = txt,
        shortcut = sc,
        cursor = 5,
        width = 36,
        align_shortcut = "right",
        hl = "AlphaButtons",
    }

    if keybind then
        opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
    end

    return {
        type = "button",
        val = txt,
        on_press = function()
            local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
        end,
        opts = opts,
    }
end

local buttons = {
    type = "group",
    val = {
        button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
        button("SPC f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
        button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
        button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
        button("SPC t h", "  Themes  ", ":Telescope themes<CR>"),
        button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
    },
    opts = {
        spacing = 1,
    },
}

local section = {
    header = default_header,
    buttons = buttons,
    footer = footer,
}

local config = {
    layout = {
        { type = "padding", val = 2 },
        section.header,
        { type = "padding", val = 2 },
        section.buttons,
        section.footer,
    },
    opts = {
        margin = 5,
    },
}

return {
    button = button,
    section = section,
    config = config,
    -- theme config
    leader = leader,
    -- deprecated
    opts = config,
}
