vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.component.html",
	callback = function()
		vim.bo.filetype = "htmlangular"
	end,
})
