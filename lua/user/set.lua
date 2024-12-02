vop = vim.opt

vop.nu = true
vop.relativenumber = true

vop.tabstop = 3
vop.softtabstop = 3
vop.shiftwidth = 3
vop.expandtab = true

vop.wrap = false

--o.swapfile = false
--o.backup = false
--o.undodir = os.getenv("HOME") .. "/.vim/undodir"
--o.undofile = true

vop.hlsearch = false
vop.incsearch = true

vop.termguicolors = true

vop.scrolloff = 15
vop.signcolumn = "no"
vop.isfname:append("@-@")

vop.updatetime = 50

vop.colorcolumn = "80"

vim.g.mapleader = " "
