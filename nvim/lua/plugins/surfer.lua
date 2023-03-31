return {
    "ziontee113/syntax-tree-surfer",
    opts = function(_, opts)
        -- Syntax Tree Surfer
        opts = { noremap = true, silent = true }

        local defaultSettings = {
            silent = true,
            expr = true,
        }

        local DownNormal = function()
            vim.opt.opfunc = "v:lua.STSSwapDownNormal_Dot"
            return "g@l"
        end

        local UpNormal = function()
            vim.opt.opfunc = "v:lua.STSSwapUpNormal_Dot"
            return "g@l"
        end

        local PrevNormal = function()
            vim.opt.opfunc = "v:lua.STSSwapCurrentNodePrevNormal_Dot"
            return "g@l"
        end

        local NextNormal = function()
            vim.opt.opfunc = "v:lua.STSSwapCurrentNodeNextNormal_Dot"
            return "g@l"
        end

        -- Normal Mode Swapping:
        -- Swap The Master Node relative to the cursor with it's siblings, Dot Repeatable
        vim.keymap.set("n", "vU", UpNormal, defaultSettings)

        vim.keymap.set("n", "vD", DownNormal, defaultSettings)

        -- Swap Current Node at the Cursor with it's siblings, Dot Repeatable
        vim.keymap.set("n", "vu", PrevNormal, defaultSettings)

        vim.keymap.set("n", "vd", NextNormal, defaultSettings)

        --> If the mappings above don't work, use these instead (no dot repeatable)
        -- vim.keymap.set("n", "vd", '<cmd>STSSwapCurrentNodeNextNormal<cr>', opts)
        -- vim.keymap.set("n", "vu", '<cmd>STSSwapCurrentNodePrevNormal<cr>', opts)
        -- vim.keymap.set("n", "vD", '<cmd>STSSwapDownNormal<cr>', opts)
        -- vim.keymap.set("n", "vU", '<cmd>STSSwapUpNormal<cr>', opts)

        -- Visual Selection from Normal Mode
        vim.keymap.set("n", "vx", "<cmd>STSSelectMasterNode<cr>", opts)
        vim.keymap.set("n", "vn", "<cmd>STSSelectCurrentNode<cr>", opts)

        -- Select Nodes in Visual Mode
        vim.keymap.set("x", "J", "<cmd>STSSelectNextSiblingNode<cr>", opts)
        vim.keymap.set("x", "K", "<cmd>STSSelectPrevSiblingNode<cr>", opts)
        vim.keymap.set("x", "H", "<cmd>STSSelectParentNode<cr>", opts)
        vim.keymap.set("x", "L", "<cmd>STSSelectChildNode<cr>", opts)

        -- Swapping Nodes in Visual Mode
        vim.keymap.set("x", "<A-j>", "<cmd>STSSwapNextVisual<cr>", opts)
        vim.keymap.set("x", "<A-k>", "<cmd>STSSwapPrevVisual<cr>", opts)
    end,
}
