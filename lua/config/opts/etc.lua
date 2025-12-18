-- ETC --
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("./vim/undodir")
vim.opt.swapfile = false
vim.opt.autoread = true

vim.api.nvim_set_hl(0, 'LspReferenceText', { ctermbg = 237 })
vim.api.nvim_set_hl(0, 'LspReferenceRead', { ctermbg = 237 })
vim.api.nvim_set_hl(0, 'LspReferenceWrite', { ctermbg = 237 })
vim.api.nvim_set_hl(0, "Pmenu", { link = "Normal" })

vim.api.nvim_set_hl(0, 'StatusLine', {
	reverse = false
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		local highlight_groups = {
			"FloatBorder", "Normal", "NormalNC", "NormalFloat", "FloatBorder",
			"Pmenu", "SignColumn", "LineNr", "EndOfBuffer"
		}
		for _, group in ipairs(highlight_groups) do
			vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
		end

		vim.api.nvim_set_hl(0, "PmenuSel", { bg = "NONE", reverse = true })
	end,
})
