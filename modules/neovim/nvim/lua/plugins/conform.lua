return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				notify_on_error = false,
				format_on_save = {
					lsp_format = "fallback",
					timeout_ms = 500,
				},
				formatters_by_ft = {
					lua = { "stylua" },
					nix = { "nixfmt" },
					c = { "clang-format" },
					cpp = { "clang-format" },
					csharp = { "csharpier" },
					bash = { "shfmt" },
					cmake = { "cmake_format" },
				},
			})
		end,
	},
}
