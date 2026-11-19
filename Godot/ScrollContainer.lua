---@class ScrollContainer : Container
---@field HorizontalScrollMode integer Horizontal scroll mode (0=disabled, 1=auto, 2=always).
---@field VerticalScrollMode integer Vertical scroll mode (0=disabled, 1=auto, 2=always).
---@field ScrollHorizontal integer Horizontal scroll offset in pixels.
---@field ScrollVertical integer Vertical scroll offset in pixels.
---@field FollowFocus boolean If true, scrolls to keep the focused child visible.
---@field DragToScrollEnabled boolean If true, allows dragging to scroll.
local ScrollContainer = {}

--- Returns the horizontal scrollbar.
---@return HScrollBar
function ScrollContainer:GetHScrollBar() end

--- Returns the vertical scrollbar.
---@return VScrollBar
function ScrollContainer:GetVScrollBar() end
