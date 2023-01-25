vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>q", ":nohl<CR>")
keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window splitting
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- window navigation
keymap.set("n", "<leader>wh", "<C-w>h") -- left
keymap.set("n", "<leader>wj", "<C-w>j") -- down
keymap.set("n", "<leader>wk", "<C-w>k") -- up
keymap.set("n", "<leader>wl", "<C-w>l") -- right
keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>") -- maximize

-- tabs
keymap.set("n", "<leader>tn", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tl", ":tabn<CR>")
keymap.set("n", "<leader>th", ":tabp<CR>")

-- command -b to toggle nvim-tree
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")

-- command -f to toggle telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fg", ":Telescope git_files<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")