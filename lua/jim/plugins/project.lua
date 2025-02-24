return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			detection_methods = { "pattern" },
			patterns = { ".git", "package.json" }, -- detect project root
		})
		require("telescope").load_extension("projects") -- 載入 telescope 擴展
	end,
}
