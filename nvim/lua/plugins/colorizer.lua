return {
    "norcalli/nvim-colorizer.lua",
    name = "colorizer",
    config = function()
        -- Exclude some filetypes from highlighting by using `!`
        require("colorizer").setup({
            "*", -- Highlight all files, but customize some others.
            "!vim", -- Exclude vim from highlighting.
            -- Exclusion Only makes sense if '*' is specified!
        })
    end,
}
