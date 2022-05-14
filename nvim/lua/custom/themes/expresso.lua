local M = {}

M.base_30 = {
    white = "#dadad9",
    darker_black = "#3d3936",
    black = "#1d1916", --  nvim bg
    t_black = "#ff1c1c1e", --  nvim bg
    black2 = "#5c5957",
    one_bg = "#2a2a34",
    one_bg2 = "#34343e",
    one_bg3 = "#3e3e48",
    grey = "#ece3dc",
    grey_fg = "#867a78",
    grey_fg2 = "#54545e",
    light_grey = "#5a5a64",
    red = "#8f2d24",
    baby_pink = "#B21889",
    pink = "#B21889",
    line = "#b16837", -- for lines like vertsplit
    green = "#9cebaa",
    vibrant_green = "#8eb2af",
    blue = "#5e91a9",
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
    base00 = '#1d1916', --Default Background
    base01 = '#3d3936', --Lighter Background (Used for status bars, line number and folding marks)
    base02 = '#5c5957', --Selection Background
    base03 = '#7c7977', --Comments, Invisibles, Line Highlighting
    base04 = '#9b9a98', --Dark Foreground (Used for status bars)
    base05 = '#bbbab8', --Default Foreground, Caret, Delimiters, Operators
    base06 = '#dadad9', --Light Foreground (Not often used)
    base07 = '#fafaf9', --Light Background (Not often used)
    base08 = '#b09872', --Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#655d59', --Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#e0cdab', --Classes, Markup Bold, Search Text Background
    base0B = '#fafaf9', --Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#a29d94', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#e5685d', --Functions, Methods, Attribute IDs, Headings
    base0E = '#5e91a9', --Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#9cebaa', --Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
}

M = require("base46").override_theme(M, "expresso")

return M
