
-- Usual commands
local opts = { noremap = true, silent = true }
vim.g.mapleader= " "

-- Navigation commands
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<S-l>', ':bnext<CR>', opts)

vim.keymap.set('n', '<leader>t', ':ToggleTerm direction=float<CR>', opts)

vim.keymap.set('n', '<leader>ss', ':split<CR>', opts)
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<c-o>", ":Oil<CR>", opts)


vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)


vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)





-- Configuración para LuaSnip en Neovim con Lua

vim.api.nvim_set_keymap('i', '<Tab>', [[luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']], { expr = true, silent = true })

vim.api.nvim_set_keymap('i', '<S-Tab>', [[luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>']], { expr = true, silent = true })

vim.api.nvim_set_keymap('s', '<Tab>', [[<cmd>lua require('luasnip').jump(1)<CR>]], { silent = true })

vim.api.nvim_set_keymap('s', '<S-Tab>', [[<cmd>lua require('luasnip').jump(-1)<CR>]], { silent = true })

