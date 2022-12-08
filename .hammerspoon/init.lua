local spaces = require("hs.spaces")

hs.hotkey.bind({ "cmd" }, "space", function()
  local wezterm = hs.application.get('WezTerm')
  if wezterm == nil then
    hs.application.launchOrFocus("/Applications/WezTerm.app")
    return
  end

  local space_id = spaces.focusedSpace()
  -- hs.alert.show(space_id)
  local wezwin = wezterm:allWindows()

  if wezwin[1] and wezwin[1]:isVisible() and wezterm:isFrontmost() then
    -- 現在のspaceにあって見える状態でfrontにいる場合
    wezterm:hide()
  elseif wezwin[1] and wezwin[1]:isVisible() then
    -- 現在のspaceにあって見えるnot frontの場合
    wezterm:setFrontmost()
  elseif wezwin[1] then
    -- 現在のspaceにあって見えない状態
    spaces.moveWindowToSpace(wezwin[1], space_id)
    wezterm:setFrontmost() -- hideも解消
  else
    -- 現在のspaceにない状態
    local wf_wezterm = hs.window.filter.new { 'WezTerm' }:getWindows()
    spaces.moveWindowToSpace(wf_wezterm[1], space_id)
    wezterm:setFrontmost() -- hideも解消
    return
  end
end)
