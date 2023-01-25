local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.guifont = "FiraCode Nerd Font:h14"
opt.guifontwide = "FiraCode Nerd Font:h14"
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitbelow = true
opt.splitright = true

opt.iskeyword:append("-")
