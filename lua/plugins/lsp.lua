return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"folke/lazydev.nvim",
			"saghen/blink.cmp",
			"dundalek/lazy-lsp.nvim",
			{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			local blink_capabilities = require("blink.cmp").get_lsp_capabilities()

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({
					buffer = bufnr,
					preserve_mappings = false,
				})
			end)

			-- Setup lazy-lsp to handle other servers
			require("lazy-lsp").setup({
				use_vim_lsp_config = true,
				default_config = {
					capabilities = blink_capabilities,
				},
			})
		end,
	},
}
