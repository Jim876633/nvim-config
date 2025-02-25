vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window managemet
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprev<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- toggle warp
vim.keymap.set("n", "<leader>z", function()
	if vim.wo.wrap then
		vim.wo.wrap = false
	else
		vim.wo.wrap = true
	end
end, { desc = "Toggle wrap" })

-- bufferline
local function get_is_pinned()
	local bufferGroups = require("bufferline.groups")
	local commands = require("bufferline.commands")
	local state = require("bufferline.state")
	local _, element = commands.get_current_element_index(state)
	if not element or not element.group then
		return false
	end
	return bufferGroups._is_pinned(element)
end
local function close_current_buffer()
	local bufnr = vim.api.nvim_get_current_buf()
	local buffers = vim.fn.getbufinfo({ buflisted = 1 })
	if #buffers > 1 then
		vim.cmd("BufferLineCyclePrev")
		vim.cmd("bd " .. bufnr)
	else
		vim.notify("This is the last buffer!", vim.log.levels.WARN)
	end
end

for i = 1, 9 do
	vim.keymap.set(
		"n",
		"<leader>b" .. i,
		"<Cmd>BufferLineGoToBuffer " .. i .. "<CR>",
		{ desc = "Go to buffer " .. i, noremap = true, silent = true }
	)
end
vim.keymap.set("n", "<leader>p", "<Cmd>BufferLineTogglePin<CR>", { desc = "Pin buffer", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>bn",
	"<Cmd>BufferLineCycleNext<CR>",
	{ desc = "Go Next buffer", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>bp",
	"<Cmd>BufferLineCyclePrev<CR>",
	{ desc = "Go Prev buffer", noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>bq", function()
	if get_is_pinned() then
		vim.cmd("BufferLineTogglePin")
	end
	close_current_buffer()
end, { desc = "Unpin and close", noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", function()
	if get_is_pinned() then
		vim.notify("This buffer is pinned!", vim.log.levels.WARN)
		return
	end
	close_current_buffer()
end, { desc = "Close current buffer", noremap = true, silent = true })
