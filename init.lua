require("theprimeagen")
require("nvim-treesitter.install").prefer_git = true

vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
