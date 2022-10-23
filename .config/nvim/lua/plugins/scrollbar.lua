require("scrollbar").setup({
  handle = {
    color = "#678F8D",
    hide_if_all_visible = false,
  },
  marks = {
    Search = {
        text = { "-", "=" },
        priority = 0,
        color = "orange",
    },
    Error = {
        text = { "-", "=" },
        priority = 1,
        color = "red",
    },
    Warn = {
        text = { "-", "=" },
        priority = 2,
        color = "yellow",
    },
    Info = {
        text = { "-", "=" },
        priority = 3,
        color = "green",
    },
    Hint = {
        text = { "-", "=" },
        priority = 4,
        color = "blue",
    },
    Misc = {
        text = { "-", "=" },
        priority = 5,
        color = "red",
    },
  },
  excluded_buftypes = {
    "terminal",
  },
  excluded_filetypes = {
    "prompt",
    "TelescopePrompt",
  },
})
