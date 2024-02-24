local choice_func = {
    [0] = function () vim.cmd[[colorscheme oceanic_material]]
    end,
    [1] = function () vim.cmd[[colorscheme sonokai]]
    end,
    [2] = function ()
        vim.cmd[[ colorscheme orbital ]]
        vim.cmd[[ hi String guibg = bg ]]

        vim.cmd[[ hi VisualNOS guibg = #232323]]
        vim.cmd[[ hi Directory guifg = #ffd7af]]
        vim.cmd[[ hi CursorLine ctermfg = 15]]

    end

}
local current_minute = tonumber(os.date("%M"))
local choice = current_minute % 3;
local func = choice_func[choice]
func()

vim.cmd[[set rnu]]
vim.cmd[[set textwidth=80]]
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.cmd[[highlight clear LineNr]]
vim.cmd[[highlight clear SignColumn]]
vim.cmd[[highlight EndOfBuffer guifg=bg]]
