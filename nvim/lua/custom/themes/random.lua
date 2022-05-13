local M = {}

M.base_30 = {
    white = "#ebebeb",
    darker_black = "#2F3239",
    black = "#131513", --  nvim bg
    black2 = "#25252f",
    one_bg = "#2a2a34",
    one_bg2 = "#34343e",
    one_bg3 = "#3e3e48",
    grey = "#484852",
    grey_fg = "#4e4e58",
    grey_fg2 = "#54545e",
    light_grey = "#5a5a64",
    red = "#E6193C",
    baby_pink = "#B21889",
    pink = "#B21889",
    line = "#292933", -- for lines like vertsplit
    green = "#7aa4a1",
    vibrant_green = "#8eb2af",
    blue = "#01a0e4",
    nord_blue = "#01a0e4",
    yellow = "#fda47f",
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
    base01 = '#87928A',
    base02 = '#b5e4f4',
    base03 = '#478C90',
    base04 = '#5F6D64',
    base05 = '#a5a2a2',
    base06 = '#d6d5d4',
    base07 = '#F4FBF4',
    base08 = '#E6193C',
    base09 = '#B21889',
    base0A = '#A07E3B',
    base0B = '#489963',
    base0C = '#b5e4f4',
    base0D = '#01a0e4',
    base0E = '#6C71C4',
    base0F = '#cdab53'
}

M = require("base46").override_theme(M, "random")

return M
