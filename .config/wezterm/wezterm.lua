local wezterm = require 'wezterm';
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  -- maximize なくてもいいけどスムーズになる
  window:gui_window():maximize()
  window:gui_window():toggle_fullscreen()
  -- end
end)


return {
  color_scheme = "AyuMirage (Gogh)",
  font = wezterm.font("FiraCode Nerd Font"),
  -- font = wezterm.font("Ricty Diminished Discord with Fira Code"),
  -- font = wezterm.font("Ricty Diminished"),
  font_size = 18.0,
  use_ime = true,
  disable_default_key_bindings = true,
  native_macos_fullscreen_mode = false,
  window_background_opacity = 0.9,
  enable_csi_u_key_encoding = false,
  keys = {
    { key = "t", mods = "CTRL", action = wezterm.action {
      ActivateKeyTable = {
        name = "tmux_like_operation",
        timeout_milliseconds = 2000,
      }
    } },
    { key = "/", mods = "CTRL", action = wezterm.action.ActivateCopyMode },

    { key = "v", mods = "CMD", action = wezterm.action.PasteFrom 'Clipboard' },
    { key = "c", mods = "CMD", action = wezterm.action.CopyTo 'Clipboard' },
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
      { key = "h", mods = "CTRL", action = wezterm.action { ActivateTabRelative = -1 }, },
      { key = "f", action = wezterm.action.TogglePaneZoomState },
    },
    copy_mode = {
      { key = "Escape", action = wezterm.action { CopyMode = "Close" } },
      { key = "/", mods = "CTRL", action = wezterm.action { CopyMode = "Close" } },
      { key = '[', mods = 'CTRL', action = wezterm.action { CopyMode = 'Close' } },

      { key = "h", action = wezterm.action { CopyMode = "MoveLeft" } },
      { key = "l", action = wezterm.action { CopyMode = "MoveRight" } },
      { key = "k", action = wezterm.action { CopyMode = "MoveUp" } },
      { key = "j", action = wezterm.action { CopyMode = "MoveDown" } },
      { key = "b", action = wezterm.action { CopyMode = "MoveBackwardWord" } },
      { key = "w", action = wezterm.action { CopyMode = "MoveForwardWord" } },
      { key = "a", mods = "CTRL", action = wezterm.action { CopyMode = "MoveToStartOfLine" } },
      { key = "e", mods = "CTRL", action = wezterm.action { CopyMode = "MoveToEndOfLineContent" } },
      {
        key = 'v',
        mods = 'NONE',
        action = wezterm.action.CopyMode { SetSelectionMode = 'Cell' },
      },
      {
        key = 'v',
        mods = 'SHIFT',
        action = wezterm.action.CopyMode { SetSelectionMode = 'Line' },
      },
      {
        key = 'v',
        mods = 'CTRL',
        action = wezterm.action.CopyMode { SetSelectionMode = 'Block' },
      },
      {
        key = 'y',
        mods = 'NONE',
        action = wezterm.action.Multiple {
          { CopyTo = 'ClipboardAndPrimarySelection' },
          { CopyMode = 'Close' },
        },
      },
      {
        key = 'Enter',
        mods = 'NONE',
        action = wezterm.action.Multiple {
          { CopyTo = 'ClipboardAndPrimarySelection' },
          { CopyMode = 'Close' },
        },
      },
    },
  },
}
