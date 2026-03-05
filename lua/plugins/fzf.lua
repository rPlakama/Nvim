return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("fzf-lua").setup({
				winopts = {
					preview = {
						default = "bat",
					},
				},
			})
			require("fzf-lua").register_ui_select()
		end,
		keys = {
			{ "<leader>fs", function() require("fzf-lua").files() end,           desc = "Smart Find Files" },
			{ "<leader>fm", function() require("fzf-lua").marks() end,           desc = "Marks" },
			{ "<leader>fa", function() require("fzf-lua").buffers() end,         desc = "Buffers" },
			{ "<leader>fg", function() require("fzf-lua").live_grep() end,       desc = "Grep" },
			{ "<leader>s",  function() require("fzf-lua").spell_suggest() end,   desc = "Spell" },
			{ "<leader>:",  function() require("fzf-lua").command_history() end, desc = "Command History" },
			{ "<leader>g",  function() require("fzf-lua").git_blame() end,       desc = "Git blame" },
		},
	},
}
