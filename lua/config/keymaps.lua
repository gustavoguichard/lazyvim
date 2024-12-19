-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move lines around
vim.api.nvim_set_keymap("n", "<A-Down>", "<cmd>m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Up>", "<cmd>m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-Down>", "<Esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-Up>", "<Esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Disable default Vim config
vim.keymap.set("n", "s", "<nop>", { noremap = true, silent = true })
vim.keymap.set("x", "s", "<nop>", { noremap = true, silent = true })
vim.keymap.set("o", "s", "<nop>", { noremap = true, silent = true })
