local function prettierConfig()
	return { "prettierd", "prettier", stop_after_first = true }
end

return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = prettierConfig(),
			typescript = prettierConfig(),
			javascriptreact = prettierConfig(),
			typescriptreact = prettierConfig(),
			css = prettierConfig(),
			html = prettierConfig(),
			json = prettierConfig(),
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
	},
}
