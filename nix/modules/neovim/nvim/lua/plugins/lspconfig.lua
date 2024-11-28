return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.nil_ls.setup({})
			lspconfig.glsl_analyzer.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.omnisharp.setup({})
		end
	}
}
