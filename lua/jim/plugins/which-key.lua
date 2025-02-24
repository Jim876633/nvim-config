return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		spec = {
			{ "<leader>e", group = "File Explore" },
			{ "<leader>f", group = "Find telescope" },
			{ "<leader>w", group = "Auto session" },
			{ "<leader>s", group = "Split window" },
			{ "<leader>t", group = "Open tab" },
			{ "<leader>x", group = "Open trouble" },
			{ "<leader>r", group = "Renamn code" },
			{ "<leader>n", group = "No ui..." },
			{ "<leader>m", group = "Format" },
			{ "<leader>c", group = "Code" },
			{ "<leader>h", group = "Code Huck" },
			{ "<leader>g", group = "Git" },
		},
	},
}
