local M = {}

M.base_30 = {
    white = "#ebebeb",
    darker_black = "#2F3239",
    black = "#1c1c1e", --  nvim bg
    t_black = "#ff1c1c1e", --  nvim bg
    black2 = "#1F2431",
    one_bg = "#2a2a34",
    one_bg2 = "#34343e",
    one_bg3 = "#3e3e48",
    grey = "#ece3dc",
    grey_fg = "#867a78",
    grey_fg2 = "#54545e",
    light_grey = "#5a5a64",
    red = "#971411",
    baby_pink = "#B21889",
    pink = "#B21889",
    line = "#b16837", -- for lines like vertsplit
    green = "#7aa4a1",
    vibrant_green = "#8eb2af",
    blue = "#01a0e4",
    nord_blue = "#01a0e4",
    yellow = "#B16837",
    sun = "#fdb292",
    purple = "#ad5c7c",
    dark_purple = "#B21889",
    teal = "#AEDCB7",
    orange = "#A07E3B",
    cyan = "#b8dceb",
    statusline_bg = "#262630",
    lightbg = "#2e2e38",
    lightbg2 = "#2a2a34",
    pmenu_bg = "#ebb9b9",
    folder_bg = "#b8dceb",
}

M.base_16 = {
    base00 = '#131513',
    base01 = '#1C0B05',
    base02 = '#526466',
    base03 = '#B16837',
    base04 = '#010108',
    base05 = '#f4dcb8',
    base06 = '#971411',
    base07 = '#24140A',
    base08 = '#914848',
    base09 = '#CD9A76',
    base0A = '#4b8895',
    base0B = '#489963',
    base0C = '#b5e4f4',
    base0D = '#507ec9',
    base0E = '#d3897a',
    base0F = '#cdab53'
}

M = require("base46").override_theme(M, "darkness")

return M
