-- ETC --
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("./vim/undodir")
vim.opt.swapfile = false
vim.opt.autoread = true

vim.api.nvim_set_hl(0, 'LspReferenceText', { ctermbg = 237 })
vim.api.nvim_set_hl(0, 'LspReferenceRead', { ctermbg = 237 })
vim.api.nvim_set_hl(0, 'LspReferenceWrite', { ctermbg = 237 })

vim.api.nvim_set_hl(0, 'StatusLine', {
	reverse = false
})
