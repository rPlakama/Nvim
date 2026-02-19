return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#151311',
				base01 = '#151311',
				base02 = '#8d8883',
				base03 = '#8d8883',
				base04 = '#e4ddd7',
				base05 = '#fffbf8',
				base06 = '#fffbf8',
				base07 = '#fffbf8',
				base08 = '#ffa49f',
				base09 = '#ffa49f',
				base0A = '#efd9c4',
				base0B = '#b4ffa5',
				base0C = '#fff2e6',
				base0D = '#efd9c4',
				base0E = '#ffebd9',
				base0F = '#ffebd9',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#8d8883',
				fg = '#fffbf8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#efd9c4',
				fg = '#151311',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8d8883' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#fff2e6', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffebd9',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#efd9c4',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#efd9c4',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#fff2e6',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#b4ffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#e4ddd7' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#e4ddd7' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#8d8883',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
