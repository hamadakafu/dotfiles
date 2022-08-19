local wezterm = require 'wezterm';

return {
  color_scheme = "Batman",
  font = wezterm.font("FiraCode Nerd Font"),
  font_size = 14.0,
  use_ime = true,
  disable_default_key_bindings = true,
  window_background_opacity = 0.9,
  enable_csi_u_key_encoding = false,
  keys = {
    { key = "t", mods = "CTRL", action = wezterm.action {
      ActivateKeyTable = {
        name = "tmux_like_operation",
        timeout_milliseconds = 2000,
      }
    } },
    { key = "v", mods = "CMD", action = wezterm.action.Paste },
    { key = "c", mods = "CMD", action = wezterm.action.Copy },
    -- { key = "e", mods = "CTRL", action = wezterm.action.SendKey { key = "End" } },
    -- { key = "a", mods = "CTRL", action = wezterm.action.SendKey { key = "Home" } },
    -- { key = "[", mods = "CTRL", action = wezterm.action.SendKey { key = "Escape" } },
  },
  key_tables = {
    tmux_like_operation = {
      { key = "-", action = wezterm.action {
        SplitVertical = { domain = "CurrentPaneDomain" }
      } },

      { key = "\\", action = wezterm.action {
        SplitHorizontal = { domain = "CurrentPaneDomain" }
      } },

      { key = "h", action = wezterm.action { ActivatePaneDirection = "Left" } },

      { key = "l", action = wezterm.action { ActivatePaneDirection = "Right" } },

      { key = "k", action = wezterm.action { ActivatePaneDirection = "Up" } },

      { key = "j", action = wezterm.action { ActivatePaneDirection = "Down" } },

      { key = "n", mods = "CTRL", action = wezterm.action { SpawnTab = "DefaultDomain" } },

      { key = "l", mods = "CTRL", action = wezterm.action { ActivateTabRelative = 1 }, },
      { key = "h", mods = "CTRL", action = wezterm.action { ActivateTabRelative = -1 },
      },

    },
  },
}
