return {
	{
		"sindrets/diffview.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons", lazy = true },
		},

		keys = {
			{
				"<leader>do",
				function()
					if next(require("diffview.lib").views) == nil then
						vim.cmd("DiffviewOpen")
					else
						vim.cmd("DiffviewClose")
					end
				end,
				desc = "Toggle Diffview window",
			},
			{ "<leader>dv", "<cmd>DiffviewToggleFiles<CR>", desc = "Toggle Diffview Files" },
			{ "<leader>df", "<cmd>DiffviewFileHistory %<CR>", desc = "File History (Current File)" },
		},
	},
}
