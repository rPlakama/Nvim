local function get_git_branch()
	local handle = io.popen("git branch --show-current 2> /dev/null")
	if handle then
		local branch = handle:read("*a")
		handle:close()
		if branch and branch ~= "" then
			return string.gsub(branch, "\n", "")
		end
	end
	return ""
end

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained" }, {
	callback = function()
		vim.b.git_branch = get_git_branch()
	end,
})

function MyStatusLine()
	local branch = vim.b.git_branch or ""
	if branch ~= "" then
		branch = "  " .. branch .. " | "
	end

	return table.concat({
		branch,
		" %f",
		"%m",
		"%=",
		"%y ",
		" %p%% ",
	})
end

vim.opt.statusline = "%!v:lua.MyStatusLine()"
