require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "x", '"_x')


map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
--
-- 
--  
--
--
--
--
--  

