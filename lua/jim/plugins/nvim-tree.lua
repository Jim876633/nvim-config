return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set("n", "<leader>ef", function()
			-- Check if nvim-tree is open
			local view = require("nvim-tree.view")
			if view.is_visible() then
				-- If nvim-tree is open, focus on it
				vim.cmd("NvimTreeFocus")
			else
				-- If nvim-tree is not open, toggle on current file
				vim.cmd("NvimTreeFindFileToggle")
			end
		end, { desc = "Focus on NvimTree or toggle on current file" })
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

		-- auto change root dir when open other project
		vim.api.nvim_create_autocmd("DirChanged", {
			callback = function()
				local new_root = vim.fn.getcwd()
				require("nvim-tree.api").tree.change_root(new_root)
				require("nvim-tree.api").tree.reload()
			end,
		})
	end,
}
