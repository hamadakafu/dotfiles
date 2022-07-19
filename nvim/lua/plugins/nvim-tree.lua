-- default mappings
local list = {
  { key = "<CR>", action = "edit" },
  { key = "I", action = "toggle_git_ignored" },
  { key = "H", action = "toggle_dotfiles" },
  { key = "R", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_path" },
  { key = "Y", action = "copy_absolute_path" },
  { key = "..", action = "dir_up" },
  { key = ">>", action = "cd" },
  { key = "q", action = "close" },
  { key = "?", action = "toggle_help" },
}

require("nvim-tree").setup({
  view = {
    mappings ={
      custom_only = true,
      list = list,
    },
  },
	filters = {
		custom = {
			".git/",
			"node_modules/",
      ".cache/",
    },
	},
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
})
