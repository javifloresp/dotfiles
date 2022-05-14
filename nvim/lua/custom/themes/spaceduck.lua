local M = {}

M.base_30 = {
    white = "#ffffff",
    darker_black = "#000000",
    black = "#0f111b", --  nvim bg
    t_black = "#ff1c1c1e", --  nvim bg
    black2 = "#1F2431",
    one_bg = "#2a2a34",
    one_bg2 = "#34343e",
    one_bg3 = "#3e3e48",
    grey = "#818596",
    grey_fg = "#c1c3cc",
    grey_fg2 = "#54545e",
    light_grey = "#5a5a64",
    red = "#e33400",
    baby_pink = "#B21889",
    pink = "#B21889",
    line = "#b16837", -- for lines like vertsplit
    green = "#5ccc96",
    vibrant_green = "#8eb2af",
    blue = "#01a0e4",
    nord_blue = "#01a0e4",
    yellow = "#f2ce00",
    sun = "#e39400",
    purple = "#7a5ccc",
    dark_purple = "#30365F",
    teal = "#AEDCB7",
    orange = "#A07E3B",
    cyan = "#00a3cc",
    statusline_bg = "#262630",
    lightbg = "#2e2e38",
    lightbg2 = "#2a2a34",
    pmenu_bg = "#ebb9b9",
    folder_bg = "#b8dceb",
}

M.base_16 = {
    base00 = "#0f111b", --Default Background
    base01 = "#000000", --Lighter Background (Used for status bars, line number and folding marks)
    base02 = "#1b1c36", --Selection Background
    base03 = "#192428", --Comments, Invisibles, Line Highlighting
    base04 = "#212C30", --Dark Foreground (Used for status bars)
    base05 = "#ecf0c1", --Default Foreground, Caret, Delimiters, Operators
    base06 = "#E3E1E0", --Light Foreground (Not often used)
    base07 = "#EDEBEA", --Light Background (Not often used)
    base08 = "#ecf0c1", --Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = "#ecd28b", --Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = "#f2ce00", --Classes, Markup Bold, Search Text Background
    base0B = "#00a3cc", --Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = "#6791C9", -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = "#5ccc96", --Functions, Methods, Attribute IDs, Headings
    base0E = "#7a5ccc", --Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = "#F16269", --Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
}

M = require("base46").override_theme(M, "spaceduck")

return M
