return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			bigfile = { enabled = true },
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
			{ "<leader>fs", function() Snacks.picker.smart() end,                     desc = "Smart Find Files" },
			{ "<leader>fa", function() Snacks.picker.buffers() end,                   desc = "Buffers" },
			{ "<leader>fg", function() Snacks.picker.grep() end,                      desc = "Grep" },
			{ "<leader>:",  function() Snacks.picker.command_history() end,           desc = "Command History" },
		}
	}
}
