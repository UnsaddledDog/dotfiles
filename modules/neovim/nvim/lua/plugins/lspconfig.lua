return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
						diagnostics = {
							-- Get the language server to recognize the `vim` global
							globals = { "vim" },
						},
					},
				},
			})
			lspconfig.clangd.setup({})
			lspconfig.nil_ls.setup({})
			lspconfig.glsl_analyzer.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.cmake.setup({})
		end,
	},
}
