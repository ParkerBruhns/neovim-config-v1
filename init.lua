require("user")
require("nvim-treesitter.install").prefer_git = true

vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- OCaml thingy
-- set rtp^="/home/parker/.opam/default/share/ocp-indent/vim"
