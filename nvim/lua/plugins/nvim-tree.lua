require("nvim-tree").setup({
	filters = {
		custom = {
			".git",
			"node_modules",
      ".cache",
    },
	},
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
})
