return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			bigfile = { enabled = true },
			git = { enabled = true },
			dashboard = { enabled = false },
			explorer = { enabled = false },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = false },
			quickfile = { enabled = false },
			scope = { enabled = true },
			scroll = { enabled = false },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
		keys = {
			{ "<leader>fs", function() Snacks.picker.smart() end,           desc = "Smart Find Files" },
			{ "<leader>fm", function() Snacks.picker.marks() end, desc = "Marks" },
			{ "<leader>fa", function() Snacks.picker.buffers() end,         desc = "Buffers" },
			{ "<leader>fg", function() Snacks.picker.grep() end,            desc = "Grep" },
			{ "<leader>s",  function() Snacks.picker.spelling() end,        desc = "Spell" },
			{ "<leader>:",  function() Snacks.picker.command_history() end, desc = "Command History" },
			{ "<leader>g", function() Snacks.git.blame_line() end, desc = "Git blame" },
		}
	}
}
