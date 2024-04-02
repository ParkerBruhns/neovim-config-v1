function ColorMyPencils(color)
	-- color = color or "rose-pine-moon"
   -- color = color or "space-vim-dark"
   -- color = color or "onedark"
   -- color = color or "coffee"
   color = color or "darcula-solid"

   vim.cmd.colorscheme(color)

   vim.cmd([[highlight DiagnosticVirtualTextError guibg=none]])
   vim.cmd([[highlight DiagnosticVirtualTextWarn  guibg=none]])
   vim.cmd([[highlight DiagnosticVirtualTextInfo  guibg=none]])
   vim.cmd([[highlight DiagnosticVirtualTextHint  guibg=none]])

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils()
