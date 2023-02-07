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
keymap.set({"n", "i"}, "<C-b>", ":NvimTreeToggle<CR>")
keymap.set({"n", "i"}, "<leader>bb", ":NvimTreeFindFile<CR>")
keymap.set("n", "<leader>br", ":NvimTreeRefresh<CR>")
keymap.set("n", "<leader>bf", ":NvimTreeFocus<CR>")

-- command -f to toggle telescope
keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fg", ":Telescope git_files<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

keymap.set("n", "go", function ()
 require("browse").input_search()
end)

keymap.set("n", "<leader>Z", ":ZenMode<CR>")
keymap.set("n", "<C-Q>", ":q<CR>")
--  exit insert mode with ctrl + q
keymap.set("i", "<C-Q>", "<ESC>")

vim.keymap.set({ "n", "x", "o" }, ";", ":TSTextobjectRepeatLastMoveNext<CR>")
vim.keymap.set({ "n", "x", "o" }, ",", ":TSTextobjectRepeatLastMovePrevious<CR>")
vim.keymap.set({ "n", "x", "o" }, "<leader>sb", ":TSTextobjectSelectNext<CR>")

keymap.set("n", "<C-F>", ":lua vim.lsp.buf.format()<CR>")

-- keymap.set("<D-m>", ":lua require('harpoon.mark').add_file()")
-- keymap.set("<D-L", ":lua require('harpoon.ui').toggle_quick_menu()")
-- keymap.set("<D-K>", ":lua require('harpoon.ui').nav_next()")
-- keymap.set("<D-J>", ":lua require('harpoon.ui').nav_prev()")

