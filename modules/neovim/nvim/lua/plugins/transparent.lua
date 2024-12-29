return {
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
					"NvimTreeNormal", -- NvimTree
					"Pmenu",
					"Float",
				},
				on_clear = function() end,
			})
			-- require("transparent").clear_prefix("lualine")
			vim.g.transparent_enabled = true
		end,
	},
}
