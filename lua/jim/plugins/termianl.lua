return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<C-\>]],
			shade_terminals = true,
			start_in_insert = true,
			persist_size = true,
			direction = "horizontal",
			close_on_exit = true,
			shell = vim.o.shell,
		})
		local Terminal = require("toggleterm.terminal").Terminal
		local vertical_term = Terminal:new({ direction = "vertical", hidden = true })

		vim.keymap.set({ "n", "t" }, "<leader>tv", function()
			vertical_term:toggle()
		end, { noremap = true, silent = true, desc = "Open veritcal termianl" })

		vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<C-\\>", ":ToggleTerm<CR>", { noremap = true, silent = true })
	end,
}
