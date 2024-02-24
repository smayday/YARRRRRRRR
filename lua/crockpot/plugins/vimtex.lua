vim.cmd('syntax enable')
vim.g.vimtex_view_method = 'zathura'

vim.keymap.set("i","<C-o>", "<plug>(vimtex-]])")
vim.keymap.set("i", "<C-S-i>", "<plug>(vimtex-delim-close)")
