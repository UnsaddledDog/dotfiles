return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"nvim-lua/lsp-status.nvim",
		},

		config = function()
			local colors = {
				bg = "#161617",
				fg = "#c9c7cd",
				bg_dark = "#131314",
				black = "#27272a",
				red = "#f5a191",
				green = "#90b99f",
				yellow = "#e6b99d",
				blue = "#aca1cf",
				magenta = "#e29eca",
				cyan = "#ea83a5",
				white = "#c1c0d4",
				gray = "#c1c0d4",
			}

			local mellow_theme = {
				normal = {
					a = { fg = colors.black, bg = colors.cyan },
					b = { fg = colors.cyan, bg = colors.grey },
					c = { fg = colors.white },
				},

				insert = { a = { fg = colors.black, bg = colors.red } },
				visual = { a = { fg = colors.black, bg = colors.yellow } },
				replace = { a = { fg = colors.black, bg = colors.green } },

				inactive = {
					a = { fg = colors.white, bg = colors.black },
					b = { fg = colors.white, bg = colors.black },
					c = { fg = colors.white },
				},
			}

			require("lualine").setup({
				options = {
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					theme = mellow_theme,
				},
			})
		end,
	},
}
