local spaces = require("hs.spaces")

hs.hotkey.bind({ "cmd" }, "space", function()
  local wezterm = hs.application.get('WezTerm')
  if wezterm == nil then
    hs.application.launchOrFocus("/Applications/WezTerm.app")
  else
    local space_id = spaces.focusedSpace()
    -- hs.alert.show(space_id)

    local wezwin = wezterm:allWindows()
    if wezwin[1] == nil then
      local wf_wezterm = hs.window.filter.new{'WezTerm'}:getWindows()
      spaces.moveWindowToSpace(wf_wezterm[1], space_id)
      wezterm:setFrontmost()
      return
    end


    if wezwin[1] and wezwin[1]:isVisible() and wezterm:isFrontmost() then
      wezterm:hide()
    elseif wezwin[1] and wezwin[1]:isVisible() and (not wezterm:isFrontmost()) then
      wezterm:setFrontmost()
    elseif wezwin[1] and not wezwin[1]:isVisible() then
      spaces.moveWindowToSpace(wezwin[1], space_id)
      wezterm:unhide()
      wezterm:setFrontmost()
    end
  end
end)
