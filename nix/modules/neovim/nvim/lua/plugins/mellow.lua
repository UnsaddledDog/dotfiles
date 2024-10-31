return {
	{
		'mellow-theme/mellow.nvim',
		priority = 1000,
		init = function()
			vim.cmd.colorscheme 'mellow'
		end,
	}
}
