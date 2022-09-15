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
-- temporary
-- 一時的にlog levelを抑える
local utils = require("nvim-tree.utils")

local function notify_level(level)
    return function(msg)
        vim.schedule(function()
            vim.api.nvim_echo({ { msg, "WarningMsg" } }, false, {})
        end)
    end
end

utils.notify.warn = notify_level(vim.log.levels.WARN)
utils.notify.error = notify_level(vim.log.levels.ERROR)
utils.notify.info = notify_level(vim.log.levels.INFO)
utils.notify.debug = notify_level(vim.log.levels.DEBUG)
