local M = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = "all", -- one of "all" or a list of languages
			ignore_install = { "" }, -- List of parsers to ignore installing
			highlight = {
				enable = true, -- false will disable the whole extension
				disable = { "css", "js", "java" }, -- list of language that will be disabled
				additional_vim_regex_highlighting = true,
			},
			autopairs = {
				enable = true,
			},
			indent = { enable = true, disable = { "python", "css" } },
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
		})
	end,
}

return { M }
