require('spectre').setup{
  mapping={
    ['run_replace'] = {
      map = "<leader>r",
      cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
      desc = "replace all"
    },
  },
}
