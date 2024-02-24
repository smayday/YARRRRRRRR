vim.g.mapleader = " "
local nTreeApi = require("nvim-tree.api")
local toggleAndFocus = function ()
    if nTreeApi.tree.is_visible() then
        vim.cmd.NvimTreeToggle()
    else
        vim.cmd.NvimTreeFocus()
    end
end



vim.keymap.set("n", "<leader>pv", toggleAndFocus)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-t>", function() ui.nav.file(1) end)
vim.keymap.set("n", "<C-s>", function() ui.nav.file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav.file(3) end)
vim.keymap.set("i", "<C-H>", "<C-w>", {noremap = true})

vim.keymap.set("v", "J", ":m '>1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-left>", "<C-W><")
vim.keymap.set("n", "<C-right>", "<C-W>>")
vim.keymap.set("n", "<C-Space>", vim.cmd[[:vertical-resize 82]])

