return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		require("oil").setup({})
		vim.keymap.set("n", "<leader>-", "<Cmd>Oil<CR>", { desc = "Open oil" })
	end,
}
