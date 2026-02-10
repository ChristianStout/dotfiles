require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("v", "J", ":m '>+1<CR>gv=gv") -- move on select
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "n", "nzzzv") -- Keep searches in the center of the screen
map("n", "N", "Nzzzv")

map("x", "<leader>p", "\"_dP")

map("n", "d", "\"_d")
map("v", "d", "\"_d")
map("n", "x", "\"_x")
map("v", "x", "\"_x")

map("n", "<leader>d", "\"+d")
map("v", "<leader>d", "\"+d")
map("n", "<leader>x", "\"+x")
map("v", "<leader>x", "\"+x")

map("i", "<C-c>", "<ESC>")

map("n", "Q", "<nop>")

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
