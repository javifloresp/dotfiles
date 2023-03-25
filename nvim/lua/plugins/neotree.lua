return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            filtered_items = {
                visible = false, -- when true, they will just be displayed differently than normal items
                hide_dotfiles = true,
                hide_gitignored = true,
                hide_hidden = true, -- only works on Windows for hidden files/directories
                hide_by_name = {
                    --"node_modules"
                },
                hide_by_pattern = { -- uses glob style patterns
                    --"*.meta",
                    --"*/src/*/tsconfig.json",
                },
                always_show = { -- remains visible even if other settings would normally hide it
                    ".prettierrc",
                    ".prettierrc.json",
                    ".gitignore",
                    ".eslintrc.json",
                    ".eslintignore",
                    ".husky",
                    "plugins",
                    "stylua.toml",
                    ".neoconf.json",
                    "LICENSE",
                    "lazy-lock.json",
                    "init.lua",
                    ".yabairc",
                    ".skhdrc",
                },
                never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                    --".DS_Store",
                    --"thumbs.db"
                },
                never_show_by_pattern = { -- uses glob style patterns
                    --".null-ls_*",
                },
            },
        },
    },
}
