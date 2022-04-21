-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = require("core.utils").map
-- local project = os.getenv("PROJECT")
-- print(project)
-- GLOBALS
vim.opt.number         = true -- Show numbers on the left
vim.opt.relativenumber = true -- Its better if you use motions like 10j or 5yk
vim.opt.hlsearch       = true -- Highlight search results
vim.opt.ignorecase     = true -- Search ignoring case
vim.opt.smartcase      = true -- Do not ignore case if the search patter has uppercase
vim.opt.splitright     = true -- New vert splits are on the right
vim.opt.splitbelow     = true -- New horizontal splits, like `:help`, are on the bottom window
vim.opt.tabstop        = 4 -- Tab size of 4 spaces
vim.opt.softtabstop    = 4 -- On insert use 4 spaces for tab
vim.opt.shiftwidth     = 0 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab      = true -- Use appropriate number of spaces (no so good for PHP but we can fix this in ft)
vim.opt.wrap           = false -- Wrapping sucks (except on markdown)
vim.opt.swapfile       = false -- Do not leave any backup files
vim.opt.mouse          = "i" -- Enable mouse on insert mode
vim.opt.showmatch      = true -- Highlights the matching parenthesis
vim.opt.termguicolors  = true -- Required for some themes
vim.opt.cursorline     = true -- Highlight the current cursor line (Can slow the UI)
vim.opt.signcolumn     = "yes" -- Always show the signcolumn, otherwise it would shift the text
vim.opt.hidden         = true -- Allow multple buffers
vim.opt.completeopt    = { "menu", "menuone", "noselect", "noinsert" } -- Let the user decide about the autocomplete
vim.opt.showmode       = false -- Remove the -- INSERT -- message at the bottom
vim.opt.updatetime     = 750 -- I have a modern machine. No need to wait that long
vim.opt.encoding       = "utf-8" -- Just in case
vim.opt.cmdheight      = 2 -- Shows better messages
vim.opt.relativenumber = true
vim.g.autosave = true

-- vim.wo.number = true

map("n", "<leader>cc", ":Telescope <CR>")
map("n" , "<C-a>" , ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
map("n" , "<C-b>" , ":lua vim.lsp.buf.definition() <CR>")
map("n","<C-e>",":Telescope buffers <CR>")
map("n","<C-w>",":lua require('core.utils').close_buffer() <CR>")
map("n","<leader>gb",":Telescope git_branches <CR>")
-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
