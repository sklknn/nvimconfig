return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"gopls",
					"html",
					"htmx",
					"hyprls", --go install github.com/ewen-lbh/hyprls/cmd/hyprls@latest
					"jsonls",
					"ltex",
					"cssls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.html.setup({})
			lspconfig.htmx.setup({})
			lspconfig.hyprls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.ltex.setup({})
			lspconfig.cssls.setup({})
			vim.keymap.set("n", "<leader>f", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
