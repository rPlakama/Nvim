-- Enabling Language Servers

vim.lsp.enable({
	"nixd",
	"ruff",
	"gopls",
	"fish_lsp",
	"lua_ls",
	"sqls",
	"ts_ls",
	"hyprls",
	"sqls",
	"tinymist",
	"qmlls",
	"superhtml",
	"jinja-lsp",
	"cssls",
	"rust_analyzer",
	"markdown_oxide",
	"clangd",
	"jdtls",

})

vim.lsp.config("rust_analyzer", {
	settings = {
		["rustfmt"] = {
			formatter = {
				command = "rustfmt"
			},
		},
	},
})

vim.lsp.config("nixd", {
	settings = {
		["alejandra"] = {
			formatter = {
				command = "alejandra"
			},
		},
	},
})

vim.lsp.config("sqls", {
	settings = {
		["sqls"] = {
			formatter = {
				command = "sqlfluff"
			},
		},
	},
})

vim.lsp.config("cssls", {
	settings = {
		["cssls"] = {
			formatter = {
				command = "prettier"
			},
		},
	},
})

vim.lsp.config("tinymist", {
	settings = {
		["tinymist"] = {
			formatter = {
				command = "typstyle"
			},
		},
	},
})

vim.lsp.config("fish_lsp", {
	settings = {
		["fish_lsp"] = {
			formatter = {
				command = "fish_indent"
			},
		},
	},
})
