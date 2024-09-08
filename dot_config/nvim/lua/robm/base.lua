-- Core editor configurations that don't belong in any other module

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- leader
vim.g.mapleader = " "

-- line numbers
vim.opt.number = true

-- copy to the system clipboard
vim.o.clipboard = "unnamedplus"

-- default spacing
vim.cmd("filetype plugin indent on")
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.backspace = "start,indent"

-- don't continue comments
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
