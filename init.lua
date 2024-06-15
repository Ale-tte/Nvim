require('maps')
require('plugins')

local opt = vim.o

vim.g.mapleader = " "
opt.relativenumber = true
opt.number = true
opt.splitright = true
opt.hidden = true

vim.cmd('syntax on')
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

opt.hlsearch = true 		-- highlight matches
opt.incsearch = true            -- incremental searching
opt.ignorecase = true           -- searches are case insensitive...
opt.smartcase = true            -- ... unless they contain at least one capital letter

opt.clipboard = "unnamedplus"



