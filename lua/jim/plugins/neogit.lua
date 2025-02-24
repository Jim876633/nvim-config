return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed.
		-- "nvim-telescope/telescope.nvim", -- optional
		-- "ibhagwan/fzf-lua",              -- optional
		-- "echasnovski/mini.pick",         -- optional
	},
	config = function()
		local neogit = require("neogit")
		neogit.setup({
			integrations = {
				diffview = true,
			},
		})
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>gn", "<cmd>Neogit<cr>", { desc = "Open neogit" })
	end,
}
