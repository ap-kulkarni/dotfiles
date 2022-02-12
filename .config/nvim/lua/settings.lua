vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.expandtab = true

vim.cmd([[
    if &shell =~# 'fish$'
        set shell=sh
    endif
]])