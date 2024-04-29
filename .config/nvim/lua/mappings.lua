print "  Author: BT19CS029 VANLALDUATA "
require "nvchad.mappings"
require("telescope").load_extension "harpoon"

-- add yours here

local map = vim.keymap.set
map("n", ";", ":")
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- vim-tmux-navigator
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window above" })

-- auto-sessions
map("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "[S]ession [R]estored for cwd" })
map("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "[S]ession [S]ave for auto session root dir" })

-- quickfix navigation
map("n", ";qn", "<cmd>cnext<CR>", { desc = "jump to [q]uickfix list [n]ext" })
map("n", ";qp", "<cmd>cprev<CR>", { desc = "jump to [q]uickfix list [p]revious" })

-- easy move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- harpoon keybinds
map("n", "<leader>tt", ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
map("n", "<leader>ta", ':lua require("harpoon.mark").add_file()<CR>')
map("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>')
map("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>')
map("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>')
map("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>')
