return {
    "xiyaowong/transparent.nvim",
    config = function()
        -- code
        require("transparent").setup({
            extra_groups = {},
            exclude_groups = {},
        })
    end,
}
