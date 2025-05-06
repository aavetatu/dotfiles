return {
	-- Extend the built-in LSP config
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			tsserver = {
				on_attach = function(client, bufnr)
					-- Disable tsserver formatting
					client.server_capabilities.documentFormattingProvider = false
				end,
			},
		},
	},
}
