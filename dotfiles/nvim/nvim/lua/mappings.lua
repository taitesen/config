require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n", "sf", "<cmd>Telescope find_files<CR>")
map("n", "sz", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
map("n", "sg", "<cmd>Telescope live_grep<CR>")
map("n", "sb", "<cmd>Telescope buffers<CR>")

map("n", "<S-h>", "<cmd>bp<CR>")
map("n", "<S-l>", "<cmd>bn<CR>")
