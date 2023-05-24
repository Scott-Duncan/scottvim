local M = {
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
	lazy = true,
	commit = "203bf5609137600d73e8ed82703d6b0e320a5f36",
	event = "Bufenter",
	cmd = { "Telescope" },
	dependencies = {
		{
			"ahmedkhalf/project.nvim",
			commit = "685bc8e3890d2feb07ccf919522c97f7d33b94e4",
		},
	},
}

local cmp_status_ok, actions = pcall(require, "telescope.actions")
if not cmp_status_ok then
	return M
end

M.opts = {
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = { ".git/", "node_modules" },
		mappings = {
			i = {
				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
		},
	},
}

return M
