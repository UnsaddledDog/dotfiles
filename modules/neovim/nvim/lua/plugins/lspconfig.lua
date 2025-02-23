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

			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			lspconfig.clangd.setup({})
			lspconfig.nil_ls.setup({})
			lspconfig.glsl_analyzer.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.cmake.setup({})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			-- local omnisharp_path = vim.fn.systemlist("find /nix/store/ -name 'OmniSharp.dll'")[1]
			local omnisharp_path =
				"/nix/store/j6ivq25cfr2ixrhh7ygngm0rvb75fid5-omnisharp-roslyn-1.39.13/lib/omnisharp-roslyn/OmniSharp.dll"
			require("lspconfig").omnisharp.setup({
				-- cmd = { "dotnet", omnisharp_path },
				cmd = { "mono", "--assembly-loader=strict", omnisharp_path },
				on_attach = on_attach,
				use_mono = true,
			})
		end,
	},
}
